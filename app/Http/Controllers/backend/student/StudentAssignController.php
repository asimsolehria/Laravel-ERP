<?php

namespace App\Http\Controllers\backend\student;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\StudentClass;
use App\Models\StudentSubject;
use App\Models\StudentAssign;

class StudentAssignController extends Controller
{
    public function studentAssignView()
    {
        $data['allData'] = StudentAssign::select('class_id')->groupBy('class_id')->get();
        return view ('backend.users.student_assign_subject.view_student_assign_subject',$data);
    }

    public function studentAssignAdd ()
    {
        $data['subjects'] = StudentSubject::all();
        $data['classes'] = StudentClass::all();

        return view ('backend.users.student_assign_subject.add_student_assign_subject',$data);
    }

    public function studentAssignStore (Request $request)
    {
        
        
        $amount = count($request->subject_id);
        
        if ($amount != NULL)
        {
            for($i=0; $i<$amount; $i++)
            {
                $data = new StudentAssign;
                $data->class_id = $request->class_id;
                $data->subject_id = $request->subject_id[$i];
                $data->full_marks = $request->full_marks[$i];
                $data->pass_marks = $request->pass_marks[$i];
                $data->subjective_marks = $request->subjective_marks[$i];
                $data->save();
            }
        }

        $notification = array(
            'message' => 'Subject Assigned Successfully!',
            'alert-type' => 'success'
        );

        return redirect()->route('student.assign.subject.view')->with($notification);

    }


    public function studentAssignEdit ($id)
    {
        $data['editData'] = StudentAssign::where('class_id',$id)->orderBy('subject_id','asc')->get();

        $data['subjects'] = StudentSubject::all();
        $data['classes'] = StudentClass::all();

        
        return view ('backend.users.student_assign_subject.edit_student_assign_subject',$data);
    }

    public function studentAssignUpdate (Request $request,$id)
    {
        if ($request->subject_id != NULL)
        {
            $amount = count($request->subject_id);

            StudentAssign::where('class_id',$id)->delete();
            for($i=0; $i<$amount; $i++)
            {
                $data = new StudentAssign;
                $data->class_id = $request->class_id;
                $data->subject_id = $request->subject_id[$i];
                $data->full_marks = $request->full_marks[$i];
                $data->pass_marks = $request->pass_marks[$i];
                $data->subjective_marks = $request->subjective_marks[$i];
                $data->save();

                $notification = array(
                    'message' => 'Subject Assigned Updated Successfully!',
                    'alert-type' => 'success'
                    );
            }
        }

        else
        {
            $notification = array(
                'message' => 'You Did not Select any Subject!',
                'alert-type' => 'warning'
                );
        }

        return redirect()->route('student.assign.subject.view')->with($notification);;
    }

    public function studentAssignDelete ($id)
    {
        $data['allData'] = StudentAssign::where('class_id',$id)->orderBy('subject_id','asc')->get();

        return view ('backend.users.student_assign_subject.details_student_assign_subject',$data);
    }


}