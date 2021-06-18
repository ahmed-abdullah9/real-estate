<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OwnerBank extends Model
{

    // protected static function boot()
    // {
    //     parent::boot();
    //     static::creating(function ($user) {
    //         if ( !$user->owner_id ) {
    //             $user->owner_id = '1';
    //         }
    //     });
    // }
    public function owner()
    {
        return $this->belongsTo(Owner::class);
    }

    public function bank()
    {
        return $this->belongsTo(Bank::class);
    }

}
