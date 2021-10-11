<?php

namespace App\Observers;

use App\Building;
use App\Apartment;

class BuildingObserver
{
    /**
     * Handle the building "created" event.
     *
     * @param  \App\Building  $building
     * @return void
     */
    public function created(Building $building)
    {
         $x = (int) $building->apartmentNo;
        // dd($x);
        for($i=0; $i<$x; $i++){
            $apartment = new Apartment();
            $apartment->building_id = $building->id;
            $apartment->floor = '1';
            $apartment->apartmentNo = '1';
            $apartment->noRoom = '1';
            $apartment->noHalls = '1';
            $apartment->noBathroom = '1';
            $apartment->noKitchen = '1';
            $apartment->price = 1;
            $apartment->rentPeriod = 1;
            $apartment->details = '';
            $apartment->kitchenTypeId = 1;
            $apartment->kitchenTypeId = 1;
            $apartment->commission = 2.5;
            $apartment->insurance = 1000;
            $apartment->save();
        }

    }

    /**
     * Handle the building "updated" event.
     *
     * @param  \App\Building  $building
     * @return void
     */
    public function updated(Building $building)
    {
        //
    }

    /**
     * Handle the building "deleted" event.
     *
     * @param  \App\Building  $building
     * @return void
     */
    public function deleted(Building $building)
    {
        //
    }

    /**
     * Handle the building "restored" event.
     *
     * @param  \App\Building  $building
     * @return void
     */
    public function restored(Building $building)
    {
        //
    }

    /**
     * Handle the building "force deleted" event.
     *
     * @param  \App\Building  $building
     * @return void
     */
    public function forceDeleted(Building $building)
    {
        //
    }
}
