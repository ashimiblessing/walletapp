<?php
    namespace App\Http\Controllers;
    use App\Http\Controllers\Controller;
    use Illuminate\Support\Facades\Hash;
    use Illuminate\Http\Request;
    use App\Models\User;
    use App\Models\CurrencyWallet;
    use App\Models\PointsWallet;





    class UserController extends Controller
    {

       /**
        * Registers a new user.
        * @bodyParam   email    string  required    The email of the  user.      Example: testuser@example.com
        * @bodyParam   password    string  required
        * @bodyParam   first_name    string  required
        * @bodyParam   last_name    string  required
        * @bodyParam   phone   numeric  required
        * @unauthenticated
        *
        * @return \Illuminate\Http\Response
        */

        public function register(Request $request)
        {

            //first we validate the data sent

            $this->validate($request, [
                'password' => 'required',
                'email' => 'required|unique:users',
                'first_name' => 'required',
                'last_name' => 'required',
                'phone' => 'required|numeric'

            ]);





            try{

                //generates a user from the provided details after validation

                $user = new User;
                $user->password = Hash::make($request->password);
                $user->email = $request->email;
                $user->first_name = $request->password;
                $user->last_name = $request->password;
                $user->phone = $request->phone;
                $user->api_key = '';
                $user->save();

                //the section below generates the API_KEY, would work for our purposes
                //the HASH_SECRET is saved in the .env file. A default value is provided here

                $hash_secret = env("HASH_SECRET", "C07FB8D05CF829B3E9113B4403EC9279");
                $api_key = hash_hmac('md5', $user->id,$hash_secret);


                //update the user

                $user->api_key = $api_key;
                $user->save();

                //send back data





                //generate user wallets

                $currency_wallet = new CurrencyWallet;
                $points_wallet = new CurrencyWallet;

                $currency_wallet->user_id = $user->id;
                $currency_wallet->amount = 0;
                $currency_wallet->save();


                $points_wallet->user_id = $user->id;
                $points_wallet->amount = 0;
                $points_wallet->save();



                $data = [
                    "user" => [
                        'id'=>$user->id,
                        'first_name' => $user->first_name,
                        'last_name' => $user->last_name,
                        'email' => $user->email,
                        'phone' => $user->phone,

                    ],
                    'status'=>'success',
                    "api_key" => $user->api_key,
                    "message" => 'user account created successfully'
                ];



                return response($data, 201);




            }

            catch(\Exception $e){
                return $e->getMessage();
            }



        }







     /**
        * Logs in a user and generates and returns an API key user.
        * @bodyParam   email    string  required    The email of the  user.      Example: testuser@example.com
        * @bodyParam   password    string  required    The password of the  user.   Example: secret
        * @unauthenticated
        * @return \Illuminate\Http\Response
        */



       public function login(Request $request)
       {
           $this->validate($request, [
           'email' => 'required',
           'password' => 'required'
            ]);

          $user = User::where('email', $request->input('email'))->first();
         if(Hash::check($request->input('password'), $user->password)){
              $api_key = $user->api_key;

              return response()->json(['status' => 'success','api_key' => $api_key]);
          }else{
              return response()->json(['status' => 'fail'],401);
          }
       }
    }





    ?>
