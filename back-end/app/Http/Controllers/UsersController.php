<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class UsersController extends Controller
{
  public function index()
  {
      return User::all();
  }

  public function show(User $user)
  {
      return $user;
  }

  public function store(Request $request)
  {
      $user = User::create($request->all());

      return response()->json($user, 201);
  }
}
