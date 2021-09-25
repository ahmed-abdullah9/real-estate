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
// use App\Http\Requests\Request;
class Client extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Client::class;

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'nameAr';

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
        return 'المستأجرين';
    }

    /** \b[12]\d{9}\b
     * Get the fields displayed by the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function fields(Request $request)
    {
        return [
            ID::make(__('ID'), 'id')->sortable(),
            Text::make(__('الاسم'), 'nameAr')->rules('required'),
            Text::make(__('الاسم بالانجليزي'), 'nameEng')->rules('required'),
            Text::make(__('صاحب العمل'), 'employer')->rules('required'),
            Text::make(__('الايميل'), 'email')->rules('required'),
            Number::make(__('الهوية'), 'nationalId')->rules('regex:/\b[12]\d{9}\b/')->creationRules('unique:clients,nationalId')
            ->updateRules('unique:clients,nationalId,{{nationalId}}'),
            Number::make(__('رقم الجوال'), 'phone')->hideFromIndex()->rules('required'),
            Date::make(__('تاريخ الميلاد'), 'birthDate')->hideFromIndex()->rules('required'),
            Date::make(__('تاريخ الانتهاء'), 'expireDate')->hideFromIndex()->rules('required'),

            Text::make(__('جهة الاصدار'), 'issuer')->rules('required'),
            Text::make(__('مكان الميلاد'), 'placeOfBirth')->rules('required'),

            Select::make(__('نوع الهوية'), 'nationalType')->options([
                'هوية وطنية',
                'هوية مقيم',
                'زائر'
            ])->displayUsingLabels()->rules('required'),

            Select::make(__('الجنس'), 'sex')->options([
                'ذكر',
                'انثى'
            ])->displayUsingLabels()->rules('required'),

            Select::make(__('مفعل'), 'isActive')->options([
                'نعم',
                'لا'
            ])->displayUsingLabels()->rules('required'),

            Number::make(__('النسخة'), 'copy')->hideFromIndex()->rules('required'),
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
