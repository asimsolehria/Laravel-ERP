<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StudentAssign extends Model
{
    public function classes()
    {
         return $this->belongsTo(StudentClass::class, 'class_id', 'id');
    }

    public function subjects()
    {
         return $this->belongsTo(StudentSubject::class, 'subject_id', 'id');
    }
}
