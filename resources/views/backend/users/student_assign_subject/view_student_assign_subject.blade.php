@extends('admin.admin_master')
@section('admin')

  <!-- Main content -->
  <section class="content">
    <div class="row">

    <div class="col-12">

     <div class="box">
      <div class="box-header with-border">
        <h3 class="box-title">Assign Sujects</h3>
          <a href="{{ route('student.assign.subject.add') }}" style="float: right;" class="btn btn-rounded btn-success mb-5">Assign Subject</a>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
        <div class="table-responsive">
          <table id="example1" class="table table-bordered table-striped">
          <thead>
            <tr>
              <th width="5%">S.No</th>
              <th>Class Name</th>
              <th width="25%">Action</th>
            </tr>
          </thead>
          <tbody>

        @foreach ($allData as $key => $user )
            
          

            <tr>
              <td>{{ $key+1 }}</td>
              <td>{{ $user->classes->name }}</td>
              <td>
                  <a href="{{ route('student.assign.subject.edit',$user->class_id) }}" class="btn btn-info">Edit</a>
                  <a href="{{ route('student.assign.subject.details',$user->class_id) }}" class="btn btn-primary">Details</a>
              </td>
            </tr>
        @endforeach
          </tbody>
          </table>
        </div>
      </div>
      <!-- /.box-body -->
      </div>
      <!-- /.box -->


      <!-- /.box -->          
    </div>
    <!-- /.col -->
    </div>
    <!-- /.row -->
  </section>
  <!-- /.content -->

@endsection