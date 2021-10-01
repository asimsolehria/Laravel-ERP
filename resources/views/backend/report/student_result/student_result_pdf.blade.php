<!DOCTYPE html>
<html>
<head>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>


  @include("backend.pdf_admin")
 <br> <br>
 <strong>Result of : </strong> {{ $allData['0']['exam_type']['name'] }} 
 <br> <br>
<table id="customers">
   
  <tr>    
    <td width="50%"> <h4>Year / Session : <i>{{ $allData['0']['year']['name'] }}</i></h4></td>
    <td width="50%"> <h4> Class : <i>{{ $allData['0']['student_class']['name'] }}</i></h4></td>
  </tr>
  
@php
	$assign_student = App\Models\AssignStudent::with(['student'])->where('year_id',$allData['0']->year_id)->where('class_id',$allData['0']->class_id)->get();
@endphp

<tr style="background-color: rgb(255, 255, 255);">
  <td></td>
  <td></td>
</tr>
<tr style="background-color: rgb(255, 255, 255)">
  <td></td>
  <td></td>
</tr>
<tr style="background-color: rgb(255, 255, 255)">
  <td></td>
  <td></td>
</tr>

  @foreach ($st_name as $key => $obj)

  @php
    $student_name = App\Models\User::where('id',$allData[$key]->student_id)->first();
    $student_marks = App\Models\StudentMarks::where('student_id',$allData[$key]->student_id)->where('exam_type_id',$allData[$key]->exam_type_id)->get();
    
    $total = 0;
    $i = 0;
    $j = 0;
    $fail = "Pass";
  @endphp
    <tr>
      @if ($student_name)
        <td>Name : <b>{{ $student_name->name }}</b></td>
        <td>Roll No : {{ $obj->roll }}</td>
      @endif
      {{-- <td>{{ $allData['0']['student']['name'] }}</td> --}}
    </tr>
    <tr>
      @if ($student_name)
        <td>ID NO : {{ $student_name->id_no }}</td>
        <td>Contact : {{ $student_name->mobile }}</td>
      @endif
      {{-- <td>{{ $allData['0']['student']['name'] }}</td> --}}
    </tr>

    <tr style="background-color: rgb(247, 247, 247)">
      <td></td>
      <td></td>
    </tr>
    <tr>
      @if ($student_name)
        {{-- <td>Subject :{{ $student_marks['0']->assign_subject_id }}</td>
        <td>Marks : {{ $student_marks['0']->marks }}</td> --}}
        <td><b>Subject</b></td>
        <td><b>Marks</b></td>
      @endif
      {{-- <td>{{ $allData['0']['student']['name'] }}</td> --}}
    </tr>
    <tr>
      @if ($student_name)
        @foreach ($student_marks as $mark)
         <tr>
           @php

if ($mark->marks < $mark['assign_subject']['pass_mark'])
{
  $fail = "Fail";
  $j++;
}
else {
  $fail = "Pass";
}

            $total += $mark->marks;
            $i += $mark['assign_subject']['full_mark'];
           @endphp
           <td>{{ $mark['assign_subject']['school_subject']['name'] }}</td>
           <td>{{ $mark->marks }} ---------------> {{ $fail }}</td>
        </tr>
        @endforeach
        <tr>
          <td><b>Total Marks : {{ $total }} / {{ $i }}</b><span style="color:red">{{ ($j>=3)?" ==> Fail":"" }}</span></td>
          <td><b>Parent Signature ........................</b></td>
       </tr>
      @endif
    </tr>



    @if ($student_name)
      <tr style="background-color: rgb(255, 255, 255)">
        <td></td>
        <td></td>
      </tr>
      <tr style="background-color: rgb(255, 255, 255)">
        <td></td>
        <td></td>
      </tr>
      <tr style="background-color: rgb(255, 255, 255)">
        <td></td>
        <td></td>
      </tr>
    @endif
  @endforeach
  

</table>
<br> <br>
  <i style="font-size: 10px; float: right;">Print Data : {{ date("d M Y") }}</i>

<hr style="border: dashed 2px; width: 95%; color: #000000; margin-bottom: 50px">

 
 

</body>
</html>
