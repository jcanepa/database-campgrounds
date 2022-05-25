<?php

namespace Jcanepa\DatabaseCampgrounds;

class QueryBuilder
{
    protected $pdo;

    public function __construct(\PDO $pdo)
    {
        $this->pdo = $pdo;
    }

    public function run($query)
    {
        $query = $this->pdo->prepare($query);

        $query->execute();

        return $query->fetchAll(
            \PDO::FETCH_ASSOC);
    }
}