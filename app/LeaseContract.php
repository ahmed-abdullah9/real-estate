<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LeaseContract extends Model
{
    protected $casts = [
        'date_from' => 'date',
        'date_to' => 'date',
    ];

    public function building()
    {
        return $this->belongsTo(Building::class);
    }

    public function agent()
    {
        return $this->belongsTo(Agent::class);
    }

    public function apartment()
    {
        return $this->belongsTo(Apartment::class);
    }
    
}
