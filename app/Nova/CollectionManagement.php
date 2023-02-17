<?php

namespace App\Nova;

use Illuminate\Http\Request;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Http\Requests\NovaRequest;
use Laravel\Nova\Fields\BelongsTo;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Fields\Date;
use Laravel\Nova\Fields\Select;
use App\Nova\Filters\Collection;

class CollectionManagement extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\CollectionManagement::class;

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
        'id', 'status',
    ];

    public static function label()
    {
        return 'التحصيل';
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
            Text::make(__('المستأجر '), 'LeaseContract.client.nameAr')->hideWhenCreating()->hideWhenUpdating(),
            Text::make(__('رقم المستأجر'), 'LeaseContract.client.phone')->hideWhenCreating()->hideWhenUpdating(),
            Date::make(__('يبدأ من '), 'LeaseContract.date_from')->hideWhenCreating()->hideWhenUpdating(),
            Date::make('ينتهي في', 'LeaseContract.date_to')->hideWhenCreating()->hideWhenUpdating(),
            Select::make(__('مدة العقد'), 'LeaseContract.duration')->options([
                'سنة',
                'سنتين ',
                'ثلاث سنوات',
                'اربع سنوات',
                'خمس سنوات',
            ])->displayUsingLabels()->hideWhenCreating()->hideWhenUpdating(),

            Select::make(__('حالة التحصيل'), 'status')->options([
                'محصل',
                'غير محصل ',
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
        return [
            new Collection()
        ];
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
