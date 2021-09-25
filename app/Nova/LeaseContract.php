<?php

namespace App\Nova;

use Illuminate\Http\Request;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Http\Requests\NovaRequest;
use Laravel\Nova\Fields\Date;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Fields\Select;
use App\Apartment;
use App\Building;
use App\Client;
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
            Select::make(__('مدة العقد'), 'duration')->options([
                'سنة',
                'سنتين ',
                'ثلاث سنوات',
                'اربع سنوات',
                'خمس سنوات',
            ])->displayUsingLabels()->rules('required'),

            // to be on creation!
            Date::make(__('ينتهي في '), 'date_to')->hideWhenCreating()->hideWhenUpdating(),

            NovaBelongsToDepend::make('المستأجر', 'client', 'App\Nova\Client')
            ->placeholder('Optional Placeholder') // Add this just if you want to customize the placeholder
            ->options(\App\Client::all())->showCreateRelationButton(function (NovaRequest $request) {
                return true;
             })->withMeta(['titleKey' => 'nameAr']),


            NovaBelongsToDepend::make('العمارة', 'Building', 'App\Nova\Building')
            ->placeholder('Optional Placeholder') // Add this just if you want to customize the placeholder
            ->options(\App\Building::all())->showCreateRelationButton(function (NovaRequest $request) {
                return true;
             }),

             NovaBelongsToDepend::make('الشقة', 'Apartment', 'App\Nova\Apartment')
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

            // يحسبها النظام في الادخال!
            Text::make(__('العمولة'), 'commission')->rules('required')->hideWhenCreating()->hideWhenUpdating(),
            Text::make(__('التأمين'), 'insurance')->rules('required')->hideWhenCreating()->hideWhenUpdating(),


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
