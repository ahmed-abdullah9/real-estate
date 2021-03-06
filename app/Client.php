<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    protected $casts = [
        'birthDate' => 'date',
        'expireDate' => 'date',
    ];

}
