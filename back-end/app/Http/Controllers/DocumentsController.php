<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Documents;

class DocumentsController extends Controller
{

  public function index()
  {
      return Documents::all();
  }

  public function show(Documents $documents)
  {
      return $documents;
  }

  public function showDocList($id)
  {
      $documents = Documents::where('user_id', $id)->get();

      return response()->json($documents, 200);
  }

  public function store(Request $request)
  {
      $documents = Documents::create($request->all());

      return response()->json($documents, 201);
  }

  public function update(Request $request, Documents $documents)
  {
      $documents->update($request->all());

      return response()->json($documents, 200);
  }

  public function delete(Documents $documents)
  {
      $documents->delete();

      return response()->json(null, 204);
  }

}
