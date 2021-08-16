<?php

namespace App;

use App\Neighbor;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    protected $with = ['neighbor'];

    public function neighbor()
    {
        return $this->hasMany(Neighbor::class);
    }
}
