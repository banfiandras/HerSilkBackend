<?php

namespace App\Http\Controllers;

use App\Models\Images;
use Illuminate\Http\Request;

class ImageController extends Controller
{
    public function index()
    {
        $images = Images::all()->pluck('location');
        return response()->json($images);
    }

    public function getSalImages()
    {
        $image = Images::where('location', 'like', '%sal%')->inRandomOrder()->first();
        return response()->json([$image->location]);
    }

    public function getKendoImages()
    {
        $image = Images::where('location', 'like', '%kendo%')->inRandomOrder()->first();
        return response()->json([$image->location]);
    }
}
