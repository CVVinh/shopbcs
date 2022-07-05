<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Relations\Pivot;

class voucher extends Pivot
{
    protected $table="voucher";
    protected $primaryKey="id";
    protected $fillable = 
    [
        'soluong',
    ];
    public function hoadon(){
        return $this->belongsTo(hoadon::class,'id');
    }
    public function khachhang(){
        return $this->belongsTo(khachhang::class,'id');
    }
    public function sp_km(){
        return $this->belongsTo(sp_km::class,'id');
    }
}
