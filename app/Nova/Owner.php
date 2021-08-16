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
use Laravel\Nova\Fields\HasMany;
use App\OwnerBank;

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
    public static $title = 'name';


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
        return 'الملاك';
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
            Text::make(__('الاسم'), 'name')->rules('required'),
            Text::make(__('العنوان'), 'address')->hideFromIndex()->rules('required'),
            Text::make(__('الايميل'), 'email')
                ->rules('required', 'email', 'max:255')
                ->creationRules('unique:owners,email')
                ->updateRules('unique:owners,email,{{resourceId}}'),

            Number::make(__('الهوية'), 'nationalId')
            ->rules('regex:/\b[12]\d{9}\b/')
            ->creationRules('unique:owners,nationalId')
            ->updateRules('unique:owners,nationalId,{{resourceId}}'),

            Number::make(__('رقم الجوال'), 'phone')
            ->rules('required')
            ->hideFromIndex(),
            Date::make(__('تاريخ الميلاد'), 'birthDate')
            ->rules('required')->hideFromIndex(),
            Date::make(__('تاريخ الانتهاء'), 'expireDate')
            ->rules('required')->hideFromIndex(),

            Text::make(__('جهة الاصدار'), 'issuer')->rules('required'),
            Text::make(__('مكان الميلاد'), 'placeOfBirth')->rules('required'),

            Select::make(__('الجنس'), 'sex')->options([
                'ذكر',
                'انثى'
            ])->rules('required')->displayUsingLabels(),

            Select::make(__('مفعل'), 'isActive')->options([
                'نعم',
                'لا'
            ])->rules('required')->displayUsingLabels(),

            HasMany::make('OwnerBank'),
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
