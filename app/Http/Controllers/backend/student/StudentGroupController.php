<?php

namespace App\Http\Controllers\backend\student;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\StudentGroup;

class StudentGroupController extends Controller
{
    public function studentGroupView()
    {
        $data['allData'] = StudentGroup::All();
        return view ('backend.users.student_group.view_student_group',$data);
    }

    public function studentGroupAdd ()
    {
        return view ('backend.users.student_group.add_student_group');
    }

    public function studentGroupStore (Request $request)
    {
        $request->validate([
            'name' => 'required',
        ]);

        $data = new StudentGroup;

        $data->name = $request->name;
        $data->save();

        $notification = array(
            'message' => 'Student Group Inserted Successfully!',
            'alert-type' => 'success'
        );

        return redirect()->route('student.group.view')->with($notification);
    }


    public function studentGroupEdit ($id)
    {
        $data = StudentGroup::find($id);
        return view ('backend.users.student_group.edit_student_group',compact('data'));
    }

    public function studentGroupUpdate (Request $request,$id)
    {
        $data = StudentGroup::find($id);

        $data->name = $request->name;
        $data->save();

        $notification = array(
            'message' => 'Student Group Updated Successfully!',
            'alert-type' => 'success'
        );

        return redirect()->route('student.group.view')->with($notification);
    }

    public function studentGroupDelete ($id)
    {
        $data = StudentGroup::destroy($id);
        return redirect()->route('student.group.view');
    }


}