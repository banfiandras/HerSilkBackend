<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ImageUploadController extends Controller
{
    public function upload(Request $request)
    {
        $request->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:100000',
        ]);

        $image = $request->file('image');
        $path = $image->store('images', 'public');

        return response()->json(['path' => $path], 200);
    }
}
