<?php

namespace App\Http\Controllers;

use App\Models\Images;
use Illuminate\Http\Request;

class ImageController extends Controller
{
    public function getAllImages()
    {
        $images = Images::all();
        return response()->json($images);
    }

    public function getSalImages()
    {
     $images = Images::where('location', 'like', '%/sal/%')
        ->get();

      return response()->json($images);
    }

    public function getKendoImages()
    {
        $image = Images::where('location', 'like', '%/kendo/%')->inRandomOrder()->first();

        if ($image) {
            return response()->json($image->location);
        } else {
            return response()->json(['message' => 'No images found in the kendo folder'], 404);
        }
    }

    public function getSalImage()
    {
        $image = Images::where('location', 'like', '%/sal/%')->inRandomOrder()->first();
        return response()->json($image->location);
    }

    public function getKendoImage()
    {
        $image = Images::where('location', 'like', '%/kendo/%')->inRandomOrder()->first();
        return response()->json($image->location);
    }

    public function getCarouselImages()
    {
        $images = Images::where('location', 'like', '%carousel%')->get();

        $imageLocations = $images->pluck('location')->toArray();

        return response()->json($imageLocations);
    }

}