<?php

namespace App\Http\Controllers\backend\student;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\StudentClass;

class StudentClassController extends Controller
{
    public function studentClassView()
    {
        $data['allData'] = StudentClass::All();
        return view ('backend.users.student.view_student_class',$data);
    }

    public function studentClassAdd ()
    {
        return view ('backend.users.student.add_student_class');
    }

    public function studentClassStore (Request $request)
    {
        $request->validate([
            'name' => 'required',
        ]);

        $data = new StudentClass;

        $data->name = $request->name;
        $data->save();

        $notification = array(
            'message' => 'Student Class Inserted Successfully!',
            'alert-type' => 'success'
        );

        return redirect()->route('student.class.view')->with($notification);
    }


    public function studentClassEdit ($id)
    {
        $data = StudentClass::find($id);
        return view ('backend.users.student.edit_student_class',compact('data'));
    }

    public function studentClassUpdate (Request $request,$id)
    {
        $data = StudentClass::find($id);

        $data->name = $request->name;
        $data->save();

        $notification = array(
            'message' => 'Student Class Updated Successfully!',
            'alert-type' => 'success'
        );

        return redirect()->route('student.class.view')->with($notification);
    }

    public function studentClassDelete ($id)
    {
        $data = StudentClass::destroy($id);
        return redirect()->route('student.class.view');
    }


}
