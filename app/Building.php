<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Building extends Model
{
    protected $with = ['apartment'];


    public function buildingType()
    {
        return $this->belongsTo(BuildingType::class);
    }

    public function apartment()
    {
        return $this->hasMany(Apartment::class);
    }

}
