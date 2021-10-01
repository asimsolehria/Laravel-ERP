<?php

namespace App\Http\Controllers\backend\student;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\StudentClass;
use App\Models\StudentFee;//categories
use App\Models\StudentFeeAmount;

class StudentFeeAmountController extends Controller
{
    public function studentFeeAmountView()
    {
        // $data['allData'] = StudentFeeAmount::all();
        $data['allData'] = StudentFeeAmount::select('category_id')->groupBy('category_id')->get();
        return view ('backend.users.student_fee_amount.view_student_fee_amount',$data);
    }

    public function studentFeeAmountAdd ()
    {
        $data['fee_categories'] = StudentFee::all();
        $data['classes'] = StudentClass::all();

        return view ('backend.users.student_fee_amount.add_student_fee_amount',$data);
    }

    public function studentFeeAmountStore (Request $request)
    {
        $amount = count($request->class_id);
        
        if ($amount != NULL)
        {
            for($i=0; $i<$amount; $i++)
            {
                $data = new StudentFeeAmount;
                $data->category_id = $request->category_id;
                $data->class_id = $request->class_id[$i];
                $data->amount = $request->amount[$i];
                $data->save();
            }
        }

        $notification = array(
            'message' => 'Fee Inserted Successfully!',
            'alert-type' => 'success'
        );

        return redirect()->route('student.fee.amount.view')->with($notification);
    }


    public function studentFeeAmountEdit ($id)
    {
        // $data = StudentFeeAmount::find($id);
        //dd($data['editData']->toArray());
        $data['editData'] = StudentFeeAmount::where('category_id',$id)->orderBy('class_id','asc')->get();

        $data['fee_categories'] = StudentFee::all();
        $data['classes'] = StudentClass::all();

        
        return view ('backend.users.student_fee_amount.edit_student_fee_amount',$data);
    }

    public function studentFeeAmountUpdate (Request $request,$id)
    {
        if ($request->class_id != NULL)
        {
            $amount = count($request->class_id);

            StudentFeeAmount::where('category_id',$id)->delete();
            for($i=0; $i<$amount; $i++)
            {
                $data = new StudentFeeAmount;
                $data->category_id = $request->category_id;
                $data->class_id = $request->class_id[$i];
                $data->amount = $request->amount[$i];
                $data->save();

                $notification = array(
                    'message' => 'Fee Updated Successfully!',
                    'alert-type' => 'success'
                    );
            }
        }

        else
        {
            $notification = array(
                'message' => 'You Did not Select any Class!',
                'alert-type' => 'warning'
                );
        }

        return redirect()->route('student.fee.amount.view')->with($notification);
    }

    public function studentFeeAmountDelete ($id)
    {
        $data['allData'] = StudentFeeAmount::where('category_id',$id)->orderBy('class_id','asc')->get();
        // $data['fee_categories'] = StudentFee::all();
        // $data['classes'] = StudentClass::all();

        return view ('backend.users.student_fee_amount.details_student_fee_amount',$data);
    }


}