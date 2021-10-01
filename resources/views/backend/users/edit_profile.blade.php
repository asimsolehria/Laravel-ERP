@extends('admin.admin_master')
@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<section class="content">

    <!-- Basic Forms -->
     <div class="box">
       <div class="box-header with-border">
         <h4 class="box-title">Edit Profile</h4>
       </div>
       <!-- /.box-header -->
       <div class="box-body">
         <div class="row">
           <div class="col">
<form method="POST" action="{{ route('profile.update',$data->id) }}" enctype="multipart/form-data">
                @csrf
                 <div class="row">
                    <div class="col-6">						
                        <div class="form-group">
                            <h5>Name <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <input type="text" name="name" value="{{ $data->name }}" class="form-control" >
                            </div>
                        </div>
                    </div>
                       
                       <div class="col-6">						
                        <div class="form-group">
                            <h5>Gender <span class="text-danger">*</span></h5>
                            <div class="controls">
                                <select name="gender" id="select" required="" class="form-control">
                                    <option value="Male" {{ $data->gender=='Male' ? "selected": "" }}>Male</option>
                                    <option value="Female"  {{ $data->gender=='Female' ? "selected": "" }}>Female</option>
                                </select>
                            <div class="help-block"></div></div>
                        </div>
                        </div>
                   </div>


                   <div class="row">
                        
                        <div class="col-6">						
                            <div class="form-group">
                                <h5>Email <span class="text-danger">*</span></h5>
                                <div class="controls">
                                    <input type="email" value="{{ $data->email }}" name="email" class="form-control" required="" >
                                </div>
                            </div>
                        </div>

                        <div class="col-6">						
                            <div class="form-group">
                                <h5>Mobile No <span class="text-danger">*</span></h5>
                                <div class="controls">
                                    <input type="text" value="{{ $data->mobile }}" name="mobile" class="form-control" >
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        
                        <div class="col-6">						
                            <div class="form-group">
                                <h5>Address <span class="text-danger">*</span></h5>
                                <div class="controls">
                                    <input type="text" value="{{ $data->address }}" name="address" class="form-control" >
                                </div>
                            </div>
                        </div>

                        <div class="col-6">						
                            <div class="form-group">
                                <h5>Image <span class="text-danger">*</span></h5>
                                <div class="controls">
                                    <input type="file" name="image" class="form-control" id="image" >
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="controls">
                                    <img src="{{ (!empty($data->image))?url('upload/user_images/'.$data->image):url('upload/no_image.jpg') }}" id="showImage" style="width:100px; border:2px solid white" >
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