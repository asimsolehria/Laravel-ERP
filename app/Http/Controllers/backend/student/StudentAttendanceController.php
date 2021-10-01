<?php

namespace App\Http\Controllers\Backend\Student;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\AssignStudent;
use App\Models\User;
use App\Models\DiscountStudent;
use App\Models\FeeCategoryAmount;

use App\Models\StudentYear;
use App\Models\StudentClass;
use App\Models\StudentGroup;
use App\Models\StudentShift;
use DB;
use PDF;
use Auth;

use App\Models\EmployeeAttendance;
use App\Models\StudentAttendance;


class StudentAttendanceController extends Controller
{
    
    public function AttendanceView(){
		$data['years'] = StudentYear::all();
    	$data['classes'] = StudentClass::all();
        // $data['allData'] = StudentAttendance::select('date')->groupBy('date')->orderBy('id','DESC')->get();
    	// $data['allData'] = EmployeeAttendance::orderBy('id','DESC')->get();
    	return view('backend.student.attendance.attendance_view',$data);
    }

	public function AttendanceShow(){
        $data['allData'] = StudentAttendance::with(['classes','student','years'])->select('date')->groupBy('date')->orderBy('id','DESC')->get();
    	return view('backend.student.attendance.attendance_show',$data);
    }
	
    public function AttendanceAdd(Request $request){
    	 $year_id = $request->year_id;
    	 $class_id = $request->class_id;
    	 if ($year_id !='') {
    	 	$where[] = ['year_id',$year_id];
    	 }
    	 if ($class_id !='') {
    	 	$where[] = ['class_id',$class_id];
    	 }
    	 $allStudent = AssignStudent::with(['student'])->where($where)->get();
    	 // dd($allStudent);
    	 $html['thsource']  = '<th>SL</th>';
		 //$html['thsource'] .= '<th>SL</th>';
    	 $html['thsource'] .= '<th>ID No</th>';
    	 $html['thsource'] .= '<th>Student Name</th>';
    	 $html['thsource'] .= '<th>Roll No</th>';
    	 $html['thsource'] .= '<th>Attendace Status</th>';


    	 foreach ($allStudent as $key => $v) {
    	 	$color = 'success';
			
			$count = $key+1;
			$class = $v->class_id;
			$year = $v->year_id;
			
			$html[$key]['tdsource'] = '<td>'.($key+1).'<input name="student_id[]" type="hidden" value="'.$v->id.'"><input name="count" type="hidden" value="'.($count).'"><input name="class_id" type="hidden" value="'.($class).'"><input name="year_id" type="hidden" value="'.($year).'"></td>';
			
    	 	//$html[$key]['tdsource'] .= '<td>'.($key+1).'</td>';
    	 	$html[$key]['tdsource'] .= '<td>'.$v['student']['id_no'].'</td>';
    	 	$html[$key]['tdsource'] .= '<td>'.$v['student']['name'].'</td>';
    	 	$html[$key]['tdsource'] .= '<td>'.$v->roll.'</td>';
			$html[$key]['tdsource'] .= '<td><input name="attend_status'.($key).'" type="radio" value="Present" id="present'.($key).'" checked="checked">
			<label for="present'.($key).'">Present</label>

			<input name="attend_status'.($key).'" value="Leave" type="radio" id="leave'.($key).'"  >
			<label for="leave'.($key).'">Leave</label>
			
			<input name="attend_status'.($key).'" value="Absent"  type="radio" id="absent'.($key).'"  >
			<label for="absent'.($key).'">Absent</label></td>';
    	 	//$html[$key]['tdsource'] .='<td>'.'RS : '.$registrationfee->amount.'</td>';

    	 }		 
    	return response()->json(@$html);

    }// end method 
	
	public function StudentAttendanceStore(Request $request){

    	StudentAttendance::where('class_id',$request->class_id)->where('year_id',$request->year_id)->where('date', date('Y-m-d', strtotime($request->adate)))->delete();
    	$countemployee = $request->count;
    	for ($i=0; $i <$countemployee ; $i++) { 
    		$attend_status = 'attend_status'.$i;
    		$attend = new StudentAttendance();
    		$attend->student_id = $request->student_id[$i];
			$attend->class_id = $request->class_id;
			$attend->year_id = $request->year_id;
			$attend->date = $request->adate;
			$attend->taker = Auth::user()->name;
    		$attend->attend_status = $request->$attend_status;
    		$attend->save();
    	} // end For Loop

 		$notification = array(
    		'message' => 'Student Attendace Added Successfully',
    		'alert-type' => 'success'
    	);

    	return redirect()->route('student.attendance.show')->with($notification);

    }
	
	public function AttendanceDetails($date){
    	$data['details'] = StudentAttendance::where('date',$date)->get();
    	return view('backend.student.attendance.attendance_details',$data);

    }
	
	public function AttendanceEdit1($date){
		$data['years'] = StudentYear::all();
    	$data['classes'] = StudentClass::all();
    	$data['allData'] = StudentAttendance::where('date',$date)->orderBy('id','DESC')->first();
    	return view('backend.student.attendance.attendance_edit',$data);
    }
	
	public function AttendanceAdd1(Request $request){
    	 $year_id = $request->year_id;
    	 $class_id = $request->class_id;
		 $date = $request->adate;
    	 if ($year_id !='') {
    	 	$where[] = ['year_id',$year_id];
    	 }
    	 if ($class_id !='') {
    	 	$where[] = ['class_id',$class_id];
    	 }
		 
		 if ($date !='') {
    	 	$where[] = ['date',$date];
    	 }
    	 //$allStudent = AssignStudent::with(['student'])->where($where)->get();
		 //$data = StudentAttendance::where('class_id',$request->class_id)->where('year_id',$request->year_id)->where('date', date('Y-m-d', strtotime($request->adate)));
		 
		 $allStudent = StudentAttendance::with(['classes','student','years'])->where($where)->get();

    	 // dd($allStudent);
    	 $html['thsource']  = '<th>SL</th>';
		 //$html['thsource'] .= '<th>SL</th>';
    	 $html['thsource'] .= '<th>ID No</th>';
    	 $html['thsource'] .= '<th>Student Name</th>';
    	 $html['thsource'] .= '<th>Roll No</th>';
    	 $html['thsource'] .= '<th>Attendace Status</th>';


    	 foreach ($allStudent as $key => $v) {
    	 	$color = 'success';
			
			$count = $key+1;
			$class = $v->class_id;
			$year = $v->year_id;
			$attend = $v->attend_status;
			
			$html[$key]['tdsource'] = '<td>'.($key+1).'<input name="student_id[]" type="hidden" value="'.$v['student']['id'].'"><input name="count" type="hidden" value="'.($count).'"><input name="class_id" type="hidden" value="'.($class).'"><input name="year_id" type="hidden" value="'.($year).'"></td>';
			
    	 	//$html[$key]['tdsource'] .= '<td>'.($key+1).'</td>';
    	 	$html[$key]['tdsource'] .= '<td>'.$v['student']['student']['id_no'].'</td>';
    	 	$html[$key]['tdsource'] .= '<td>'.$v['student']['student']['name'].'</td>';
			$html[$key]['tdsource'] .= '<td>'.$v['student']['roll'].'</td>';
			$html[$key]['tdsource'] .= '<td><input name="attend_status'.($key).'" type="radio" id="present'.($key).'" value="Present" checked="checked" '.($attend == "Present"?'checked':'').'>
			<label for="present'.($key).'">Present</label>

			<input name="attend_status'.($key).'" value="Leave" type="radio" id="leave'.($key).'" '.($attend == "Leave"?'checked':'').'>
			<label for="leave'.($key).'">Leave</label>
			
			<input name="attend_status'.($key).'" value="Absent"  type="radio" id="absent'.($key).'" '.($attend == "Absent"?'checked':'').'>
			<label for="absent'.($key).'">Absent</label></td>';
    	 	//$html[$key]['tdsource'] .='<td>'.'RS : '.$registrationfee->amount.'</td>';

    	 }		 
    	return response()->json(@$html);

    }// end method 
	
	public function StudentAttendanceUpdate(Request $request){

    	StudentAttendance::where('class_id',$request->class_id)->where('year_id',$request->year_id)->where('date', date('Y-m-d', strtotime($request->adate)))->delete();
    	$countemployee = $request->count;
    	for ($i=0; $i <$countemployee ; $i++) { 
    		$attend_status = 'attend_status'.$i;			
    		$attend = new StudentAttendance();
    		$attend->student_id = $request->student_id[$i];
			$attend->class_id = $request->class_id;
			$attend->year_id = $request->year_id;
			$attend->date = $request->adate;
			$attend->taker = Auth::user()->name;
    		$attend->attend_status = $request->$attend_status;
    		$attend->save();
    	} // end For Loop

 		$notification = array(
    		'message' => 'Student Attendace Update Successfully',
    		'alert-type' => 'success'
    	);

    	return redirect()->route('student.attendance.show')->with($notification);

    }

	/*
	public function AttendanceGet(Request $request){
        $data['years'] = StudentYear::all();
    	$data['classes'] = StudentClass::all();
    	return view('backend.student.registration_fee.registration_fee_view',$data);
    }
	
	public function AttendanceEdit($date){
    	$data['allData'] = StudentAttendance::with(['classes','student','years'])->orderBy('id','DESC')->get();
    	return view('backend.student.attendance.attendance_edit',$data);
    }


   public function RegFeeClassData(Request $request){
    	 $year_id = $request->year_id;
    	 $class_id = $request->class_id;
    	 if ($year_id !='') {
    	 	$where[] = ['year_id','like',$year_id.'%'];
    	 }
    	 if ($class_id !='') {
    	 	$where[] = ['class_id','like',$class_id.'%'];
    	 }
    	 $allStudent = AssignStudent::with(['classes'])->where($where)->get();
    	 dd($allStudent);
		 
    	 $html['thsource']  = '<th>SL</th>';
    	 $html['thsource'] .= '<th>ID No</th>';
    	 $html['thsource'] .= '<th>Student Name</th>';
    	 $html['thsource'] .= '<th>Roll No</th>';
    	 $html['thsource'] .= '<th>Reg Fee</th>';
    	 $html['thsource'] .= '<th>Discount </th>';
    	 $html['thsource'] .= '<th>Student Fee </th>';
    	 $html['thsource'] .= '<th>Action</th>';


    	 foreach ($allStudent as $key => $v) {
    	 	$registrationfee = FeeCategoryAmount::where('fee_category_id','1')->where('class_id',$v->class_id)->first();
    	 	$color = 'success';
    	 	$html[$key]['tdsource']  = '<td>'.($key+1).'</td>';
    	 	$html[$key]['tdsource'] .= '<td>'.$v['student']['id_no'].'</td>';
    	 	$html[$key]['tdsource'] .= '<td>'.$v['student']['name'].'</td>';
    	 	$html[$key]['tdsource'] .= '<td>'.$v->roll.'</td>';
    	 	$html[$key]['tdsource'] .='<td>'.'RS : '.$registrationfee->amount.'</td>';
    	 	$html[$key]['tdsource'] .= '<td>'.$v['discount']['discount'].'%'.'</td>';
    	 	
    	 	$originalfee = $registrationfee->amount;
    	 	$discount = $v['discount']['discount'];
    	 	$discounttablefee = $discount/100*$originalfee;
    	 	$finalfee = (float)$originalfee-(float)$discounttablefee;

    	 	$html[$key]['tdsource'] .='<td>'.'RS : '.$finalfee.'</td>';
    	 	$html[$key]['tdsource'] .='<td>';
    	 	$html[$key]['tdsource'] .='<a class="btn btn-sm btn-'.$color.'" title="PaySlip" target="_blanks" href="'.route("student.registration.fee.payslip").'?class_id='.$v->class_id.'&student_id='.$v->student_id.'">Fee Slip</a>';
    	 	$html[$key]['tdsource'] .= '</td>';

    	 }  
    	return response()->json(@$html);*/

    }

/*
    public function AttendanceStore(Request $request){

    	EmployeeAttendance::where('date', date('Y-m-d', strtotime($request->date)))->delete();
    	$countemployee = count($request->employee_id);
    	for ($i=0; $i <$countemployee ; $i++) { 
    		$attend_status = 'attend_status'.$i;
    		$attend = new EmployeeAttendance();
    		$attend->date = date('Y-m-d',strtotime($request->date));
    		$attend->employee_id = $request->employee_id[$i];
    		$attend->attend_status = $request->$attend_status;
    		$attend->save();
    	} // end For Loop

 		$notification = array(
    		'message' => 'Employee Attendace Data Update Successfully',
    		'alert-type' => 'success'
    	);

    	return redirect()->route('employee.attendance.view')->with($notification);

    } // end Method

*/