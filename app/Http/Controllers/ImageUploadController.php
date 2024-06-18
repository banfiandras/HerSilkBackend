<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Models\Images;
use Illuminate\Support\Facades\Log;

class ImageUploadController extends Controller
{
    public function uploadImages(Request $request, $directory)
    {
        $request->validate([
            'images.*' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:500000',
            'name' => 'required|string|max:255',
        ]);

        try {
            $imageFiles = $request->file('images');
            $imageName = $request->input('name');

            $existingImagesCount = Images::where('filename', 'LIKE', "{$imageName}_%")->count();
            if ($existingImagesCount + count($imageFiles) > 4) {
                return response()->json(['error' => 'Max 4'], 400);
            }   

            $storedImages = [];
            foreach ($imageFiles as $index => $image) {
                $extension = $image->getClientOriginalExtension();
                $fileNameWithExtension = $imageName . '_' . ($existingImagesCount + $index) . '.' . $extension;

                $path = $image->storeAs("{$directory}", $fileNameWithExtension, 'public');

                $imageRecord = Images::create([
                    'filename' => $fileNameWithExtension,
                    'location' => Storage::url($path),
                ]);

                $storedImages[] = $imageRecord->location;
            }

            return response()->json(['paths' => $storedImages], 200);
        } catch (\Exception $e) {
            Log::error('Error: ', [
                'message' => $e->getMessage(),
                'trace' => $e->getTraceAsString(),
                'request' => $request->all()
            ]);
            return response()->json(['error' => 'no'], 500);
        }
    }

    public function uploadCarousel(Request $request)
    {
        return $this->uploadImages($request, 'carousel');
    }

    public function uploadSal(Request $request)
    {
        return $this->uploadImages($request, 'sal');
    }

    public function uploadKendo(Request $request)
    {
        return $this->uploadImages($request, 'kendo');
    }
}
