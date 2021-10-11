<?php

namespace App\Nova;

use Illuminate\Http\Request;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Fields\Boolean;
use Laravel\Nova\Fields\Number;
use Laravel\Nova\Fields\Select;
use App\Building;
use App\KitchenType;
use Maatwebsite\LaravelNovaExcel\Actions\DownloadExcel;
use Ebess\AdvancedNovaMediaLibrary\Fields\Images;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

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
    public static $title = 'apartmentNo';


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
            Text::make(__('الدور'), 'floor')->rules('required'),
            Select::make(__('العمارة'), 'building_id')->options(
                Building::all()->pluck('buildingName', 'id')
            )->searchable()->rules('required'),

            Select::make(__('نوع المطبخ'), 'kitchenTypeId')->options(
                KitchenType::all()->pluck('name', 'id')
            )->searchable()->rules('required'),

            Text::make(__('رقم الشقة'), 'apartmentNo')->rules('required'),
            Text::make(__('عدد الغرف'), 'noRoom')->rules('required'),
            Text::make(__('عدد الصالات'), 'noHalls')->rules('required'),
            Text::make(__('عدد دورات المياه'), 'noBathroom')->rules('required'),
            Text::make(__('عدد المطابخ'), 'noKitchen')->rules('required'),

            Number::make(__('السعر'), 'price')->hideFromIndex()->rules('required'),

            Select::make(__('الحجز'), 'rentPeriod')->options([
                'يومي',
                'شهري',
                'سنوي',
            ])->displayUsingLabels()->rules('required'),

            Boolean::make(__('مفعل'), 'is_active')->default(false),
            Boolean::make(__('مميزة'), 'is_special')->default(false),
            Boolean::make(__('تم تحديثها'), 'is_updated')->default(false)->hideWhenCreating()->hideWhenUpdating(),
            Text::make(__('التفاصيل'), 'details')->rules('required'),

            Text::make(__('العمولة'), 'commission')->hideWhenCreating()->hideWhenUpdating(),
            Text::make(__('التأمين'), 'insurance')->hideWhenCreating()->hideWhenUpdating(),

            // Image::make('Profile Photo')->disk('public')->squared(),
            // Files::make('Multiple files', 'multiple_files'),
            Images::make('Images', 'my_multi_collection') // second parameter is the media collection name
            // ->conversionOnPreview('medium-size') // conversion used to display the "original" image
            ->conversionOnDetailView('thumb') // conversion used on the model's view
            ->conversionOnIndexView('thumb') // conversion used to display the image on the model's index page
            ->conversionOnForm('thumb') // conversion used to display the image on the model's form
            ->fullSize() // full size column
            ->rules('required') // validation rules for the collection of images
            // validation rules for the collection of images
            ->singleImageRules('dimensions:min_width=100'),

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
        return [

        ];
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
        return [new DownloadExcel,];
    }
}
