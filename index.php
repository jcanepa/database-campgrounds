<?php

use Jcanepa\DatabaseCampgrounds\Connection;
use Jcanepa\DatabaseCampgrounds\QueryBuilder;

require 'vendor/autoload.php';

$config = require 'config.php';

return new QueryBuilder(
    Connection::make(
        $config['database']));