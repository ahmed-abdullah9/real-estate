<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CollectionVoucher extends Model
{
    protected $table = 'collection_vouchers';
    protected $casts = [
        'received_date' => 'date',
    ];

    public function leaseContract()
    {
        return $this->belongsTo(LeaseContract::class);
    }
}
