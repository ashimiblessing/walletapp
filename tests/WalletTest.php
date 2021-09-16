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









}
