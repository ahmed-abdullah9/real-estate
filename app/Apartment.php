<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Apartment extends Model
{
    public function kitchenType()
    {
        return $this->belongsTo(KitchenType::class);
    }

    public function building()
    {
        return $this->belongsTo(Building::class);
    }

}
