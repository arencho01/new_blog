<?php

class Model {
    protected $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=mysql;dbname=my_db', 'user', '123456');
    }
}