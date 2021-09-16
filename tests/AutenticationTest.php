<?php

 

use App\Models\User;
use TestCase; 
 

class AuthenticationTest extends TestCase
{



    public function testRequiredFieldsForRegistration()
    {
 
        $this->post('api/v1/register')
        ->seeStatusCode(422);
           
    }




    public function testDoesNotRegisterAnInvalidUser()
    {
       
        $userData = [
            "first_name" => "John Doe",
            "last_name" => "John Doe",
            "email" => "doe@example.comx",
            "password" => "demo12345",
            "phone" => "wrong phone"
        ];

        $this->post('/api/v1/register', $userData)
            ->seeStatusCode(422);
             
            
    }




 
    public function testResgistersAValidUser()
    {

        $user = User::factory()->create();
        
        $userData = [
            "first_name" => $user->first_name,
            "last_name" => $user->last_name,
            "email" => rand()."user@getnada.com",
            "password" => 'password',
            "phone" => $user->phone,
        ];

        $this->post('/api/v1/register', $userData)
            ->seeJsonStructure([
                "user" => [
                    'id',
                    'first_name',
                    'last_name',
                    'email',
                    'phone',
                  ],
                'status',
                "api_key",
                "message"
            ]);
    }




    public function testLoginAValidUser()
    {
        $user = User::factory()->create();

        $response = $this->post('/api/v1/login', [
            'email' => $user->email,
            'password' => 'password'
        ]);

        $response->seeStatusCode(200)
        
        ->seeJsonStructure([
             
            'status',
            "api_key",
             
        ]);
        

       
    }



}