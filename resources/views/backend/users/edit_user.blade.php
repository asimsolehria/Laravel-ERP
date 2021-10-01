@extends('admin.admin_master')
@section('admin')

<section class="content">

    <!-- Basic Forms -->
     <div class="box">
       <div class="box-header with-border">
         <h4 class="box-title">Edit User</h4>
       </div>
       <!-- /.box-header -->
       <div class="box-body">
         <div class="row">
           <div class="col">
<form method="POST" action="{{ route('user.update',$data->id) }}">
                @csrf
                 <div class="row">
                    <div class="col-6">						
                        <div class="form-group">
                            <h5>User Name <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <input type="text" name="name" value="{{ $data->name }}" class="form-control" required="">
                            </div>
                        </div>
                    </div>
                       
                       <div class="col-6">						
                        <div class="form-group">
                            <h5>User Role <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <select name="role" id="select" required="" class="form-control">
                                    <option value="Admin" {{ $data->role=='Admin' ? "selected": "" }}>Admin</option>
                                    <option value="User"  {{ $data->role=='User' ? "selected": "" }}>User</option>
                                </select>
                            <div class="help-block"></div></div>
                        </div>
                        </div>
                   </div>


                   <div class="row">
                        
                        <div class="col-6">						
                            <div class="form-group">
                                <h5>User Email <span class="text-danger">*</span></h5>
                                <div class="controls">
                                    <input type="email" value="{{ $data->email }}" name="email" class="form-control" required="" >
                                </div>
                            </div>
                        </div>

                        <div class="col-6">						
                            <div class="form-group">
                                <h5>User Password <span class="text-danger">*</span></h5>
                                <div class="controls">
                                    <input type="password" value="{{ $data->password }}" name="password" class="form-control" required="" >
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