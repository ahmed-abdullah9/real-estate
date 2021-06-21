<?php

namespace App\Nova;

use App\BuildingType;
use Illuminate\Http\Request;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Http\Requests\NovaRequest;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Fields\Date;
use Laravel\Nova\Fields\Number;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Fields\Boolean;
use App\City;
use App\Neighbor;

class Building extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Building::class;

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
        return 'العمائر';
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
            Text::make(__('اسم العمارة'), 'buildingName')->rules('required'),
            Text::make(__('اسم الشارع'), 'street')->rules('required'),

            // $table->string('lat');
            // $table->string('lang');
            // لازم صور للعمارة

            Select::make(__('المدينة'), 'cityId')->options(
                City::all()->pluck('name', 'id')
            )->searchable()->rules('required'),

            Select::make(__('الحي'), 'neighborId')->options(
                Neighbor::all()->pluck('name', 'id')
            )->searchable()->rules('required'),

            Select::make(__('نوع العمارة'), 'buildingTypeId')->options(
                BuildingType::all()->pluck('name', 'id')
            )->searchable()->rules('required'),

            Number::make(__('رقم العمارة'), 'buildingNo')->rules('required'),
            Number::make(__('عدد المداخل'), 'enteranceNo')->hideFromIndex()->rules('required'),
            Number::make(__('عدد الشقق'), 'apartmentNo')->hideFromIndex()->rules('required'),
            Number::make(__('عدد المكاتب'), 'officesNo')->hideFromIndex()->rules('required'),
            Number::make(__('عدد المحلات التجارية'), 'shopsNo')->hideFromIndex()->rules('required'),
            Select::make(__('نوع السكان'), 'populationType')->options([
                'عزاب',
                'عوائل'
            ])->displayUsingLabels()->rules('required'),

            Select::make(__('الحالة'), 'isActive')->options([
                'مفعل',
                'معطل'
            ])->displayUsingLabels()->rules('required'),
            // Boolean::make(__('مفعل'), 'isActive'),

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
