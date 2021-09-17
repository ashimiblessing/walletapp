<?php



use App\Models\User;
use TestCase;

class WalletTest extends TestCase
{
    public function testFundWalletSuccess()
    {
        //grab a sample user
        $user = User::find(28);
        $header = [ 'Authorization' => 'bearer '.$user->api_key];

        $data = [
            "amount" => 1,

        ];

        $response = $this->post('/api/v1/fund/'.$user->id, $data, $header)
            ->seeStatusCode(200);
    }






    public function testFundWalletInvalidAmount()
    {
        //grab a sample user
        $user = User::find(28);
        $header = [ 'Authorization' => 'bearer '.$user->api_key];

        $data = ['amount'=>0];

        $response = $this->post('/api/v1/fund/'.$user->id, $data, $header);
        $response->seeJsonStructure([
            'amount',

        ])
        ->seeStatusCode(422);
    }





    public function testFundWalletAmountOverLimit()
    {
        //grab a sample user
        $user = User::find(28);
        $header = [ 'Authorization' => 'bearer '.$user->api_key];

        $data = [
            "amount" => 100000000000000000000000000,

        ];

        $response = $this->post('/api/v1/fund/'.$user->id, $data, $header);
        $response->seeJsonStructure([
            'status',
            'message'

        ])
        ->seeStatusCode(200);
    }



    public function testTransferSuccess()
    {
        //grab sample users
        $donor = User::find(28);
        $receipient = User::inRandomOrder()->first();

        while($receipient->id == 28)
        {
            $receipient = User::inRandomOrder()->first(); 
            if($receipient->id != 28){
                break;
            }
        }
       

        
        $header = [ 'Authorization' => 'bearer '.$donor->api_key];

        $data = [
            "amount" => 1,

        ];

        $response = $this->post('/api/v1/transfer/'.$receipient->id, $data, $header);
        $response->seeJsonStructure([
            'status',
            'message'

        ])
        ->seeStatusCode(200);
    }




    public function testTransferInvalidAmount()
    {
        //grab a sample user
        $donor = User::find(28);
        $receipient = User::inRandomOrder()->first();
        $header = [ 'Authorization' => 'bearer '.$donor->api_key];

        $data = ['amount'=>0];

        $response = $this->post('/api/v1/transfer/'.$receipient->id, $data, $header);
        $response->seeJsonStructure([
            'amount',
            

        ]);
       $response->seeStatusCode(422);
    }





    public function testUserTransactions()
    {
        //grab a sample user
         
        $user = User::inRandomOrder()->first();
         
        $header = [ 'Authorization' => 'bearer '.$user->api_key];

         

        $response = $this->get('/api/v1/transactions/'.$user->id, $header);
       $response->seeStatusCode(200);
    }




    public function testSpendValidCurrencyAmount()
    {
        //grab a sample user
         
        $user = User::inRandomOrder()->first();
        $header = [ 'Authorization' => 'bearer '.$user->api_key];

        $data = ['amount'=>1];

        $response = $this->post('/api/v1/spend_currency/'.$user->id, $data, $header);
        $response->seeJsonStructure([
            'status',
            'message'
            

        ]);
       $response->seeStatusCode(200);
    }





    public function testSpendInvalidCurrencyAmount()
    {
        //grab a sample user
         
        $user = User::inRandomOrder()->first();
        $header = [ 'Authorization' => 'bearer '.$user->api_key];

        $data = ['amount'=>0];

        $response = $this->post('/api/v1/spend_currency/'.$user->id, $data, $header);
        $response->seeJsonStructure([
            'amount',
             
            

        ]);
       $response->seeStatusCode(422);
    }






}
