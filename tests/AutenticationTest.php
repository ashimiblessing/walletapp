<?php

 

use App\Models\User;
use App\Models\PointsWallet;
use App\Models\CurrencyWallet;
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

        //add API key to the generated user

        $hash_secret = env("HASH_SECRET", "C07FB8D05CF829B3E9113B4403EC9279");
        $api_key_generated = hash_hmac('md5', $user->id,$hash_secret);
        $user->api_key = $api_key_generated;
        $user->save();

 
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
        $user = User::inRandomOrder()->first();

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