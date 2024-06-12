<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Models\Images;
use Illuminate\Support\Facades\Log;

class ImageUploadController extends Controller
{
    public function uploadCarousel(Request $request)
    {
        $request->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:500000',
            'name' => 'required|string|max:255', 
        ]);

        try {
            $image = $request->file('image');
            $imageName = $request->input('name');
            $extension = $image->getClientOriginalExtension();
            $fileNameWithExtension = $imageName . '.' . $extension;
            $path = $image->storeAs('carousel', $fileNameWithExtension, 'public');

            $imageRecord = Images::create([
                'filename' => $fileNameWithExtension,
                'location' => Storage::url($path),
            ]);

            return response()->json(['path' => $imageRecord->location], 200);
        } catch (\Exception $e) {
            Log::error('Error uploading image in uploadCarousel method: ', [
                'message' => $e->getMessage(),
                'trace' => $e->getTraceAsString(),
                'request' => $request->all()
            ]);
            return response()->json(['error' => 'Error uploading image in uploadCarousel method'], 500);
        }
    }

    public function uploadSal(Request $request)
    {
        $request->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:500000',
            'name' => 'required|string|max:255', 
        ]);

        try {
            $image = $request->file('image');
            $imageName = $request->input('name');
            $extension = $image->getClientOriginalExtension();
            $fileNameWithExtension = $imageName . '.' . $extension;
            $path = $image->storeAs('sal', $fileNameWithExtension, 'public');

            $imageRecord = Images::create([
                'filename' => $fileNameWithExtension,
                'location' => Storage::url($path),
            ]);

            return response()->json(['path' => $imageRecord->location], 200);
        } catch (\Exception $e) {
            Log::error('Error uploading image in uploadSal method: ', [
                'message' => $e->getMessage(),
                'trace' => $e->getTraceAsString(),
                'request' => $request->all()
            ]);
            return response()->json(['error' => 'Error uploading image in uploadSal method'], 500);
        }
    }

    public function uploadKendo(Request $request)
    {
        $request->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:500000',
            'name' => 'required|string|max:255', 
        ]);

        try {
            $image = $request->file('image');
            $imageName = $request->input('name');
            $extension = $image->getClientOriginalExtension();
            $fileNameWithExtension = $imageName . '.' . $extension;
            $path = $image->storeAs('kendo', $fileNameWithExtension, 'public');

            $imageRecord = Images::create([
                'filename' => $fileNameWithExtension,
                'location' => Storage::url($path),
            ]);

            return response()->json(['path' => $imageRecord->location], 200);
        } catch (\Exception $e) {
            Log::error('Error uploading image in uploadKendo method: ', [
                'message' => $e->getMessage(),
                'trace' => $e->getTraceAsString(),
                'request' => $request->all()
            ]);
            return response()->json(['error' => 'Error uploading image in uploadKendo method'], 500);
        }
    }
}
