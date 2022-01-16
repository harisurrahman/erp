<?php

namespace App\Http\Controllers\GeneralLadger;

use App\Http\Controllers\Controller;
use App\Models\User;
use Exception;
use Facade\FlareClient\Http\Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class JournelController extends Controller
{
    private $system;

    public function __construct()
    {
        //$this->setting = new Settings();

    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = Auth::user();
        $ChartOfAc = User::getChartOfAccounts(Auth::user()->id);
        return response([compact("ChartOfAc", "user")]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {

        $requests = json_decode($request);

        return response(["message"], compact("request"));

        /* $validate = $request->validate([

    ]); */
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->all();
        $validator = Validator::make($data, [
            "*.gl_account" => "required",
            "*.gl_name" => "required",
            "*.debit" => "required|numeric|min:0",
            "*.credit" => "required|numeric|min:0",
        ],
        );

        $validator->validate();
        $journels = $this->prepareJournel($data);
        DB::transaction(function ($journels) {
            try {
                DB::insert($journels);
                return response(["Message: Success", 201]);
            } catch (Exception $e) {
                response("Message: Erroe", 211);
            }
        }
        );

    }

    private function prepareJournel($data)
    {
        $entries = [];
        foreach ($data as $j) {
            $user = Auth::user();
            $entries = ['gl_account' => $j['gl_account'], 'debit' => $j['dedit'], 'credit' => $j['credit'], 'created_by' => $user];
        }
        return $entries;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
