<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Relations\Pivot;

class giaban extends Pivot
{
    protected $table="giaban";
    protected $fillable = 
    [
        'giaban',
        'giamgia',
        'tinhtrang', 
    ];
    
}
