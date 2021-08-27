<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
// use Owner;
class RentalContract extends Model
{
    protected $casts = [
        'date_from' => 'date',
        'date_to' => 'date',
    ];

    public function instrument()
    {
        return $this->belongsTo(Instrument::class);
    }

    public function owner()
    {
        return $this->belongsTo(Owner::class);
    }
}
