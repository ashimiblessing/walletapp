<?php

namespace App\Providers;

use App\Models\User;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Boot the authentication services for the application.
     *
     * @return void
     */
    public function boot()
    {

        $this->app['auth']->viaRequest('api', function ($request) {
            if ($request->header('Authorization')) {
            $key = explode(' ',$request->header('Authorization'));

            if(empty($key[1])){
                return null;
            }


            if(strlen($key[1]) < 10){
                return null;
            }


            if(count($key) < 2){
                return null;
            }



            $user = User::where('api_key', $key[1])->first();
            if(!empty($user)){
            
            

            $hash_secret = env("HASH_SECRET", "C07FB8D05CF829B3E9113B4403EC9279");
            $api_key_generated = hash_hmac('md5', $user->id,$hash_secret);

            if($api_key_generated !=  $key[1])
            {
                return null;
            }

            $request->request->add(['userid' => $user->id]);
            }
            return $user;
            }

            });




    }
}
