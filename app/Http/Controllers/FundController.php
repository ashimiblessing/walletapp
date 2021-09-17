<?php
    namespace App\Http\Controllers;
    use App\Http\Controllers\Controller;
    use Illuminate\Support\Facades\Hash;
    use Illuminate\Http\Request;
    use App\Models\User;
    use App\Models\CurrencyWallet;
    use App\Models\PointsWallet;
    use App\Models\Transaction;


    class FundController extends Controller
    {
      public function __construct()
       {
        $this->middleware('auth:api');
       }



            /**
        * Fund a user's wallet.
        * @bodyParam   amount string  required The amount  Example: 50
        *
        * @return \Illuminate\Http\Response
        */




        public function fund(Request $request, $id)
        {

            $this->validate($request, [

                'amount' => 'required|numeric|min:1'

            ]);


            try{

                //get current user
                $user = User::find($id);

                //attempt wallet generation if it failed for any reason
                self::generate_wallet($user->id);

                //get user's balance
                $currency_wallet = CurrencyWallet::where('user_id', $user->id)->first();

                if(empty($currency_wallet))
                {
                    return ['status'=>'error', 'message'=>'No wallet found'];
                }
                $balance = $currency_wallet->amount;

                $newbalance = $balance*1 + $request->amount*1;

                if($newbalance > 1000000){
                    return ['status'=>'error', 'message'=> 'Maximum account balance reached. Please try a lower amount'];
                }
                //load the amount
                $currency_wallet->amount = $newbalance;
                $currency_wallet->save();


                $transaction = new Transaction;
                $transaction->user_id = $id;
                $transaction->amount = $request->amount;
                $transaction->description = 'currency wallet funding';
                $transaction->save();

                return ['status'=>'success','message'=>'Wallet funded successfully. New balance is '.$currency_wallet->amount];



            }

            catch(\Exception $e){
                return $e->getMessage();
            }

        }



         /**
        * Transfer between users.
        * @bodyParam   amount string  required The amount  Example: 50
        *
        * @return \Illuminate\Http\Response
        */
        public function transfer(Request $request, $id)
        {
            //The $id parameter is of the user you are transferring to
            $this->validate($request, [

                'amount' => 'required|numeric|min:1'

            ]);


            try{
                $user = User::find($request->userid); //the logged in user's id is saved as part of the request

                $beneficiary = User::find($id);
                if(empty($beneficiary))
                {
                    return ['status'=>'error', 'message'=>'Sorry, beneficiary not found'];
                }


                if($id == $user->id)
                {
                    return ['status'=>'error', 'message'=>'Sorry, you cannot transfer to yourself'];
                }
                
                //attempt wallet generation if it fails for any reason

                self::generate_wallet($user->id);
                self::generate_wallet($id);

                $donor_wallet = CurrencyWallet::where('user_id', $user->id)->first();
                $beneficiary_wallet = CurrencyWallet::where('user_id', $id)->first();
                $donor_balance = $donor_wallet->amount;
                $beneficiary_balance = $beneficiary_wallet->amount;

                $new_donor_balance = $donor_balance*1 - $request->amount*1;

                if($new_donor_balance < 1)
                {
                    return ['status'=>'error', 'message'=>'Sorry, insufficient balance'];
                }

                $new_beneficiary_balance = $beneficiary_balance*1 + $request->amount*1;


                $donor_wallet->amount = $new_donor_balance;
                $donor_wallet->save();

                $beneficiary_wallet->amount = $new_beneficiary_balance;
                $beneficiary_wallet->save();

                $donor_transaction = new Transaction;
                $beneficiary_transaction = new Transaction;

                $donor_transaction->user_id = $user->id;
                $donor_transaction->amount = $request->amount;
                $donor_transaction->description = 'currency wallet funding';

                $donor_transaction->save();


                $beneficiary_transaction->user_id = $id;
                $beneficiary_transaction->amount = $request->amount;
                $beneficiary_transaction->description = 'currency wallet funding';
                $beneficiary_transaction->save();

                return ['status'=>'success','message'=>'Your transfer was done successfully. New balance is '.$donor_wallet->amount];


            }

            catch(\Exception $e){
                return $e->getMessage();
            }

        }
















            /**
        * Spend money from a user's wallet.
        * @bodyParam   amount string  required The amount.  Example: 50
        *
        * @return \Illuminate\Http\Response
        */


        public function spend_currency(Request $request, $id)
        {
            //The $id parameter is of the user you are transferring to
            $this->validate($request, [

                'amount' => 'required|numeric|min:1'

            ]);








            try{
                $user = User::find($request->userid);

                //attempt wallet generation if it fails for any reason

                self::generate_wallet($user->id);

                $donor_wallet = CurrencyWallet::where('user_id', $user->id)->first();
                $donor_balance = $donor_wallet->amount;


                $new_donor_balance = $donor_balance*1 - $request->amount*1;

                if($new_donor_balance < 1)
                {
                    return ['status'=>'error', 'message'=>'Sorry, insufficient balance'];
                }



                $donor_wallet->amount = $new_donor_balance;
                $donor_wallet->save();



                $donor_transaction = new Transaction;


                $donor_transaction->user_id = $user->id;
                $donor_transaction->amount = $request->amount;
                $donor_transaction->description = 'currency wallet spending';

                $donor_transaction->save();




                return ['status'=>'success','message'=>'Your spending was successful. New balance is '.$donor_wallet->amount];


            }

            catch(\Exception $e){
                return $e->getMessage();
            }

        }













        /**
        * Get a list of a user's transactions.
        *
        *
        * @return \Illuminate\Http\Response
        */



        public function transactions(Request $request, $id)
        {

            try{


            $transactions = Transaction::where('user_id', $id)->get();
            return $transactions;




            }

            catch(\Exception $e){


                return $e->getMessage();

            }

        }








        public function generate_wallet($id)
        {

     

                //generate user wallets if if wasn't generated for any reason

                $existing_currency_wallet = CurrencyWallet::where('user_id', $id)->first();
                $existing_points_wallet = PointsWallet::where('user_id', $id)->first();

                
                

                if(empty($existing_currency_wallet))
                {

                    $currency_wallet = new CurrencyWallet;
                    $currency_wallet->user_id = $id;
                    $currency_wallet->amount = 0;
                    $currency_wallet->save();

                }

                if(empty($existing_points_wallet))
                {
                    $points_wallet = new PointsWallet;
                    $points_wallet->user_id = $id;
                    $points_wallet->amount = 0;
                    $points_wallet->save();
                }








        }

    }





    ?>
