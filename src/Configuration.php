<?php

namespace Jcanepa\DatabaseCampgrounds;

class Configuration
{
    protected $config;

    public function __construct()
    {
        $this->config = require './config.php';
    }

    public function mysql()
    {
        return $this->config['database'];
    }

    public function sqlite()
    {

    }
}