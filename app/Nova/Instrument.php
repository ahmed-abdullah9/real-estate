<?php

namespace App\Nova;

use Illuminate\Http\Request;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Http\Requests\NovaRequest;
use Laravel\Nova\Fields\Date;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Fields\Number;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Fields\BelongsTo;
use App\Owner;
use App\Building;
use App\City;
use App\Neighbor;
use Orlyapps\NovaBelongsToDepend\NovaBelongsToDepend;

class Instrument extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Instrument::class;

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'instrument_number';

    /**
     * The columns that should be searched.
     *
     * @var array
     */
    public static $search = [
        'id',
    ];

    public static function label()
    {
        return 'الصك';
    }

    /**
     * Get the fields displayed by the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function fields(Request $request)
    {
        return [
            ID::make(__('ID'), 'id')->sortable(),
            Text::make(__('رقم الصك'), 'instrument_number')->rules('required'),
            Date::make(__('تاريخ الصك'), 'issue_date')->rules('required'),

            Text::make(__('رقم القطعة'), 'land_number')->rules('required'),
            Text::make(__('رقم المخطط'), 'chart_number')->rules('required'),

            // Select::make(__('العمارة'), 'building_id')->options(
            //     Building::all()->pluck('buildingName', 'id')
            // )->searchable()->rules('required'),
            BelongsTo::make('Building')->showCreateRelationButton(function (NovaRequest $request) {
                return true;
            }),

            // Select::make(__('المدينة'), 'city_id')->options(
            //     City::all()->pluck('name', 'id')
            // )->searchable()->rules('required'),
            
            // Select::make(__('الحي'), 'neighbor_id')->options(
            //     Neighbor::all()->pluck('name', 'id')
            // )->searchable()->rules('required'),

            NovaBelongsToDepend::make('City')
            ->placeholder('Optional Placeholder') // Add this just if you want to customize the placeholder
            ->options(\App\City::all()),
            
            NovaBelongsToDepend::make('Neighbor')
            ->placeholder('Optional Placeholder') // Add this just if you want to customize the placeholder
            ->optionsResolve(function ($city) {
                // Reduce the amount of unnecessary data sent
                return $city->neighbor()->get(['id','name']);
            })
            ->dependsOn('City'),

            Select::make(__('المالك'), 'owner_id')->options(
                Owner::all()->pluck('name', 'id')
            )->searchable()->rules('required'),

        ];
    }

    /**
     * Get the cards available for the request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function cards(Request $request)
    {
        return [];
    }

    /**
     * Get the filters available for the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function filters(Request $request)
    {
        return [];
    }

    /**
     * Get the lenses available for the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function lenses(Request $request)
    {
        return [];
    }

    /**
     * Get the actions available for the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function actions(Request $request)
    {
        return [];
    }
}
