<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Neighbor extends Model
{
    public function owner()
    {
        return $this->belongsTo(Owner::class);
    }

    public function city()
    {
        return $this->belongsTo(City::class);
    }
}
