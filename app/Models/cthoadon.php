<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Relations\Pivot;

class cthoadon extends Pivot
{
    protected $table="cthoadon";
    protected $fillable = 
    [
        'soluong',
        'giaban',
        'thanhtien',
    ];
}
