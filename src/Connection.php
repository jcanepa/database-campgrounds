<?php

namespace Jcanepa\DatabaseCampgrounds;

class Connection
{
    public static function make($config)
    {
        try {
            $sqlite_file = __DIR__. '/db.sqlite';
            $pdo = new PDO('sqlite:'. $sqlite_file);

        } catch ( \PDOException $e ){
            echo 'Whoops! Something went wrong while connecting to a database.';
            return $e->getMessage();
        }
    }
}