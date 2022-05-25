<?php

require 'vendor/autoload.php';

use Jcanepa\DatabaseCampgrounds\Connection;
use Jcanepa\DatabaseCampgrounds\QueryBuilder;

$config = require 'config.php';


// var_dump($_POST);
// die();

$db = new QueryBuilder(
        Connection::make($config['database']));

echo json_encode($db->run('select * from national_parks;'));