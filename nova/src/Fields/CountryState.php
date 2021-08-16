<?php

namespace Laravel\Nova\Fields;

use Laravel\Nova\Fields\Field;

class CountryState extends Field
{
    public $component = 'country-state';

    /**
     * Hydrate the given attribute on the model based on the incoming request.
     *
     * @param  \Laravel\Nova\Http\Requests\NovaRequest  $request
     * @param  string  $requestAttribute
     * @param  object  $model
     * @param  string  $attribute
     * @return void
     */
    protected function fillAttributeFromRequest($request, $requestAttribute, $model, $attribute)
    {
        parent::fillAttributeFromRequest($request, $requestAttribute, $model, $attribute);

        if ($request->exists('city_id')) {
            $model->city_id = $request['city_id'];
        }

        if ($request->exists('neighbor_id')) {
            $model->neighbor_id = $request['neighbor_id'];
        }
    }

    /**
     * Resolve the field's value for display.
     *
     * @param  mixed  $resource
     * @param  string|null  $attribute
     * @return void
     */
    public function resolve($resource, $attribute = null)
    {
        // Model has both country_id and state_id foreign keys
        // In the model, we have
        //
        //  public function country(){
        //      return $this->belongsTo('App\Country', 'country_id', 'id');
        //  }
        //
        //  public function state(){
        //      return $this->belongsTo('App\State', 'state_id', 'id');
        //  }
        $this->value = $resource->country['name'] . ', ' .  $resource->state['name'];
    }
}