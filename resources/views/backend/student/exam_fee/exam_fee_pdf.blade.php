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

@php 
$registrationfee = App\Models\FeeCategoryAmount::where('fee_category_id','3')->where('class_id',$details->class_id)->first();
$originalfee = $registrationfee->amount;
        $discount = $details['discount']['discount'];
        $discounttablefee = $discount/100*$originalfee;
        $finalfee = (float)$originalfee-(float)$discounttablefee;

@endphp 

<table id="customers">
  <tr>
    <th width="10%">Sl</th>
    <th width="45%">Student Details</th>
    <th width="45%">Student Data</th>
  </tr>
  <tr>
    <td>1</td>
    <td><b>Student ID No</b></td>
    <td>{{ $details['student']['id_no'] }}</td>
  </tr>
  <tr>
    <td>2</td>
    <td><b>Roll No</b></td>
    <td>{{ $details->roll }}</td>
  </tr>

    <tr>
    <td>3</td>
    <td><b>Student Name</b></td>
    <td>{{ $details['student']['name'] }}</td>
  </tr>

   
  <tr>
    <td>5</td>
    <td><b>Session</b></td>
    <td>{{ $details['student_year']['name'] }}</td>
  </tr>
  <tr>
    <td>6</td>
    <td><b>Class </b></td>
    <td>{{ $details['student_class']['name'] }}</td>
  </tr>
  <tr>
    <td>7</td>
    <td><b>Exam Fee</b></td>
    <td>RS : {{ $originalfee }}</td>
  </tr>
  <tr>
    <td>8</td>
    <td><b>Discount Fee </b></td>
    <td>{{ $discount  }} %</td>
  </tr>

    <tr>
    <td>9</td>
    <td><b>Fee For this Student of {{ $exam_type }} </b></td>
    <td>RS : {{ $finalfee }}</td>
  </tr>
  
  <tr style="background-color: #4CAF50;">
    <td> </td>
    <td style="text-align: center; font-weight:bold; color:white;">For Student</td>
    <td style="font-weight:bold;  color:white;">Sign: ..................</td>
  </tr>

  
 
</table>
<hr><i style="font-size: 10px; float: right;">Print Data : {{ date("d M Y") }}</i>
<br><br><br>

<table id="customers">
  <tr>
    <th width="10%">Sl</th>
    <th width="45%">Student Details</th>
    <th width="45%">Student Data</th>
  </tr>
  <tr>
    <td>1</td>
    <td><b>Student ID No</b></td>
    <td>{{ $details['student']['id_no'] }}</td>
  </tr>
  <tr>
    <td>2</td>
    <td><b>Roll No</b></td>
    <td>{{ $details->roll }}</td>
  </tr>

    <tr>
    <td>3</td>
    <td><b>Student Name</b></td>
    <td>{{ $details['student']['name'] }}</td>
  </tr>

   
  <tr>
    <td>5</td>
    <td><b>Session</b></td>
    <td>{{ $details['student_year']['name'] }}</td>
  </tr>
  <tr>
    <td>6</td>
    <td><b>Class </b></td>
    <td>{{ $details['student_class']['name'] }}</td>
  </tr>
  <tr>
    <td>7</td>
    <td><b>Exam Fee</b></td>
    <td>RS : {{ $originalfee }}</td>
  </tr>
  <tr>
    <td>8</td>
    <td><b>Discount Fee </b></td>
    <td>{{ $discount  }} %</td>
  </tr>

    <tr>
    <td>9</td>
    <td><b>Fee For this Student of {{ $exam_type }} </b></td>
    <td>RS : {{ $finalfee }}</td>
  </tr>
  
  <tr style="background-color: #4CAF50;">
    <td> </td>
    <td style="text-align: center; font-weight:bold; color:white;">For Administration</td>
    <td style="font-weight:bold;  color:white;">Sign: ..................</td>
  </tr>

  
 
</table>
<hr><i style="font-size: 10px; float: right;">Print Data : {{ date("d M Y") }}</i>
</body>
</html>
