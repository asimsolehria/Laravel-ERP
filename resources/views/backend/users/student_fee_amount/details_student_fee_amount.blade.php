@extends('admin.admin_master')
@section('admin')

  <!-- Main content -->
  <section class="content">
    <div class="row">

    <div class="col-12">

     <div class="box">
      <div class="box-header with-border">
        <h3 class="box-title">Fee Amount Details</h3>
          <a href="{{ route('student.fee.amount.add') }}" style="float: right;" class="btn btn-rounded btn-success mb-5">Add Fee Amount</a>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
        <div class="table-responsive">
          <table id="example1" class="table table-bordered table-striped">
            <h3 class="box-title">{{ $allData[0]->fee_category->name }}</h3>
          <thead>
            <tr>
              <th width="5%">S.No</th>
              <th>Class</th>
              <th>Fee Amount</th>
            </tr>
          </thead>
          <tbody>

        @foreach ($allData as $key => $user )

            <tr>
              <td>{{ $key+1 }}</td>
              <td>{{ $user->classes->name }}</td>
              <td>{{ $user->amount }}</td>
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