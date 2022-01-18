<?php

namespace App\Http\Controllers;

use App\helpers\Settings;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TestController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //return response( Auth::user()->email);
        //Role::create(['name'=>'user']);
        $system = new Settings();
        $dateFormat = $system->getGlTranNum();
        $user = Auth::user();
        //var_dump($dateFormat);die;

        //$ChartOfAc = User::getChartOfAccounts(Auth::user()->id);
        //return response([compact("ChartOfAc", "user")]);
        return compact("dateFormat");
        //dd($dateFormat);
        //$format = DateUtls::isValidDate('10/25/2021');
        //dd($format);
        //$date = Date('m-d-Y', '25/11/2021');
        //dd(config('erp.date_format'));
        //$cd = date_format($date, 'Y-m-d');
        //dd($date);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
