@extends('admin.admin_master')
@section('admin')

<section class="content">

    <!-- Basic Forms -->
     <div class="box">
       <div class="box-header with-border">
         <h4 class="box-title">Edit Student Shift</h4>
       </div>
       <!-- /.box-header -->
       <div class="box-body">
         <div class="row">
           <div class="col">
<form method="POST" action="{{ route('student.shift.update',$data->id) }}">
                @csrf
                 <div class="row">
                    <div class="col-6">						
                        <div class="form-group">
                            <h5>Student Shift <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <input type="text" name="name" value="{{ $data->name }}" class="form-control" required="">
                            </div>
                        </div>
                    </div>
                   </div>

                    <div class="text-xs-right">
                       <input type="submit" class="btn btn-rounded btn-info" value="Submit" />
                   </div>
    </form>

           </div>
           <!-- /.col -->
         </div>
         <!-- /.row -->
       </div>
       <!-- /.box-body -->
     </div>
     <!-- /.box -->

   </section>

@endsection