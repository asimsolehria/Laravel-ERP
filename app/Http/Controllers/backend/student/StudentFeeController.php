<?php

namespace App\Http\Controllers\backend\student;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\StudentFee;

class StudentFeeController extends Controller
{
    public function studentFeeView()
    {
        $data['allData'] = StudentFee::All();
        return view ('backend.users.student_fee.view_student_fee',$data);
    }

    public function studentFeeAdd ()
    {
        return view ('backend.users.student_fee.add_student_fee');
    }

    public function studentFeeStore (Request $request)
    {
        $request->validate([
            'name' => 'required',
        ]);

        $data = new StudentFee;

        $data->name = $request->name;
        $data->save();

        $notification = array(
            'message' => 'Fee Category Inserted Successfully!',
            'alert-type' => 'success'
        );

        return redirect()->route('student.fee.view')->with($notification);
    }


    public function studentFeeEdit ($id)
    {
        $data = StudentFee::find($id);
        return view ('backend.users.student_fee.edit_student_fee',compact('data'));
    }

    public function studentFeeUpdate (Request $request,$id)
    {
        $data = StudentFee::find($id);

        $data->name = $request->name;
        $data->save();

        $notification = array(
            'message' => 'Fee Category Updated Successfully!',
            'alert-type' => 'success'
        );

        return redirect()->route('student.fee.view')->with($notification);
    }

    public function studentFeeDelete ($id)
    {
        $data = StudentFee::destroy($id);
        return redirect()->route('student.fee.view');
    }


}