<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bank extends Model
{
    public function owner()
    {
        return $this->belongsToMany(Owner::class);
    }
}
