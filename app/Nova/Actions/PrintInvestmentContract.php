<?php

namespace App\Nova\Actions;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Collection;
use Laravel\Nova\Actions\Action;
use Laravel\Nova\Fields\ActionFields;
use Illuminate\Support\Facades\Storage;

class PrintInvestmentContract extends Action
{
    use InteractsWithQueue, Queueable;

    /**
     * Perform the action on the given models.
     *
     * @param  \Laravel\Nova\Fields\ActionFields  $fields
     * @param  \Illuminate\Support\Collection  $models
     * @return mixed
     */
    public function handle(ActionFields $fields, Collection $models)
    {
        $invoiceController = new \App\Http\Controllers\Controller();
        $contract = $models[0]::with('owner','instrument')->get();

        $object = $invoiceController->makeInvetmentPDF($contract[0]);
        $url = Storage::url( $object->id . '.pdf');
        return Action::download($url, $object->id . '.pdf');
    }

    /**
     * Get the fields available on the action.
     *
     * @return array
     */
    public function fields()
    {
        return [];
    }
}