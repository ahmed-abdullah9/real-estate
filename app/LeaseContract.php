<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LeaseContract extends Model
{
    protected $casts = [
        'date_from' => 'date',
        'date_to' => 'date',
    ];

    protected $with = ['CollectionManagement'];

    public static function boot()
    {
        parent::boot();
        static::creating(function($contract)
        {
            $contract->commission = '2.5';
            $contract->insurance = '2.5';
            $contract->date_to = date("Y-m-d", strtotime("+1 years", strtotime($contract->date_from)));
              //2015-05-22 10:35:10

        });
    }


    public function building()
    {
        return $this->belongsTo(Building::class);
    }

    public function client()
    {
        return $this->belongsTo(Client::class);
    }

    public function apartment()
    {
        return $this->belongsTo(Apartment::class);
    }

    public function collectionManagement()
    {
        return $this->hasMany(CollectionManagement::class);
    }

    public function collectionVoucher()
    {
        return $this->hasMany(CollectionVoucher::class);
    }
}
