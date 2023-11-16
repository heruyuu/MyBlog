<?php

namespace App\Http\Controllers;

class LocalizationController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    /* Cara 1
    public function __invoke($language = 'en')
    {
        request()->session()->put('locale',$language);
        return redirect()->back();
    } */

    // Cara 2
    public function switch ($language = 'en')
    {
        request()->session()->put('locale',$language);
        return redirect()->back();
    }
}
