<?php

namespace App\Http\Controllers\backend\student;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\StudentYear;

class StudentYearController extends Controller
{
    public function studentYearView()
    {
        $data['allData'] = StudentYear::All();
        return view ('backend.users.student_year.view_student_year',$data);
    }

    public function studentYearAdd ()
    {
        return view ('backend.users.student_year.add_student_year');
    }

    public function studentYearStore (Request $request)
    {
        $request->validate([
            'name' => 'required',
        ]);

        $data = new StudentYear;

        $data->name = $request->name;
        $data->save();

        $notification = array(
            'message' => 'Student Fee Inserted Successfully!',
            'alert-type' => 'success'
        );

        return redirect()->route('student.year.view')->with($notification);
    }


    public function studentYearEdit ($id)
    {
        $data = StudentYear::find($id);
        return view ('backend.users.student_year.edit_student_year',compact('data'));
    }

    public function studentYearUpdate (Request $request,$id)
    {
        $data = StudentYear::find($id);

        $data->name = $request->name;
        $data->save();

        $notification = array(
            'message' => 'Student Fee Updated Successfully!',
            'alert-type' => 'success'
        );

        return redirect()->route('student.year.view')->with($notification);
    }

    public function studentYearDelete ($id)
    {
        $data = StudentYear::destroy($id);
        return redirect()->route('student.year.view');
    }


}