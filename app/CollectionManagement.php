<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CollectionManagement extends Model
{
    protected $table = 'collection_managements';

    public function leaseContract()
    {
        return $this->belongsTo(LeaseContract::class);
    }
}
