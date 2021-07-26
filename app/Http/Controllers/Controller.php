<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use App;
use Dompdf\Dompdf;
use Illuminate\Support\Facades\Storage;
use PDF;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function makePDF($invoices)
    {
        $object = new \stdClass();
        $pdf = \App::make('dompdf.wrapper');

        $object->id = uniqid();
        $data = "hh";
        $pdf->loadView('contract');
        // dd($pdf);
        $object->path = '../storage/tmp/'. $object->id .'.pdf';
        Storage::disk('public')->put($object->id .'.pdf', $pdf->output());

        $pdf->save(public_path($object->path));
        // return $pdf->stream();
        return $object;
    }

}
