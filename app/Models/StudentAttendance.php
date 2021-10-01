<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StudentAttendance extends Model
{	
	public function classes()
    {
         return $this->belongsTo(StudentClass::class, 'class_id', 'id');
    }
	
	public function student()
    {
         return $this->belongsTo(AssignStudent::class, 'student_id', 'id');
    }
	
	public function years()
    {
         return $this->belongsTo(StudentYear::class, 'year_id', 'id');
    }
}
