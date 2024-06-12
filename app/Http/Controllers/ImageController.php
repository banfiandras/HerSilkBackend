<?php

namespace App\Http\Controllers;

use App\Models\Images;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ImageController extends Controller
{
    public function index()
    {
        $images = Images::all()->pluck('location');
        return response()->json($images);
    }

    public function getAllImages()
    {
        $images = Images::all()->pluck('location');
        return response()->json($images);
    }

    public function getSalImages()
    {
        $image = Images::where('location', 'like', '%sal%')->inRandomOrder()->first();
        if ($image) {
            return response()->json([
                'location' => $image->location,
                'filename' => $image->filename,
            ]);
        } else {
            return response()->json(['error' => 'Sal image not found'], 404);
        }
    }

    public function getKendoImages()
    {
        $image = Images::where('location', 'like', '%kendo%')->inRandomOrder()->first();
        if ($image) {
            return response()->json([
                'location' => $image->location,
                'filename' => $image->filename,
            ]);
        } else {
            return response()->json(['error' => 'Kendo image not found'], 404);
        }
    }

    public function getCarouselImages()
    {
        $images = Images::where('location', 'like', '%carousel%')->get();
    
        $imageLocations = $images->pluck('location')->toArray();
    
        return response()->json($imageLocations);
    }
    

    public function deleteImage($imageName)
    {
    $image = Images::where('location', 'like', '%' . $imageName . '%')->first();

    if ($image) {
        $filePath = public_path($image->location);

        if (file_exists($filePath)) {
            unlink($filePath);
        }

        $image->delete();

        return response()->json(['message' => 'Image deleted successfully']);
    } else {
        return response()->json(['message' => 'Image not found'], 404);
    }
    }

}
