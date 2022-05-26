<?php

require 'vendor/autoload.php';

use Jcanepa\DatabaseCampgrounds\Connection;
use Jcanepa\DatabaseCampgrounds\QueryBuilder;

$config = require 'config.php';

$db = new QueryBuilder(
        Connection::make($config['database']));

/** Accept incoming json request data from vue */
$query = json_decode(
    file_get_contents('php://input')
    )->sql_statement;

if (!$query) return [];

echo json_encode(
    $db->run($query));