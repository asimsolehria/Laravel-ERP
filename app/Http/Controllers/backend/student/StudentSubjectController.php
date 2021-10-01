<?php

namespace App\Http\Controllers\backend\student;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\StudentSubject;

class StudentSubjectController extends Controller
{
    public function studentSubjectView()
    {
        $data['allData'] = StudentSubject::All();
        return view ('backend.users.student_subject.view_student_subject',$data);
    }

    public function studentSubjectAdd ()
    {
        return view ('backend.users.student_subject.add_student_subject');
    }

    public function studentSubjectStore (Request $request)
    {
        $request->validate([
            'name' => 'required',
        ]);

        $data = new StudentSubject;

        $data->name = $request->name;
        $data->save();

        $notification = array(
            'message' => 'Student Subject Inserted Successfully!',
            'alert-type' => 'success'
        );

        return redirect()->route('student.subject.view')->with($notification);
    }


    public function studentSubjectEdit ($id)
    {
        $data = StudentSubject::find($id);
        return view ('backend.users.student_subject.edit_student_subject',compact('data'));
    }

    public function studentSubjectUpdate (Request $request,$id)
    {
        $data = StudentSubject::find($id);

        $data->name = $request->name;
        $data->save();

        $notification = array(
            'message' => 'Student Subject Updated Successfully!',
            'alert-type' => 'success'
        );

        return redirect()->route('student.subject.view')->with($notification);
    }

    public function studentSubjectDelete ($id)
    {
        $data = StudentSubject::destroy($id);
        return redirect()->route('student.subject.view');
    }


}