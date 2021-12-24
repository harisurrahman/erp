<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\DB;
use Laravel\Sanctum\HasApiTokens;
use phpDocumentor\Reflection\Types\Collection;
use Spatie\Permission\Traits\HasRoles;
use function MongoDB\BSON\toJSON;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable, HasRoles;
    protected $guard_name = 'sanctum';
    protected $table = 'users';

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
        'invalid_login_attempt',
        'blocked',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public static function getChartOfAccounts($id)
    {
        $coa = DB::table('users')
            ->join('chart_of_account_permissions', 'chart_of_account_permissions.user_id', '=', 'users.id')
            ->join('chart_of_accounts', 'chart_of_accounts.gl_account', 'chart_of_account_permissions.gl_account')
            ->where('users.id', $id)
            ->select('chart_of_accounts.gl_account','gl_name', 'gl_group')->get();
        return collect($coa)->map(function($x){ return (array) $x; })->toArray();

    }
}
