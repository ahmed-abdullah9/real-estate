<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Building;
use App\Observers\BuildingObserver;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Building::observe(BuildingObserver::class);
    }
}
