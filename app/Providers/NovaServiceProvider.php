<?php

namespace App\Providers;

use Illuminate\Support\Facades\Gate;
use Laravel\Nova\Cards\Help;
use Laravel\Nova\Nova;
use Laravel\Nova\NovaApplicationServiceProvider;
use DigitalCreative\CollapsibleResourceManager\Resources\TopLevelResource;
use DigitalCreative\CollapsibleResourceManager\CollapsibleResourceManager;
use DigitalCreative\CollapsibleResourceManager\Resources\CollapsibleResourceManagerServiceProvider;
use DigitalCreative\CollapsibleResourceManager\Resources\Group;
use DigitalCreative\CollapsibleResourceManager\Resources\NovaResource;
use App\Nova\Metrics\NewUsers;
use App\Nova\Metrics\NewOwners;
use App\Nova\Metrics\NewBuildings;
use App\Nova\Metrics\NewAgents;
// use App\Providers\Observable;
// use Laravel\Nova\Observable;
// use App\Observers\BuildingObserver;

class NovaServiceProvider extends NovaApplicationServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        parent::boot();
        // Observable::make(Building::class, BuildingObserver::class);
    }

    /**
     * Register the Nova routes.
     *
     * @return void
     */
    protected function routes()
    {
        Nova::routes()
                ->withAuthenticationRoutes()
                ->withPasswordResetRoutes()
                ->register();
    }

    /**
     * Register the Nova gate.
     *
     * This gate determines who can access Nova in non-local environments.
     *
     * @return void
     */
    protected function gate()
    {
        Gate::define('viewNova', function ($user) {
            return in_array($user->email, [
                //
            ]);
        });
    }

    /**
     * Get the cards that should be displayed on the default Nova dashboard.
     *
     * @return array
     */
    protected function cards()
    {
        return [
            // new Help,
            new NewUsers,
            new NewOwners,
            new NewBuildings,
            new NewAgents,

        ];
    }

    /**
     * Get the extra dashboards that should be displayed on the Nova dashboard.
     *
     * @return array
     */
    protected function dashboards()
    {
        return [];
    }

    /**
     * Get the tools that should be listed in the Nova sidebar.
     *
     * @return array
     */
    public function tools()
    {
        return [
            // ...
            new CollapsibleResourceManager([
                'navigation' => [
                    TopLevelResource::make([
                        // 'label' => 'Setting',
                        'expanded' => null,
                        // 'linkTo' =>  \App\Nova\Building::class, // accepts an instance of `NovaResource` or a Nova `Resource::class`
                        'resources' => [
                            NovaResource::make(\App\Nova\Building::class),
                            NovaResource::make(\App\Nova\Instrument::class),
                            NovaResource::make(\App\Nova\Apartment::class),
                            Group::make([
                                'label' => 'العقود',
                                'expanded' => false,
                                'resources' => [
                                    \App\Nova\RentalContract::class,
                                    \App\Nova\InvestmentContract::class,
                                    \App\Nova\LeaseContract::class
                                    // \App\Nova\InvestmentContract::class
                                    ]
                                ]),

                            Group::make([
                                'label' => 'الخصوم',
                                'expanded' => false,
                                'resources' => [
                                    \App\Nova\Owner::class,
                                    \App\Nova\Client::class,
                                    \App\Nova\Agent::class,
                                    \App\Nova\User::class
                                    // \App\Nova\InvestmentContract::class
                                    ]
                                ]),
                            Group::make([
                                'label' => 'الاعدادات',
                                'expanded' => false,
                                'resources' => [
                                    \App\Nova\City::class,
                                    \App\Nova\Zone::class,
                                    \App\Nova\Neighbor::class,
                                    \App\Nova\Bank::class,
                                    // \App\Nova\InvestmentContract::class
                                    ]
                                ]),
                            Group::make([
                                'label' => 'اعدادات العمائر',
                                'expanded' => false,
                                'resources' => [
                                    \App\Nova\BuildingType::class,
                                    \App\Nova\KitchenType::class,
                                    \App\Nova\ApartmentStatus::class,
                                    ]
                                ]),
                                ]
                    ]),
                ]
            ])
        ];
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
