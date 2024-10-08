<?php

class Route
{
    protected $controller = 'PostController';
    protected $method = 'index';
    protected $params = [];


    public function __construct()
    {
        $this->parseUrl();
        $this->loadController();
        $this->callMethod();
    }

    protected function parseUrl()
    {
        // Получаю url и удаляю пробелы
        if (isset($_GET['url'])) {
            $url = rtrim($_GET['url'], '/');
            $url = filter_var($url, FILTER_SANITIZE_URL);
            $url = explode('/', $url);

            if (isset($url[0]) && file_exists('../app/controllers/' . ucwords($url[0]) . '.php')) {
                $this->controller = $url[0] . 'Controller';
                unset($url[0]);
            }

            if (isset($url[1])) {
                $this->method = $url[1];
                unset($url[1]);
            }

            $this->params = $url ? array_values($url) : [];
        }
    }

    protected function loadController()
    {
        require_once '../app/controllers/' . $this->controller . '.php';
        $this->controller = new $this->controller;
    }

    protected function callMethod()
    {
        if (method_exists($this->controller, $this->method)) {
            call_user_func_array([$this->controller, $this->method], $this->params);
        } else {
            http_response_code(404);
            echo 'Метод не найден';
        }
    }
}

//    static function start()
//    {
//        $controller_name = 'PostController';
//        $action_name = 'index';
//    }
//}