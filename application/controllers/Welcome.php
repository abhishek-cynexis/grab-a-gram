<?php

use MYClasses\Http\Response;

defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("User_model");
    }

    public function index()
    {
        $this->view('index');
    }

    public function login()
    {
        if (isPost()) {
            $loginRequestComplete = $this->auth->login($this->requestData);
            if (!$loginRequestComplete) $this->response->error(Response::INVALID_CREDENTIALS);

            switch (getCurrentUserRole()):
                case 'Admin':
                    $this->response->success('Welcome ' . variableToStr(getCurrentUserName()), null, 'dashboard');
                    break;
                case 'User':
                    $this->response->success('Welcome ' . variableToStr(getCurrentUserName()), null, 'dashboard');
                    break;
                default:
                    $this->logout();
                    break;
            endswitch;
        }
        $this->view('login');
    }

    public function logout()
    {
        parent::logout();
    }
}
