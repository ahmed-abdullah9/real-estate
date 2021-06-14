<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Building extends Model
{

    public function city()
    {
        return $this->belongsTo(City::class);
    }

    public function neighbor()
    {
        return $this->belongsTo(Neighbor::class);
    }

    public function buildingType()
    {
        return $this->belongsTo(BuildingType::class);
    }

}
