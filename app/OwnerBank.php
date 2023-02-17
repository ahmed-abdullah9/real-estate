<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OwnerBank extends Model
{
    public function owner()
    {
        return $this->belongsTo(Owner::class);
    }

    public function bank()
    {
        return $this->belongsTo(Bank::class);
    }

}
