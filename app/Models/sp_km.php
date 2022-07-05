<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Relations\Pivot;

class sp_km extends Pivot
{
    protected $table="sp_km";
    protected $primaryKey="id";
    protected $fillable = 
    [
        'mota',
        'phantram',
        'loaikm', 
        
    ];
    public function khachhangs(){
        return $this->belongsToMany(khachhang::class,'voucher','id','kh_ma')->withPivot('soluong');
    }
    
}
