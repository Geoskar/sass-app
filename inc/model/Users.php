<?php

/**
 * Created by PhpStorm.
 * User: rdk
 * Date: 5/29/14
 * Time: 1:31 PM
 */
class Users {

	private $dbConnection;

	/**
	 * Constructor
	 * @param $database
	 */
	public function __construct($dbConnection) {
		$this->setDbConnection($dbConnection);
	}

	/**
	 * Verifies given credentials are correct. If login successfuly, returns true
	 * else return the error message.
	 *
	 * Dependancies:
	 * require_once ROOT_PATH . "inc/model/bcrypt.php";
	 * $bcrypt = new Bcrypt(12);
	 *
	 * @param $email $email of user
	 * @param $password $password of user
	 *
	 * @return bool|string
	 */
	public function login($email, $password) {

		if (empty($email) === true || empty($password) === true) {
			throw new Exception('Sorry, but we need both your email and password.');
		} else if ($this->email_exists($email) === false) {
			throw new Exception('Sorry that email doesn\'t exists.');
		}
		$query = "SELECT password, email FROM `" . DB_NAME . "`.user WHERE email = :email";
		$query = $this->dbConnection->prepare($query);
		$query->bindParam(':email', $email);

		try {

			$query->execute();
			$data = $query->fetch();
			$hash_password = $data['password'];

			// using the verify method to compare the password with the stored hashed password.
			if (!password_verify($password, $hash_password)) {
				throw new Exception('Sorry, that email/password is invalid:');
			}

		} catch (PDOException $e) {
			// "Sorry could not connect to the database."
			throw new Exception("Sorry could not connect to the database.");
		}
	} // end __construct

	/**
	 * Verifies a user with given email exists.
	 * returns true if found; else false
	 *
	 * @param $email $email given email
	 * @return bool true if found; else false
	 */
	public function email_exists($email) {
		$email = trim($email);
		$query = "SELECT COUNT(id) FROM `" . DB_NAME . "`.user WHERE email = :email";

		$query = $this->dbConnection->prepare($query);
		$query->bindParam(':email', $email, PDO::PARAM_STR);

		try {
			$query->execute();
			$rows = $query->fetchColumn();

			if ($rows == 1) {
				return true;
			} else {
				return false;
			} // end else if

		} catch (PDOException $e) {
			die($e->getMessage());
		} // end catch
	}

	/**
	 * Returns all information of a user given his email.
	 * @param $email $email of user
	 * @return mixed If
	 */
	function getAllData($email) {
		$query = "SELECT user.email, user.id, user.`f_name`, user.`l_name`, user.`img_loc`,
						user.date, user.`profile_description`, user.mobile, user_types.type, major.name
					FROM `" . DB_NAME . "`.user
						LEFT OUTER JOIN user_types ON user.`user_types_id` = `user_types`.id
						LEFT OUTER JOIN major ON user.major_id = major.id
					WHERE email = :email";

		$query = $this->getDbConnection()->prepare($query);
		$query->bindValue(':email', $email, PDO::PARAM_INT);

		try {
			$query->execute();
			return $query->fetch();
		} catch (PDOException $e) {
			die($e->getMessage());
		} // end try
	}

	/**
	 * @return mixed
	 */
	public function getDbConnection() {
		return $this->dbConnection;
	}

	/**
	 * @param mixed $dbConnection
	 */
	public function setDbConnection($dbConnection) {
		$this->dbConnection = $dbConnection;
	}

	function update_profile_data($first_name, $last_name, $mobile_num, $description, $email) {
		$first_name = trim($first_name);
		$last_name = trim($last_name);
		$mobile_num = trim($mobile_num);
		$description = trim($description);
		$email = trim($email);

		$is_profile_data_correct = $this->is_profile_data_correct($first_name, $last_name,
			$mobile_num);

		if ($is_profile_data_correct !== true) {
			throw new Exception(implode("<br>", $is_profile_data_correct)); // the array of errors messages
		}

		$query = "UPDATE `" . DB_NAME . "`.user
					SET `f_name`= :first_name, `l_name`= :last_name, `mobile`= :mobile,
						`profile_description`= :profile_description
						WHERE `email`= :email";

		try {
			$query = $this->dbConnection->prepare($query);

			$query->bindParam(':first_name', $first_name, PDO::PARAM_STR);
			$query->bindParam(':last_name', $last_name, PDO::PARAM_STR);
			$query->bindParam(':mobile', $mobile_num, PDO::PARAM_INT);
			$query->bindParam(':profile_description', $description, PDO::PARAM_STR);
			$query->bindParam(':email', $email, PDO::PARAM_STR);

			$query->execute();

			return true;
		} catch (PDOException $pe) {
			//throw new Exception("Something terrible happened. Could not update database.");
			throw new Exception($pe->getMessage());

		}
	}

	function is_profile_data_correct($first_name, $last_name, $mobile_num) {
		$errors = array();

		if (!ctype_alpha($first_name)) {
			$errors[] = 'First name may contain only letters.';
		}

		if (!ctype_alpha($last_name)) {
			$errors[] = 'Last name may contain only letters.';
		}

		if (!preg_match('/^[0-9]{10}$/', $mobile_num)) {
			$errors[] = 'Mobile number should contain only digits of total length 10';
		}

		if (empty($errors)) {
			return true;
		} else {
			return $errors;
		}
	}



	public function update_avatar_img($avatar_img_loc, $user_id) {
		try {

			$query = "UPDATE `" . DB_NAME . "`.user SET `img_loc`= :avatar_img WHERE `id`= :user_id";
			$query = $this->dbConnection->prepare($query);
			$query->bindParam(':avatar_img', $avatar_img_loc, PDO::PARAM_STR);
			$query->bindParam(':user_id', $user_id, PDO::PARAM_INT);

			$query->execute();
			return true;
		} catch (PDOException $e) {
			die ($e->getMessage());
		} // end try catch
	}

	public function update_password($user_id, $old_password, $new_password_1, $new_password_2) {

		$old_password_hashed = $this->getHashedPassword($user_id);
		if (!password_verify($old_password, $old_password_hashed)) {
			throw new Exception("Sorry, the old password is incorrect.");
		}

		if ($new_password_1 !== $new_password_2) {
			throw new Exception("There was a mismatch with the new passwords");
		}

		try {
			$new_password_hashed = password_hash($new_password_1, PASSWORD_DEFAULT);

			$query = "UPDATE `" . DB_NAME . "`.`user` SET `password`= :password WHERE `id`= :id";
			$query = $this->getDbConnection()->prepare($query);
			$query->bindParam(':id', $user_id);
			$query->bindParam(':password', $new_password_hashed);

			$query->execute();
		} catch (Exception $e) {
			throw new Exception("Could not connect to database.");
		}
	}

	public function getHashedPassword($id) {
		$query = "SELECT password FROM `" . DB_NAME . "`.user WHERE id = :id";
		$query = $this->getDbConnection()->prepare($query);
		$query->bindParam(':id', $id);

		try {

			$query->execute();
			$data = $query->fetch();
			$hash_password = $data['password'];
			return $hash_password;
		} catch (Exception $e) {
			throw new Exception("Could not connect to database.");
		}
	} // end getAllData


} 