<?php

namespace App\Nova;

use Illuminate\Http\Request;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Http\Requests\NovaRequest;
use Laravel\Nova\Fields\Date;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Fields\Number;
use Laravel\Nova\Fields\BelongsTo;
use Laravel\Nova\Fields\HasOneThrough;
use Laravel\Nova\Fields\Boolean;
use App\Instrument;
use App\Nova\Actions\PrintInvestmentContract;
use App\Owner;
use Orlyapps\NovaBelongsToDepend\NovaBelongsToDepend;

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
                if(InvestmentContract::count() >0){
                    $contract =  InvestmentContract::orderByDesc('created_at')->first();
                    return $contract->contract_no + 1;

                }
                return 1;
            }),

            Text::make(__('اسم العقد'), 'name')->rules('required'),

            Date::make(__('يبدأ من '), 'date_from')->rules('required'),
            Date::make(__('ينتهي في '), 'date_to')->rules('required'),
            // BelongsTo::make('building')->showCreateRelationButton(),
            NovaBelongsToDepend::make('Owner')
            ->placeholder('Optional Placeholder') // Add this just if you want to customize the placeholder
            ->options(\App\Owner::all())->showCreateRelationButton(function (NovaRequest $request) {
                return true;
             }),
             NovaBelongsToDepend::make('Instrument')
             ->placeholder('Optional Placeholder') // Add this just if you want to customize the placeholder
             ->optionsResolve(function ($owner) {
                 // Reduce the amount of unnecessary data sent
                 return $owner->instrument()->get(['id','instrument_number']);
             })->dependsOn('Owner')->showCreateRelationButton(function (NovaRequest $request) {
                 return true;
              }),
             //  HasOneThrough::make('userOrganization'),

            Text::make(__('مدة العقد'), 'duration')->rules('required'),
            Text::make(__('(بالاسم) مدة العقد'), 'duration_name')->rules('required'),

            Text::make(__('تكلفةالإيجار'), 'investment_cost')->rules('required'),
            Text::make(__('أقساط الإيجار'), 'installment')->rules('required'),
            Boolean::make(__('يجدد تلقائي'), 'is_auto_renew')->default(true),
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
