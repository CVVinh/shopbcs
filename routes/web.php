<?php

use App\Models\hoadon;
use App\Models\Sanpham;
use App\Models\khachhang;
use App\Models\khuyenmai;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\sanpham\SanphamController;

use App\Http\Controllers\XacThuc\TaiKhoanController;
use App\Http\Controllers\danhmucdulieu\NSXController;
use App\Http\Controllers\sanpham\ChiTietSPController;
use App\Http\Controllers\XacThuc\XacThucFBGController;
use App\Http\Controllers\caidat\ThongTinShopController;
use App\Http\Controllers\danhmucdulieu\DonViController;
use App\Http\Controllers\KhachHang\KhachHangController;

use App\Http\Controllers\XacThuc\QuenMatKhauController;
use App\Http\Controllers\danhmucdulieu\LoaiSPController;
use App\Http\Controllers\danhmucdulieu\DanhMucSPController;
use App\Http\Controllers\danhmucdulieu\VanChuyenController;
use App\Http\Controllers\danhmucdulieu\PhuongThucTTController;

// Route::GET('lienket',function(){
//     $sanpham=sanpham::find(14);
//     foreach ($sanpham->khuyenmais as $khuyenmai){
//         echo $khuyenmai->pivot->phantram;
//     }
// });

// Route::GET('lienket',function(){
//     $khuyenmai=khuyenmai::find(1);
//     foreach ($khuyenmai->sanphams as $sanpham){
//         echo $sanpham->pivot->phantram;
//     }
// });

// Route::GET('lienket',function(){
//     $khachhang=khachhang::find(1);
//     foreach ($khachhang->sp_kms as $sp_km){
//         echo $sp_km->phantram;
//     }
// });

// Route::GET('lienket',function(){
//     $hoadon=hoadon::find(2);
//     echo $hoadon->voucher->sp_km->phantram;
// });

// dang nhap khach hang
Route::get('/', [TaiKhoanController::class, 'trangChu'])->name('trangChu');
Route::get('dangNhap', [TaiKhoanController::class, 'dangNhap'])->name(
    'dangNhap.get'
);
Route::post('dangNhap', [TaiKhoanController::class, 'dangNhapPost'])->name(
    'dangNhap.post'
);
Route::get('dangKy', [TaiKhoanController::class, 'dangKy'])->name('dangKy.get');
Route::post('dangKy', [TaiKhoanController::class, 'dangKyPost'])->name(
    'dangKy.post'
);
Route::get('dangXuat', [TaiKhoanController::class, 'dangXuat'])->name(
    'dangXuat'
);

// dang nhap bang email/facebook
Route::get('/auth/{provider}', [
    XacThucFBGController::class,
    'dieuHuongDenNCC',
]);
Route::get('/auth/{provide}/callback', [
    XacThucFBGController::class,
    'xulyCacLoaiDangNhap',
]);

// kich hoat khach hang
Route::get('nguoiDung/kichHoat/{token}', [
    TaiKhoanController::class,
    'kichHoatKhachHang',
])->name('nguoiDung.kichHoat');

Route::get('quenMatKhau', [QuenMatKhauController::class, 'quenMatKhau'])->name(
    'quenMatKhau.get'
);
Route::post('quenMatKhau', [
    QuenMatKhauController::class,
    'quenMatKhauPost',
])->name('quenMatKhau.post');
Route::get('datLaiMatKhau/{token}', [
    QuenMatKhauController::class,
    'datLaiMatKhau',
])->name('datLaiMatKhau.get');
Route::post('datLaiMatKhau', [
    QuenMatKhauController::class,
    'datLaiMatKhauPost',
])->name('datLaiMatKhau.post');
Route::post('datLaiMatKhauBangDienThoai', [
    QuenMatKhauController::class,
    'datLaiMatKhauBangDienThoai',
])->name('datLaiMatKhauBangDienThoai.post');

// xu ly khach hang
Route::prefix('khachhang')->namespace('KhachHang')->name('khachhang.')->group(function () {
    Route::get('/hoSo', [KhachHangController::class, 'hoSo'])->name('hoSo');
    Route::get('/capNhatHoSo', [KhachHangController::class, 'capNhatHoSo'])->name('capNhatHoSo');
    Route::GET('/chitietsp/{id}', [KhachHangController::class, 'chiTietSP'])->name('chitietsp');
    Route::GET('/xemToanBoSP/{idsp}', [KhachHangController::class, 'xemToanBoSP'])->name('xemToanBoSP');
    Route::POST('/xemToanBoSP', [KhachHangController::class, 'timKiemSP'])->name('timKiemSP');
    Route::GET('donHang', [KhachHangController::class, 'donHang'])->name('donHang');
        Route::GET('gioHang', [KhachHangController::class, 'gioHang'])->name(
            'gioHang'
        );
    });

// xu ly admin
Route::prefix('admin')->namespace('Admin')->name('admin.')->group(function () {
        // Route::get('/',[TaiKhoanController::class, 'trangChuQuanLy'])->name('trangChuQuanLy');

    Route::get('/', function () {
        return view('admin.index');
    });
    Route::prefix('sanpham')->namespace('Sanpham')->name('sanpham.')->group(function () {
        Route::GET('hienthi', [SanphamController::class, 'index'])->name('hienthi');
        Route::GET('them', [SanphamController::class, 'create'])->name('them');
        Route::GET('sua/{id}', [SanphamController::class, 'edit'])->name('sua');
        Route::GET('xoa/{id}', [SanphamController::class, 'destroy'])->name('xoa');
        Route::POST('them', [SanphamController::class, 'store'])->name('them');
        Route::POST('sua/{id}', [SanphamController::class, 'update'])->name('sua');

        Route::get('capnhatgia', [SanphamController::class,'updateprice'])->name('capnhatgia');
        Route::GET('khuyenmai', [SanphamController::class, 'khuyenmai'])->name('khuyenmai');
        Route::GET('sale', [SanphamController::class, 'sale'])->name('sale');


    }); 
    Route::prefix('danhmucdulieu')->namespace('Danhmucdulieu')->name('danhmucdulieu.')->group(function (){
        Route::prefix('danhmucsp')->namespace('Danhmucsp')->name('danhmucsp.')->group(function (){
            Route::GET('hienthi',[DanhMucSPController::class,'index'])->name('hienthi');
            Route::POST('them',[DanhMucSPController::class,'store'])->name('them');
            Route::GET('xoa/{id}',[DanhMucSPController::class,'destroy'])->name('xoa');
        });
        Route::prefix('loaisanpham')->namespace('Loaisanpham')->name('loaisanpham.')->group(function (){
            Route::GET('hienthi',[LoaiSPController::class,'index'])->name('hienthi');
            Route::POST('them',[LoaiSPController::class,'store'])->name('them');
            Route::GET('xoa/{id}',[LoaiSPController::class,'destroy'])->name('xoa');
        });
        Route::prefix('donvi')->namespace('Donvi')->name('donvi.')->group(function (){
            Route::GET('hienthi',[DonViController::class,'index'])->name('hienthi');
            Route::POST('them',[DonViController::class,'store'])->name('them');
            Route::GET('xoa/{id}',[DonViController::class,'destroy'])->name('xoa');
        });
        Route::prefix('nhasanxuat')->namespace('Nhasanxuat')->name('nhasanxuat.')->group(function (){
            Route::GET('hienthi',[NSXController::class,'index'])->name('hienthi');
            Route::POST('them',[NSXController::class,'store'])->name('them');
            Route::GET('xoa/{id}',[NSXController::class,'destroy'])->name('xoa');
        });
        Route::prefix('vanchuyen')->namespace('Vanchuyen')->name('vanchuyen.')->group(function (){
            Route::GET('hienthi',[VanChuyenController::class,'index'])->name('hienthi');
            Route::POST('them',[VanChuyenController::class,'store'])->name('them');
            Route::GET('xoa/{id}',[VanChuyenController::class,'destroy'])->name('xoa');
        });
        Route::prefix('phuongthucthanhtoan')->namespace('Phuongthucthanhtoan')->name('phuongthucthanhtoan.')->group(function (){
            Route::GET('hienthi',[PhuongThucTTController::class,'index'])->name('hienthi');
            Route::POST('them',[PhuongThucTTController::class,'store'])->name('them');
            Route::GET('xoa/{id}',[PhuongThucTTController::class,'destroy'])->name('xoa');
        });
    });
    Route::prefix('caidat')->namespace('Caidat')->name('caidat.')->group(function () {
        Route::prefix('bangqc')->namespace('Bangqc')->name('bangqc.')->group(function () {
            Route::GET('hienthi', function () {return view('admin.caidat.bangqc.hienthi');})->name('hienthi');
            });
        Route::prefix('thongtinshop')->namespace('Thongtinshop')->name('thongtinshop.')->group(function () {
            Route::GET('sua',[ThongTinShopController::class,'edit'])->name('sua');
            Route::POST('sua',[ThongTinShopController::class,'update'])->name('sua');
        });
    });
    });
       

