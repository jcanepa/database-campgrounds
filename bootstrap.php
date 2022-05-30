<?php

require 'vendor/autoload.php';

use Jcanepa\DatabaseCampgrounds\Configuration;
use Jcanepa\DatabaseCampgrounds\Connection;
use Jcanepa\DatabaseCampgrounds\QueryBuilder;

/** Accept incoming json request data from vue */
$query = json_decode(
    file_get_contents('php://input')
    )->sql_statement;

if (!$query) return [];

$config = new Configuration();

$db = new QueryBuilder(
        Connection::make($config->mysql()));

echo json_encode(
    $db->run($query));