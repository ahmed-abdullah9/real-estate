<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use App;
use Illuminate\Support\Facades\Storage;
use PDF;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function makePDF($contract)
    {
        $object = new \stdClass();
        // $pdf = \App::make('dompdf.wrapper');

        $object->id = uniqid();
        $object->path = '../storage/tmp/'. $object->id .'.pdf';
        $data = [
			'owner_name' => $contract->owner->name,
			'owner_id' => $contract->owner->nationalId,
			'phone' => $contract->owner->phone,
			'instrument_number' => $contract->instrument->instrument_number,
			'issue_date' => $contract->instrument->issue_date,
			'instrument_number' => $contract->instrument->instrument_number,
		];

        $pdf = PDF::loadView('contract', compact('data'));
        Storage::disk('public')->put($object->id .'.pdf', $pdf->output());
        $pdf->save(public_path($object->path));
        // return $pdf->stream();
        return $object;
    }

}
