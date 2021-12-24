<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;


class AuthController extends Controller
{
    /**
     * Display User assentials and tocken
     *
     * @return \Illuminate\Http\Response
     */
    public function login(Request $request)
    {


        $request->validate([
            "email" => ["required", "email"],
            "password" => ["required"]
        ]);
        $user = User::where("email", $request->input('email'))->first();

        if($user){
            if(Hash::check($request->password, $user->password)){
                $token = $user->createToken("create_my_app_token")->plainTextToken;
                return response(compact("user", "token"));
            }
        }
        return response(["message" => "Invalid user or password"], 401);

    }

    /**
     * Remove the specified token from storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function logout(Request $request)
    {
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
