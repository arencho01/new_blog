<?php

class View {
    private $model;
    private $controller;

    public function __construct() {
        $this->controller = new Controller();
        $this->model = new Model();
    }
}