<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Instrument extends Model
{
    protected $casts = [
        'issue_date' => 'date',
    ];
    public function building()
    {
        return $this->belongsTo(Building::class);
    }

    public function owner()
    {
        return $this->belongsTo(Owner::class);
    }

    public function city()
    {
        return $this->belongsTo(City::class);
    }

    public function neighbor()
    {
        return $this->belongsTo(Neighbor::class);
    }
}
