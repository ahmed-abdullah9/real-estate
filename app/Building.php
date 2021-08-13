<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Building extends Model
{

    public function buildingType()
    {
        return $this->belongsTo(BuildingType::class);
    }

}
