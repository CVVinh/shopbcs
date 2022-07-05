@extends('boCuc')
@section('lienKet-CSS-DauTrang')
<link rel="stylesheet" href="{{ asset('css/chiTietSP.css') }}" />
@endsection

@section('lienKet-JS-DauTrang')
<script src="{{ asset('') }}"></script>
@endsection

@section('noiDung')
<section class="pb-3 mb-3 " style="margin-top: 120px;">
    <div class="container">
        <nav style="--bs-breadcrumb-divider: '>'; margin:20px 0 20px 0" aria-label="breadcrumb">
            <ol class="breadcrumb">

                <li class="breadcrumb-item"><a class="nav__link" href="/">Trang Chủ</a></li>
                @if(isset($sPThuongHieus))
                <li class="breadcrumb-item active" aria-current="page">Thương Hiệu</li>
                @elseif(isset($flashSale))
                <li class="breadcrumb-item active" aria-current="page">{{$flashSale}}</li>
                @elseif(isset($tieuDeSanPhamDanhMuc))
                <li class="breadcrumb-item active" aria-current="page">{{$tieuDeSanPhamDanhMuc}}</li>
                @elseif(isset($loaiSPThuongHieu))
                @php
                $danhMucSP = App\Models\danhmucsp::where('dm_ma',$loaiSPThuongHieu->dm_ma)->first();
                @endphp
                <li class="breadcrumb-item"><a class="nav__link" href="/khachhang/xemToanBoSP/danhMuc{{$danhMucSP->dm_ma}}">{{$danhMucSP->dm_ten}}</a></li>
                <li class="breadcrumb-item active" aria-current="page">{{$loaiSPThuongHieu->lsp_ten}}</li>
                @elseif(isset($idsp))
                <li class="breadcrumb-item active" aria-current="page">{{$idsp}} - PlayBoy.vn</li>
                @else
                <li class="breadcrumb-item active" aria-current="page">Tìm Kiếm</li>
                @endif
            </ol>
        </nav>
        <div class="flash-container pb-3">
            <div class="d-flex align-items-center justify-content-between bg-flash">
                <div class="flash-title p-3 d-flex align-items-center justify-content-between gap-4">
                    @if(isset($sPThuongHieus))
                    @elseif(isset($flashSale))
                    <h3>{{$flashSale}}</h3>
                    @elseif(isset($loaiSPThuongHieu))
                    <h3>{{$loaiSPThuongHieu->lsp_ten}}</h3>
                    @elseif(isset($tieuDeSanPhamDanhMuc))
                    <h3>{{$tieuDeSanPhamDanhMuc}}</h3>
                    @elseif(isset($idsp))
                    <h3>{{$idsp}}</h3>
                    @else
                    <h3>{{$tieuDe}}</h3>
                    @endif
                </div>
                <a href="#" class="text-reset text-decoration-none extend pr-2">
                    <span class="extend-md">Sắp Xếp</span>
                    <span class="extend_small">Sắp Xếp</span>
                    <i class="fa fa-angle-right" aria-hidden="true"></i>
                </a>
            </div>

            <ul class="product-list1">
                @if(isset($sPThuongHieus))
                @foreach($sPThuongHieus as $sPThuongHieu)
                <li class="product-item">
                    <a href="/khachhang/xemToanBoSP/{{$sPThuongHieu->lsp_thuonghieu}}"
                        class="text-decoration-none text-reset">
                        <img src="{{asset('uploads/'.$sPThuongHieu->lsp_hinh)}}" alt="Ảnh Mẫu" />
                    </a>
                </li>
                @endforeach
                @else
                @foreach($xemToanBoSPThuongHieus as $sanpham)
                <li class="product-item">
                    <a href="/khachhang/chitietsp/{{$sanpham->sp_ma}}" class="text-decoration-none text-reset">
                        <img src="{{asset('uploads/'.$sanpham->sp_hinh)}}" alt="Ảnh Mẫu" />
                        <h5 class="text-break text_extend">
                            {{$sanpham->sp_ten.' - '.$sanpham->loaisp->lsp_ten.' - '.$sanpham->loaisp->lsp_thuonghieu.' - '.$sanpham->donvis[0]->dv_ten.' - '.$sanpham->sp_ma}}
                        </h5>
                        <p>
                            {{number_format($sanpham->donvis[0]->pivot->giaban - ($sanpham->donvis[0]->pivot->giaban*$sanpham->donvis[0]->pivot->giamgia/100)) }}đ
                            <span class="badge bg-danger">- {{$sanpham->donvis[0]->pivot->giamgia}}%</span>
                        </p>
                        @php
                        $cthd=App\Models\cthoadon::where('sp_ma',$sanpham->sp_ma)->get()->sum('soluong');
                        @endphp
                        <span
                            class="text-decoration-line-through">{{ number_format($sanpham->donvis[0]->pivot->giaban)}}
                            đ</span>
                        <div class="d-flex align-items-center gap-2 product-item__review">
                            <div class="review-stars">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                            </div>
                            <span>|</span>
                            <span>Đã bán {{$cthd}}</span>
                        </div>
                    </a>
                </li>
                @endforeach
                @endif
            </ul>
        </div>

        <br/><br/>
        <!-- san pham de xuat -->
        <div class="flash-container pb-3">
            <div class="d-flex align-items-center justify-content-between bg-flash">
                <div class="flash-title p-3 d-flex align-items-center justify-content-between gap-4">
                   <h3>Đề xuất cho bạn</h3>
                </div>
                <a href="/khachhang/xemToanBoSP/{{$deXuatChoBans[0]->loaisp->lsp_ma}}"
                    class="text-reset text-decoration-none extend pr-2 text-danger">
                    <strong class="text-danger">
                        <span class=" extend-md">Xem toàn bộ sản phẩm</span>
                        <span class="extend_small">Xem thêm</span>
                        <i class="fa fa-angle-right" aria-hidden="true"></i>
                    </strong>
                </a>
            </div>

            <ul class="product-list">
                @foreach($deXuatChoBans as $sanpham)
                <li class="product-item">
                    <a href="/khachhang/chitietsp/{{$sanpham->sp_ma}}" class="text-decoration-none text-reset">
                        <img src="{{asset('uploads/'.$sanpham->sp_hinh)}}" alt="Ảnh Mẫu" />
                        <h5 class="text-break text_extend">
                            {{$sanpham->sp_ten.' - '.$sanpham->loaisp->lsp_ten.' - '.$sanpham->loaisp->lsp_thuonghieu.' - '.$sanpham->donvis[0]->dv_ten.' - '.$sanpham->sp_ma}}
                        </h5>
                        <p>
                            {{number_format($sanpham->donvis[0]->pivot->giaban - ($sanpham->donvis[0]->pivot->giaban*$sanpham->donvis[0]->pivot->giamgia/100)) }}đ
                            <span class="badge bg-danger">- {{$sanpham->donvis[0]->pivot->giamgia}}%</span>
                        </p>
                        @php
                        $cthd=App\Models\cthoadon::where('sp_ma',$sanpham->sp_ma)->get()->sum('soluong');
                        @endphp
                        <span
                            class="text-decoration-line-through">{{ number_format($sanpham->donvis[0]->pivot->giaban)}}
                            đ</span>
                        <div class="d-flex align-items-center gap-2 product-item__review">
                            <div class="review-stars">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                            </div>
                            <span>|</span>
                            <span>Đã bán {{$cthd}}</span>
                        </div>
                    </a>
                </li>
                @endforeach
            </ul>
        </div>

    </div>
</section>
@endsection

@section('lienKet-JS-CuoiTrang')
<script src="{{ asset('') }}"></script>

@endsection