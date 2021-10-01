<?php

namespace App\Http\Controllers\backend\student;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Designation;

class DesignationController extends Controller
{
    public function DesignationView()
    {
        $data['allData'] = Designation::All();
        return view ('backend.users.student_designation.view_student_designation',$data);
    }

    public function designationAdd ()
    {
        return view ('backend.users.student_designation.add_student_designation');
    }

    public function designationStore (Request $request)
    {
        $request->validate([
            'name' => 'required',
        ]);

        $data = new Designation;

        $data->name = $request->name;
        $data->save();

        $notification = array(
            'message' => 'Student Designation Inserted Successfully!',
            'alert-type' => 'success'
        );

        return redirect()->route('student.designation.view')->with($notification);
    }


    public function designationEdit ($id)
    {
        $data = Designation::find($id);
        return view ('backend.users.student_designation.edit_student_designation',compact('data'));
    }

    public function DesignationUpdate (Request $request,$id)
    {
        $data = Designation::find($id);

        $data->name = $request->name;
        $data->save();

        $notification = array(
            'message' => 'Student Designation Updated Successfully!',
            'alert-type' => 'success'
        );

        return redirect()->route('student.designation.view')->with($notification);
    }

    public function designationDelete ($id)
    {
        $data = Designation::destroy($id);
        return redirect()->route('student.designation.view');
    }


}