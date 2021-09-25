<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    protected $table = 'clients';

    protected $casts = [
        'birthDate' => 'date',
        'expireDate' => 'date',
    ];

    public function leaseContract()
    {
        return $this->hasMany(LeaseContract::class);
    }
}
