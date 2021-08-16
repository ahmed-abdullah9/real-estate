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
			// 'instrument_number' => $contract->instrument->instrument_number,
            'date_from' => $contract->date_from,
			'date_to' => $contract->date_to,
			'created_at' => $contract->created_at,
            'contract_no' => $contract->contract_no,
            'clause9' => $contract->clause9,
            'clause5' => $contract->clause5,
            'clause6' => $contract->clause6,
            'clause13' => $contract->clause13,
		];

        $pdf = PDF::loadView('contract', compact('data'));
        Storage::disk('public')->put($object->id .'.pdf', $pdf->output());
        $pdf->save(public_path($object->path));
        // return $pdf->stream();
        return $object;
    }

    public function makeInvetmentPDF($contract)
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
			'date_from' => $contract->date_from,
			'date_to' => $contract->date_to,
			'created_at' => $contract->created_at,
		];

        $pdf = PDF::loadView('InvestmentContract', compact('data'));
        Storage::disk('public')->put($object->id .'.pdf', $pdf->output());
        $pdf->save(public_path($object->path));
        // return $pdf->stream();
        return $object;
    }

}
