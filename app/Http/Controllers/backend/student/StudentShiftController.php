<?php

namespace App\Http\Controllers\backend\student;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\StudentShift;

class StudentShiftController extends Controller
{
    public function studentShiftView()
    {
        $data['allData'] = StudentShift::All();
        return view ('backend.users.student_shift.view_student_shift',$data);
    }

    public function studentShiftAdd ()
    {
        return view ('backend.users.student_shift.add_student_shift');
    }

    public function studentShiftStore (Request $request)
    {
        $request->validate([
            'name' => 'required',
        ]);

        $data = new StudentShift;

        $data->name = $request->name;
        $data->save();

        $notification = array(
            'message' => 'Student Shift Inserted Successfully!',
            'alert-type' => 'success'
        );

        return redirect()->route('student.shift.view')->with($notification);
    }


    public function studentShiftEdit ($id)
    {
        $data = StudentShift::find($id);
        return view ('backend.users.student_shift.edit_student_shift',compact('data'));
    }

    public function studentShiftUpdate (Request $request,$id)
    {
        $data = StudentShift::find($id);

        $data->name = $request->name;
        $data->save();

        $notification = array(
            'message' => 'Student Shift Updated Successfully!',
            'alert-type' => 'success'
        );

        return redirect()->route('student.shift.view')->with($notification);
    }

    public function studentShiftDelete ($id)
    {
        $data = StudentShift::destroy($id);
        return redirect()->route('student.shift.view');
    }


}