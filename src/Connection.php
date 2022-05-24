<?php

namespace Jcanepa\DatabaseCampgrounds;

class Connection
{

    public static function make($config)
    {
        try {
            //return new PDO('mysql:host=127.0.0.1;dbname=mytap_wordpress','homestead','secret');
            return new \PDO(
                $config['connection'].';dbname='.$config['name'],
                $config['username'],
                $config['password'],
                $config['options']
            );

        } catch ( \PDOException $e ){
            echo 'Whoops! Something went wrong during your database query execution.';
            die( $e->getMessage() );
        }
    }
}