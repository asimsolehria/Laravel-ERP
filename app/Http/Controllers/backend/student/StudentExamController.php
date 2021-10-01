<?php

namespace App\Http\Controllers\backend\student;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\StudentExam;

class StudentExamController extends Controller
{
    public function studentExamView()
    {
        $data['allData'] = StudentExam::All();
        return view ('backend.users.student_exam.view_student_exam',$data);
    }

    public function studentExamAdd ()
    {
        return view ('backend.users.student_exam.add_student_exam');
    }

    public function studentExamStore (Request $request)
    {
        $request->validate([
            'name' => 'required',
        ]);

        $data = new StudentExam;

        $data->name = $request->name;
        $data->save();

        $notification = array(
            'message' => 'Student Exam Inserted Successfully!',
            'alert-type' => 'success'
        );

        return redirect()->route('student.exam.view')->with($notification);
    }


    public function studentExamEdit ($id)
    {
        $data = StudentExam::find($id);
        return view ('backend.users.student_exam.edit_student_exam',compact('data'));
    }

    public function studentExamUpdate (Request $request,$id)
    {
        $data = StudentExam::find($id);

        $data->name = $request->name;
        $data->save();

        $notification = array(
            'message' => 'Student Exam Updated Successfully!',
            'alert-type' => 'success'
        );

        return redirect()->route('student.exam.view')->with($notification);
    }

    public function studentExamDelete ($id)
    {
        $data = StudentExam::destroy($id);
        return redirect()->route('student.exam.view');
    }


}