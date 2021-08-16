<?php

namespace App\Nova;

use Illuminate\Http\Request;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Http\Requests\NovaRequest;
use Laravel\Nova\Fields\Date;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Fields\Number;
use Laravel\Nova\Fields\BelongsTo;
use Orlyapps\NovaBelongsToDepend\NovaBelongsToDepend;
use Laravel\Nova\Fields\HasMany;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Fields\CustomSelect;
use Laravel\Nova\Fields\HasOne;
use App\Nova\Actions\PrintPDF;

use App\Instrument;
use App\Owner;
use App\InvestmentContract;

class RentalContract extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\RentalContract::class;
    public static $with = ['owner','instrument' ];


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
        return 'عقود ادارة املاك';
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
            Text::make(__('رقم العقد'), 'contract_no')->default(function ($request) {
                // $contract =  RentalContract::orderByDesc('created_at')->first();
                // if(!$contract)
                // return $contract->contract_no + 1;
                // else
                return 1;
            }),

            Text::make(__('اسم العقد'), 'name')->rules('required'),

            Date::make(__('يبدأ من '), 'date_from')->rules('required'),
            Date::make(__('ينتهي في '), 'date_to')->rules('required'),

            // Select::make(__('instrument'), 'instrument_id')->options(
            //     Instrument::all()->pluck('instrument_number', 'id')
            // )->searchable()->rules('required'),

            BelongsTo::make('Instrument')->showCreateRelationButton(function (NovaRequest $request) {
               return true;
            }),
            // BelongsTo::make('Instrument')->inline(),

            // Select::make(__('owner'), 'owner_id')->options(
            //     Owner::all()->pluck('name', 'id')
            // )->searchable()->rules('required'),
            BelongsTo::make('owner')->showCreateRelationButton(function (NovaRequest $request) {
                return true;
             }),
            // BelongsTo::make('Owner')->inline(),
            // BelongsTo::make('رقم القضية', 'owners', Owner::class),


            Number::make(__('البند الخامس'), 'clause5')->rules('required'),
            Number::make(__('البند السادس'), 'clause6')->rules('required'),
            Number::make(__('البند التاسع'), 'clause9')->rules('required'),
            Number::make(__('البند الثالث عشر'), 'clause13')->rules('required'),

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
        return [
            new PrintPDF
        ];
    }
}
