<?php

namespace App\Nova;

use Illuminate\Http\Request;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Http\Requests\NovaRequest;
use Laravel\Nova\Fields\Date;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Fields\Number;
use Laravel\Nova\Fields\BelongsTo;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Fields\HasOne;
use App\Instrument;
use App\Nova\Actions\PrintInvestmentContract;
use App\Owner;

class InvestmentContract extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\InvestmentContract::class;

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
        return 'عقود استثمار';
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
                return InvestmentContract::orderByDesc('created_at')->first()->contract_no + 1;
            }),

            Text::make(__('اسم العقد'), 'name')->rules('required'),

            Date::make(__('يبدأ من '), 'date_from')->rules('required'),
            Date::make(__('ينتهي في '), 'date_to')->rules('required'),

            BelongsTo::make('instrument')->showCreateRelationButton(function (NovaRequest $request) {
                return true;
             }),

            BelongsTo::make('owner')->showCreateRelationButton(function (NovaRequest $request) {
                return true;
             }),

            // BelongsTo::make('Instrument')->inline(),
            // BelongsTo::make('رقم القضية', 'owners', Owner::class),
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
            new PrintInvestmentContract
        ];
    }
}
