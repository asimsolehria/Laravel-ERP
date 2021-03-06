@extends('admin.admin_master')
@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<section class="content">

    <!-- Basic Forms -->
     <div class="box">
       <div class="box-header with-border">
         <h4 class="box-title">Change Password</h4>
       </div>
       <!-- /.box-header -->
       <div class="box-body">
         <div class="row">
           <div class="col">
<form method="POST" action="{{ route('profile.change.pwd') }}">
                @csrf
                 <div class="row">
                    <div class="col-12">						
                        <div class="form-group">
                            <h5>Current Password <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <input type="password" name="oldpassword" id="current_password" class="form-control" required="" >
                                @error('oldpassword')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                    </div>
                 </div>

                 <div class="row">
                    <div class="col-12">						
                        <div class="form-group">
                            <h5>New Password <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <input type="password" name="password" id="password" class="form-control" required="" >
                                @error('password')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                    </div>
                 </div>

                 <div class="row">
                    <div class="col-12">						
                        <div class="form-group">
                            <h5>Conform Password <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <input type="password" name="password_conformation" id="password_conformation" class="form-control" required="" >
                                @error('password_conformation')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
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


   <script type="text/javascript">
        $(document).ready(function(){
            $('#image').change(function(e){
                var reader = new FileReader();
                reader.onload = function(e){
                    $('#showImage').attr('src',e.target.result);

            }
                reader.readAsDataURL(e.target.files['0']);
            });
        });
   </script>

@endsection