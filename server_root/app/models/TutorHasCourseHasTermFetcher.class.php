<?php

/**
 * Created by PhpStorm.
 * User: rdok
 * Date: 9/14/2014
 * Time: 5:02 AM
 */
class Tutor_has_course_has_termFetcher
{
	const DB_TABLE = "tutor_has_course_has_term";
	const DB_COLUMN_TUTOR_USER_ID = "tutor_user_id";
	const DB_COLUMN_COURSE_ID = "course_id";
	const DB_COLUMN_TERM_ID = "term_id";

	public static function insertMany($db, $id, $coursesId, $termId) {
		try {
			foreach ($coursesId as $courseId) {
				$query = "INSERT INTO `" . DB_NAME . "`.`" . self::DB_TABLE .
					"` (`" . self::DB_COLUMN_TUTOR_USER_ID . "`, `" . self::DB_COLUMN_COURSE_ID .
					"`, `" . self::DB_COLUMN_TERM_ID . "`) VALUES(:id, :courseId, :term_id)";
				$query = $db->getConnection()->prepare($query);
				$query->bindParam(':id', $id, PDO::PARAM_INT);
				$query->bindParam(':courseId', $courseId, PDO::PARAM_INT);
				$query->bindParam(':term_id', $termId, PDO::PARAM_INT);
				$query->execute();
			}

			return true;
		} catch (Exception $e) {
			throw new Exception("Could not insert teaching courses data into database.");}

	}

	public static function retrieveCurrTermAllTeachingCourses($db) {
		$query = "SELECT `" . UserFetcher::DB_TABLE . "`.`" . UserFetcher::DB_COLUMN_FIRST_NAME . "`,
						 `" . UserFetcher::DB_TABLE . "`.`" . UserFetcher::DB_COLUMN_LAST_NAME . "`,
						 `" . CourseFetcher::DB_TABLE . "`.`" .	CourseFetcher::DB_COLUMN_CODE . "`,
						 `" . CourseFetcher::DB_TABLE . "`.`" .	CourseFetcher::DB_COLUMN_NAME . "`,	
						 `" . TermFetcher::DB_TABLE . "`.`" . TermFetcher::DB_COLUMN_NAME . "` AS
						" . TermFetcher::DB_TABLE . "_" . TermFetcher::DB_COLUMN_NAME . "
			FROM `" . DB_NAME . "`.`" . self::DB_TABLE . "`
			INNER JOIN `" . DB_NAME . "`.`" . UserFetcher::DB_TABLE . "`
				ON `" . Tutor_has_course_has_termFetcher::DB_TABLE . "`.`" . Tutor_has_course_has_termFetcher::DB_COLUMN_TUTOR_USER_ID . "` = `" .
			UserFetcher::DB_TABLE . "`.`" . UserFetcher::DB_COLUMN_ID . "`
			INNER JOIN `" . TermFetcher::DB_TABLE . "`
				ON `" . Tutor_has_course_has_termFetcher::DB_TABLE . "`.`" . Tutor_has_course_has_termFetcher::DB_COLUMN_TERM_ID . "` = `" .
			TermFetcher::DB_TABLE . "`.`" . TermFetcher::DB_COLUMN_ID . "`
			INNER JOIN `" . CourseFetcher::DB_TABLE . "`
				ON `" . Tutor_has_course_has_termFetcher::DB_TABLE . "`.`" . Tutor_has_course_has_termFetcher::DB_COLUMN_COURSE_ID . "` = `" .
			CourseFetcher::DB_TABLE . "`.`" . CourseFetcher::DB_COLUMN_ID . "`
			WHERE (NOW() BETWEEN `" . TermFetcher::DB_TABLE . "`.`" . TermFetcher::DB_COLUMN_START_DATE . "` AND `" . TermFetcher::DB_TABLE . "`.`" . TermFetcher::DB_COLUMN_END_DATE . "`)";

		try {
			$query = $db->getConnection()->prepare($query);
			$query->execute();

			return $query->fetchAll(PDO::FETCH_ASSOC);

		} catch (PDOException $e) {
			throw new Exception("Could not retrieve teaching courses from current terms from database.");
		}
	}

}