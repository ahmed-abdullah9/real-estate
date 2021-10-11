<?php

namespace App\Nova;

use App\Client;
use Illuminate\Http\Request;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Http\Requests\NovaRequest;
use Laravel\Nova\Fields\Date;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Fields\Number;
use Orlyapps\NovaBelongsToDepend\NovaBelongsToDepend;
use Laravel\Nova\Fields\Boolean;
use Laravel\Nova\Fields\Select;
use App\Nova\Actions\PrintPDF;
use App\RentalContract as AppRentalContract;

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
                if(AppRentalContract::count()>0){
                    $contract =  AppRentalContract::orderByDesc('created_at')->first();
                    return $contract->contract_no + 1;
                }
                return 1;
            }),

            Text::make(__('اسم العقد'), 'name')->rules('required'),

            Date::make(__('يبدأ من '), 'date_from')->rules('required'),
            Date::make(__('ينتهي في '), 'date_to')->rules('required'),

            NovaBelongsToDepend::make('المالك', 'Owner', 'App\Nova\Owner')
            ->placeholder('Optional Placeholder') // Add this just if you want to customize the placeholder
            ->options(\App\Owner::all())->showCreateRelationButton(function (NovaRequest $request) {
                return true;
             }),

            NovaBelongsToDepend::make('الصك', 'Instrument', 'App\Nova\Instrument')
            ->placeholder('Optional Placeholder') // Add this just if you want to customize the placeholder
            ->optionsResolve(function ($owner) {
                // Reduce the amount of unnecessary data sent
                return $owner->instrument()->get(['id','instrument_number']);
            })->dependsOn('Owner')->showCreateRelationButton(function (NovaRequest $request) {
                return true;
             }),
            // BelongsTo::make('Instrument')->inline(),
            // البند الخامس
            Number::make(__('نسبة التأجير'), 'clause5')->rules('required'),
            // البند السادس
            Number::make(__(' المبلغ المتحصل من المستأجر'), 'clause6')->rules('required'),
            // البند التاسع
            Number::make(__('نسبة عقوبة التأجير للغير'), 'clause9')->rules('required'),
            //البند الثالث عشر
            Number::make(__('عمولة ايجار'), 'clause13')->rules('required'),
            Boolean::make(__('يجدد تلقائي'), 'is_auto_renew')->default(true),

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
