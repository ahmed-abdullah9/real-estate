<?php

namespace App\Nova;

use Illuminate\Http\Request;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Http\Requests\NovaRequest;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Fields\Date;
use Laravel\Nova\Fields\Number;
use Laravel\Nova\Fields\Select;
use App\Building;
// use App\Neighbor;

class Apartment extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Apartment::class;

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
        return 'الشقق';
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
            Text::make(__('الدور'), 'floor'),
            Select::make(__('المبنى'), 'buildingId')->options(
                Building::all()->pluck('name', 'id')
            )->searchable(),

            Text::make(__('رقم الشقة'), 'apartmentNo'),
            Text::make(__('عدد الغرف'), 'noRoom'),
            Text::make(__('عدد الصالات'), 'noHalls'),
            Text::make(__('عدد دورات المياه'), 'noBathroom'),
            Text::make(__('عدد المطابخ'), 'noKitchen'),

            Number::make(__('السعر'), 'price')->hideFromIndex(),

            Select::make(__('الحجز'), 'rentPeriod')->options([
                'يومي',
                'شهري',
                'سنوي',
            ])->displayUsingLabels(),
            Text::make(__('التفاصيل'), 'details'),

            // $table->tinyInteger('kitchenType');

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
