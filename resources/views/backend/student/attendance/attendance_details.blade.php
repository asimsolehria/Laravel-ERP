@extends('admin.admin_master')
@section('admin')


 <div class="content-wrapper">
	  <div class="container-full">
		<!-- Content Header (Page header) -->
		 

		<!-- Main content -->
		<section class="content">
		  <div class="row">
			  
			 

			<div class="col-12">

			 <div class="box">
				<div class="box-header with-border">
				  <h3 class="box-title">Student Attendance Details </h3>
	 			   
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="table-responsive">
		<table  class="table table-bordered table-striped">
						<thead>
			<tr>
				<th width="5%">SL</th>
				<th>ID No</th>				
				<th>Name</th>
				<th>Class</th>
				<th>Roll No</th>
				<th>Batch</th>
				<th>Date </th>
				<th>Attend Taker</th>
				<th>Attend Status</th>				 
			</tr>
		</thead>
		<tbody>
			@foreach($details as $key => $value )
			<tr>
					<td>{{ $key+1 }}</td>

					@if ($value['student'])				
						<td>{{ $value['student']['student']['id_no'] }}</td>
						<td> {{ $value['student']['student']['name'] }}</td>
						<td> {{ $value['classes']['name'] }}</td>
						<td> {{ $value['student']['roll'] }}</td>
						<td> {{ $value['years']['name'] }}</td>
						<td> {{ date('d-m-Y', strtotime($value->date)) }}</td>
						<td> {{ $value->taker }}</td>
						<td> {{ $value->attend_status }}</td>
						
					@else			
						<td><b>PROMOTED</b></td>
						<td><b>PROMOTED</b></td>
						<td><b>PROMOTED</b></td>
						<td><b>PROMOTED</b></td>
						<td><b>PROMOTED</b></td>
						<td><b>PROMOTED</b></td>
						<td><b>PROMOTED</b></td>
						<td><b>PROMOTED</b></td>
					@endif

					
				
			</tr>
			@endforeach
							 
						</tbody>
						<tfoot>
							 
						</tfoot>
					  </table>
					</div>
				</div>
				<!-- /.box-body -->
			  </div>
			  <!-- /.box -->

			       
			</div>
			<!-- /.col -->
		  </div>
		  <!-- /.row -->
		</section>
		<!-- /.content -->
	  
	  </div>
  </div>





@endsection
