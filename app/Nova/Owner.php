<?php

namespace App\Nova;

use Illuminate\Http\Request;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Http\Requests\NovaRequest;
use Laravel\Nova\Fields\Date;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Fields\Number;
use Laravel\Nova\Fields\Select;
use Nova\Multiselect\Multiselect;
use App\City;
use App\Neighbor;

class Owner extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Owner::class;

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
            Text::make(__('الاسم'), 'name'),
            Text::make(__('العنوان'), 'address')->hideFromIndex(),
            Text::make(__('الايميل'), 'email'),
            Number::make(__('الهوية'), 'nationalId'),
            Number::make(__('رقم الجوال'), 'phone')->hideFromIndex(),
            Date::make(__('تاريخ الميلاد'), 'birthDate')->hideFromIndex(),
            Date::make(__('تاريخ الانتهاء'), 'expireDate')->hideFromIndex(),
            // Multiselect::make(__('المدينة'), 'city')->options(
            //     City::all()->pluck('name', 'id')
            // )->hideFromIndex(),
            // Multiselect::make(__('الحي'), 'neighbor')->options(
            //     Neighbor::all()->pluck('name', 'id')
            // )->hideFromIndex(),

            Text::make(__('جهة الاصدار'), 'issuer'),
            Text::make(__('مكان الميلاد'), 'placeOfBirth'),

            Select::make(__('الجنس'), 'sex')->options([
                'ذكر',
                'انثى'
            ])->displayUsingLabels(),

            Select::make(__('مفعل'), 'isActive')->options([
                'نعم',
                'لا'
            ])->displayUsingLabels(),

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
