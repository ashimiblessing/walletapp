<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return 'Welcome to the WalletPlus';
});


$router->group(['prefix' => '/api/v1'], function () use ($router) {

$router->post('/register', 'UserController@register');

$router->post('/login', 'UserController@login');

});





$router->group(['prefix' => '/api/v1', 'middleware' => 'auth'], function () use ($router) {

    //funding routes
    $router->post('/fund/{id}', 'FundController@fund');
    $router->post('/transfer/{id}','FundController@transfer');
    $router->get('/transactions/{id}', 'FundController@transactions');
    $router->get('/balance/{id}', 'FundController@fund');
    $router->post('/spend_currency/{id}', 'FundController@spend_currency');
});
