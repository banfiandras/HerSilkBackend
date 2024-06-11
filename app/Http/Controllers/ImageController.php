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

    public function getAllImages()
    {
        $images = Images::all()->pluck('location');
        return response()->json($images);
    }

    public function getSalImages()
    {
        $image = Images::where('location', 'like', '%sal%')->inRandomOrder()->first();
        return response()->json($image->location);
    }

    public function getKendoImages()
    {
        $image = Images::where('location', 'like', '%kendo%')->inRandomOrder()->first();
        return response()->json($image->location);
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
