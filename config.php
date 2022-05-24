<?php

return [
    'database' => [
        'connection'=> 'mysql:host=127.0.0.1',
        'name' => '',
        'username' => '',
        'password' => '',
        'options' => [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING
        ]
    ]
];