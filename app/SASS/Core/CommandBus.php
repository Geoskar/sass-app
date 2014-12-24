<?php
/**
 * @author Rizart Dokollari <r.dokollari@gmail.com>
 * @version  12/24/2014
 */

namespace SASS\Core;

use App;

trait CommandBus {

	/**
	 * Execute the command
	 *
	 * @param $command
	 * @return mixed
	 */
	public function execute($command)
	{
		return $this->getCommandBus()->execute($command);
	}

	/**
	 * Fetch the command bus
	 *
	 * @return mixed
	 */
	public function getCommandBus()
	{
		return App::make('Laracasts\Commander\CommandBus');
	}
}