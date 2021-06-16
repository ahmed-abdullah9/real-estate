<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Owner extends Model
{
    //Casts of the model dates
    protected $casts = [
        'birthDate' => 'date',
        'expireDate' => 'date',
    ];

    public function OwnerBank()
    {
        return $this->hasMany(OwnerBank::class);
    }
}
