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
use App\Apartment;
use App\Building;
use Orlyapps\NovaBelongsToDepend\NovaBelongsToDepend;

class LeaseContract extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\LeaseContract::class;
    public static $with = ['building','apartment' ];

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'id';

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
        return 'عقود الإيجار';
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
            Date::make(__('يبدأ من '), 'date_from')->rules('required'),
            Date::make(__('ينتهي في '), 'date_to')->rules('required'),
            NovaBelongsToDepend::make('Building')
            ->placeholder('Optional Placeholder') // Add this just if you want to customize the placeholder
            ->options(\App\Building::all())->showCreateRelationButton(function (NovaRequest $request) {
                return true;
             }),

             NovaBelongsToDepend::make('Apartment')
             ->placeholder('Optional Placeholder') // Add this just if you want to customize the placeholder
             ->optionsResolve(function ($building) {
                 // Reduce the amount of unnecessary data sent
                 return $building->apartment()->get(['id','apartmentNo']);
             })->dependsOn('Building')->showCreateRelationButton(function (NovaRequest $request) {
                 return true;
              }),

              Select::make(__('طريقة السداد'), 'payment_method')->options([
                'سنوي',
                'نصف سنوي ',
                'ربع سنوي',
                'شهري',
                'يومي للوحدات المفروشة',
            ])->displayUsingLabels()->rules('required'),

            Text::make(__('العمولة'), 'commission')->rules('required'),
            Text::make(__('التأمين'), 'insurance')->rules('required'),

            
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
