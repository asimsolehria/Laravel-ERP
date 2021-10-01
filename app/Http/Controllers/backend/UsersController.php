<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

class UsersController extends Controller
{
    public function userView ()
    {
        $data['allData'] = User::All();
        return view ('backend.users.view_user',$data);
    }

    public function userAdd ()
    {
        return view ('backend.users.add_user');
    }

    public function userStore (Request $request)
    {
        $request->validate([
            'email' => 'required|unique:users',
            'password' => 'required',
        ]);

        $data = new User;

        $data->name = $request->name;
        $data->role = $request->role;
        $data->email = $request->email;
        $data->password = bcrypt($request->password);
        $data->save();

        $notification = array(
            'message' => 'User Inserted Successfully!',
            'alert-type' => 'success'
        );

        return redirect()->route('user.view')->with($notification);
    }

    public function userEdit ($id)
    {
        $data = User::find($id);
        return view ('backend.users.edit_user',compact('data'));
    }

    public function userUpdate (Request $request,$id)
    {
        $data = User::find($id);

        $data->name = $request->name;
        $data->role = $request->role;
        $data->email = $request->email;
        $data->password = bcrypt($request->password);
        $data->save();

        $notification = array(
            'message' => 'User Updated Successfully!',
            'alert-type' => 'success'
        );

        return redirect()->route('user.view')->with($notification);
    }

    public function userDelete ($id)
    {
        $data = User::destroy($id);
        return redirect()->route('user.view');
    }
}
