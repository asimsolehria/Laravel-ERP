<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StudentFeeAmount extends Model
{
    public function fee_category()
    {
         return $this->belongsTo(StudentFee::class, 'category_id', 'id');
    }

    public function classes()
    {
         return $this->belongsTo(StudentClass::class, 'class_id', 'id');
    }
}
