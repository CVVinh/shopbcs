@extends('boCuc')
@section('lienKet-CSS-DauTrang')
<link rel="stylesheet" href="{{ asset('css/chiTietSP.css') }}" />
@endsection

@section('lienKet-JS-DauTrang')
<script src=''></script>
@endsection

@section('noiDung')
<div class="container chiTietSP-Top">
    <nav style="--bs-breadcrumb-divider: '>'; margin:20px 0 20px 0" aria-label="breadcrumb">
        @php
        if($loaiSP->lsp_thuonghieu!=='Khác')
        if($dsGiaBan[0][0]!=='Không')
        $tenSPChiTiet = $sanPham->sp_ten.' - '.$loaiSP->lsp_ten.' - '.$loaiSP->lsp_thuonghieu.' - '.$dsGiaBan[0][0].' -
        '.$sanPham->sp_ma;
        else
        $tenSPChiTiet = $sanPham->sp_ten.' - '.$loaiSP->lsp_ten.' - '.$loaiSP->lsp_thuonghieu.' - '.$sanPham->sp_ma;
        else if($dsGiaBan[0][0]!=='Không')
        $tenSPChiTiet = $sanPham->sp_ten.' - '.$loaiSP->lsp_ten.' - '.$dsGiaBan[0][0].' - '.$sanPham->sp_ma;
        else $tenSPChiTiet = $sanPham->sp_ten.' - '.$loaiSP->lsp_ten.' - '.$sanPham->sp_ma;
        @endphp
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a class="nav__link" href="/">Trang Chủ</a></li>
            <li class="breadcrumb-item"><a class="nav__link"
                    href="/khachhang/xemToanBoSP/{{$loaiSP->lsp_ma}}">{{$loaiSP->lsp_ten}}</a></li>
            <li class="breadcrumb-item active" aria-current="page">{{$tenSPChiTiet}}</li>
        </ol>
    </nav>
    <div class="row g-0 mt-md-3 bg-white">

        <div class="col-lg-4 col-12 boder-end">
            <div class="gallery p-lg-3 position-relative">
                <a href="">
                    <img class="gallery__image-feature" src="{{asset('uploads/'.$sanPham->sp_hinh)}}" alt="Ảnh Mẫu">
                </a>
            </div>
        </div>

        <div class="col-lg-5 col-12 infor">
            <h3 id="tenSP">{{$tenSPChiTiet}}</h3>
            <div class="review">
                <div class="icon">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    @php
                    $kiemTraTonKho = App\Models\cthoadon::where('sp_ma',$sanPham->sp_ma)->get()->sum('soluong');
                    @endphp
                    <a href=""> (1 đánh giá) </a> <span> Đã bán {{$kiemTraTonKho}} </span>
                </div>
                <div class="price">
                    <h3 id="giaBanSP">{{number_format($dsGiaBan[0][3])}}đ</h3>
                    <p id="giaGocSP" class=" price__discount text-size">{{ number_format($dsGiaBan[0][1]) }}đ </p>
                    <p id="giamGiaSP" class="text-size">-{{$dsGiaBan[0][2]}}%</p>
                </div>
                <div class="trademark">
                    <a href=""><img src="{{asset('uploads/banner1.png')}}" alt=""></a>
                    <p class="text-size"> Thương hiệu: <a class="shell" href="">{{$loaiSP->lsp_thuonghieu}}</a></p>
                </div>

                @php
                $sPKhuyenMais= App\Models\khuyenmai::where('sp_ma',$sanPham->sp_ma)->where('km_tinhtrang',1)->first();
                @endphp
                @if($sPKhuyenMais)
                <div class="promotion justify-content-between">
                    <div class="promotion__icon">
                        <img src="{{asset('uploads/gift.svg')}}" alt="">
                        <span class="text-size">Khuyến Mãi</span>
                    </div>
                    <div class="icon-dropdown">
                        <i class="fa fa-caret-down" aria-hidden="true"></i>
                    </div>
                </div>

                <div class="accordion-body border accordion-show">
                    @foreach($sPKhuyenMais->sanphams as $sPKhuyenMai)
                    <div class="buyxgety_item row align-items-center gx-3 mx-0">
                        <div class="col-auto">
                            <input type="radio" name="radio">
                        </div>
                        <div class="col-auto border-end border-start">
                            <div class="ratio ratio-1x1">
                                <a class="text-decoration-none" href="/khachhang/chitietsp/{{$sPKhuyenMai->sp_ma}}">
                                    <img class="img" src="{{asset('uploads/'.$sPKhuyenMai->sp_hinh)}}" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="col small ">
                            @if($sPKhuyenMai->donvis[0]->dv_ten!='Không')
                            @if($sPKhuyenMai->loaisp->lsp_thuonghieu!='Khác')
                            {{$sPKhuyenMai->pivot->mota}} <strong class="text-danger">
                                {{$sPKhuyenMai->pivot->phantram}}% </strong>
                            {{$sPKhuyenMai->sp_ten.' - '.$sPKhuyenMai->loaisp->lsp_ten.' - '.$sPKhuyenMai->loaisp->lsp_thuonghieu.' - '.$sPKhuyenMai->donvis[0]->dv_ten.' - '.$sPKhuyenMai->sp_ma}}
                            @else
                            {{$sPKhuyenMai->pivot->mota}} <strong class="text-danger">
                                {{$sPKhuyenMai->pivot->phantram}}% </strong>
                            {{$sPKhuyenMai->sp_ten.' - '.$sPKhuyenMai->loaisp->lsp_ten.' - '.$sPKhuyenMai->donvis[0]->dv_ten.' - '.$sPKhuyenMai->sp_ma}}
                            @endif
                            @else
                            @if($sPKhuyenMai->loaisp->lsp_thuonghieu!='Khác')
                            {{$sPKhuyenMai->pivot->mota}} <strong class="text-danger">
                                {{$sPKhuyenMai->pivot->phantram}}% </strong>
                            {{$sPKhuyenMai->sp_ten.' - '.$sPKhuyenMai->loaisp->lsp_ten.' - '.$sPKhuyenMai->loaisp->lsp_thuonghieu.' - '.$sPKhuyenMai->sp_ma}}
                            @else
                            {{$sPKhuyenMai->pivot->mota}} <strong class="text-danger">
                                {{$sPKhuyenMai->pivot->phantram}}% </strong>
                            {{$sPKhuyenMai->sp_ten.' - '.$sPKhuyenMai->loaisp->lsp_ten.' - '.$sPKhuyenMai->sp_ma}}
                            @endif
                            @endif
                        </div>
                    </div>
                    @endforeach
                </div>
                @endif

                @if(strcmp($dsGiaBan[0][0],"Không")!=0)
                <h4 class="title">Tiêu đề:</h4>
                <div class="button_box">
                    @php
                    $idBtn = 1;
                    @endphp
                    @foreach($dsGiaBan as $giaBan)
                    <button class="donVi" id="donVi{{$idBtn}}">{{$giaBan[0]}}</button>
                    <script>
                    $(document).ready(function() {
                        $('#donVi{{$idBtn}}').click(function() {
                            $('#giaGocSP').text('{{ number_format($giaBan[1]) }}đ');
                            $('#giamGiaSP').text('-{{ $giaBan[2] }}%');
                            $('#giaBanSP').text('{{ number_format($giaBan[3]) }}đ');
                        });
                    });
                    </script>
                    @php
                    $idBtn++;
                    @endphp

                    @endforeach
                </div>
                @endif

                <div class="amount">
                    <div id="chonSLSanPhamMua">
                        <button id="btnGiamSL" class="text-size" disabled> - </button>
                        <button id="btnHienSL" class="text-size button_amount">1</button>
                        <button id="btnTangSL" class="text-size"> + </button>
                    </div>
                    @if($kiemTraTonKho < $sanPham->sp_soluong)
                        <p class="text-size">Còn Hàng</p>
                        <script>
                        $(document).ready(function() {
                            $("#chonSLSanPhamMua *").prop('disabled', false);
                        });
                        </script>
                        @else
                        <p class="text-size">Hết Hàng</p>
                        <script>
                        $(document).ready(function() {
                            $("#chonSLSanPhamMua *").prop('disabled', true);
                        });
                        </script>
                        @endif
                </div>
                <script>
                $soLuongSPMua = 1;
                $(document).ready(function() {
                    $('#btnGiamSL').prop('disabled', true);
                    $('#btnGiamSL').click(function() {
                        $soLuongSPMua = $soLuongSPMua - 1;
                        $('#btnHienSL').text($soLuongSPMua);
                        if ($('#btnHienSL').text() <= '1') {
                            $('#btnGiamSL').prop('disabled', true);
                        }
                    });
                    $('#btnTangSL').click(function() {
                        $soLuongSPMua = $soLuongSPMua + 1;
                        $('#btnHienSL').text($soLuongSPMua);
                        if ($('#btnHienSL').text() > '1') {
                            $('#btnGiamSL').prop('disabled', false);
                        }
                    });
                });
                </script>
                <div class="button_buy">
                    <button class="btn btn--add">Thêm vào Giỏ Hàng</button>
                    <button class="btn btn-buy--now">Mua Ngay</button>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-12 boder-end bg type">
            <div class="service">
                <h1 class="text-size">Dịch vụ</h1>
                <p class="text-size select_location">Tùy chọn giao hàng</p>
                <div class="row mt-3 gx-1">
                    <div class="location">
                        <div class="location_img">
                            <img src="{{asset('uploads/dv9.png')}}" alt="">
                            <p class="text-size ">Chọn khu vực của bạn</p>
                        </div>
                        <div class="change_location">
                            <a class="text-size link-color text-decoration-none" href="">Thay đổi</a>
                        </div>
                    </div>
                </div>
                <div class="row mt-3 gx-1 ">
                    <div class="col-1">
                        <img src="{{asset('uploads/dv10.png')}}" alt="">
                    </div>
                    <div class="col">
                        <a href="" class="text-size text-decoration-none link-color">Hệ thống 48 cửa hàng toàn quốc</a>
                        <small class="d-block">(Mở cửa từ 9h00 - 24h00)</small>
                    </div>
                </div>
                <div class="row mt-6 gx-1 ">
                    <div class="col-1">
                        <img src="{{asset('uploads/dv2.png')}}" alt="">
                    </div>
                    <div class="col">
                        <p class="text-size">GH tiêu chuẩn</p>
                        <small class="d-block text-small">Nhận hàng từ 1 - 2 ngày</small>
                    </div>
                </div>
                <div class="row mt-6 gx-1 ">
                    <div class="col-1">
                        <img src="{{asset('uploads/dv1.png')}}" alt="">
                    </div>
                    <div class="col">
                        <p class="text-size">GH hỏa tốc</p>
                        <small class="d-block text-small">Nhận ngay trong ngày</small>
                    </div>
                </div>
                <div class="row mt-6 gx-1 ">
                    <div class="col-1">
                        <img src="{{asset('uploads/dv3.png')}}" alt="">
                    </div>
                    <div class="col">
                        <p class="text-size">Thanh toán khi nhận hàng (Được đồng kiểm trước khi nhận hàng)</p>

                    </div>
                </div>

            </div>
            <hr>
            <div class="insurance">
                <p class="text-size select_location">Đổi trả & bảo hàng</p>
                <div class="row mt-6 gx-1 mg ">
                    <div class="col-1">
                        <img src="{{asset('uploads/dv4.png')}}" alt="">
                    </div>
                    <div class="col">
                        <p class="text-size"> 7 ngày trả hàng cho nhà bán hàng </p>

                        <small class="d-block "> Không được trả hàng với lí do "không vừa ý"</small>

                    </div>
                </div>
                <div class="row mt-6 gx-1 ">
                    <div class="col-1">
                        <img src="{{asset('uploads/dv5.png')}}" alt="">
                    </div>
                    <div class="col">
                        <p class="text-size">Áp dụng bảo hành 1 đổi 1</p>
                        <small class="d-block text-small"> Hàng chưa sử dụng, lỗi do nhà sản xuất</small>

                    </div>
                </div>
            </div>
            <hr>
            <div class="delivery">
                <p class="text-size select_location">Giao hàng kính đáo</p>
                <div class="row mt-6 gx-1 ">
                    <div class="col-1">
                        <img src="{{asset('uploads/dv6.png')}}" alt="">
                    </div>
                    <div class="col">
                        <p class="text-size">Bọc trong thùng carton</p>

                    </div>
                </div>
                <div class="row mt-6 gx-1 ">
                    <div class="col-1">
                        <img src="{{asset('uploads/dv7.png')}}" alt="">
                    </div>
                    <div class="col">
                        <p class="text-size">Không để tên sản phẩm bên ngoài</p>

                    </div>
                </div>
                <div class="row mt-6 gx-1 ">
                    <div class="col-1">
                        <img src="{{asset('uploads/dv8.png')}}" alt="">
                    </div>
                    <div class="col">
                        <p class="text-size">Nhân viên giao hàng bên thứ 3</p>

                    </div>
                </div>
            </div>
        </div>


    </div>

    <div class="row gx-0 gy-2 gy-lg-4 gx-lg-3 mt-0">
        <div class="col-12 col-lg-9">

            @if(!$sanPham->combosp->isEmpty())
            <div class="product-recommend pt-3 pt-lg-0 mb-2 mb-lg-4 bg-white__mobile">
                <div class="bg-white card-body">
                    <strong class="fs-2" style="margin-bottom:30px;display:block">
                        Mua theo bộ sản phẩm
                    </strong>
                    <div class="row row-cols-2 row-cols-md-4 row-cols-xl-5 gy-4 gx-2 buy-combo--list">

                        @php
                        $tongGiaBanSPTheoBo = 0;
                        $tongGiaGocSPTheoBo = 0;
                        @endphp

                        @foreach($sanPham->combosp as $comBoSP)
                        @php

                        $giaban = App\Models\giaban::where('sp_ma', $comBoSP->sanphamphu->sp_ma)->where('dv_ma',
                        $comBoSP->dv_ma)->where('tinhtrang','1')->first();

                        $giaBanCuaSp = $giaban->giaban - ($giaban->giaban*$giaban->giamgia/100);
                        $tongGiaBanSPTheoBo += $giaBanCuaSp;
                        $tongGiaGocSPTheoBo += $giaban->giaban;

                        $sPCoKhuyenMai=
                        App\Models\khuyenmai::where('sp_ma',$comBoSP->sanphamphu->sp_ma)->where('km_tinhtrang',1)->first();
                        @endphp

                        <div class="col recommend-item buy-combo">
                            <div class="row gx-2 align-items-center h-100">
                                <div class="col position-relative h-100">
                                    <i
                                        class="product-recommend__remove fa fa-close position-absolute top-0 end-0 bg-white shadow p-1 rounded-pill text-center icon-remove">
                                    </i>
                                    <a href="/khachhang/chitietsp/{{$comBoSP->sanphamphu->sp_ma}}"
                                        class="text-decoration-none text-reset ">
                                        <div class="shadow-item product-item card rounded-0 h-100">
                                            @if($sPCoKhuyenMai)
                                            <div class="product-gift-icon position-absolute">
                                                <img src="{{asset('uploads/gift.svg')}}" alt="Ảnh Mẫu">
                                            </div>
                                            @endif
                                            <picture class="d-block ratio ratio-1x1">
                                                <img class="lazy entered loaded product_img"
                                                    src="{{asset('uploads/'.$comBoSP->sanphamphu->sp_hinh)}}"
                                                    alt="Ảnh Mẫu">
                                            </picture>
                                            <div class=" d-block px-2 mt-2 text-decoration-none">
                                                <h3 class="text-start text_extend text-dark">
                                                    {{$comBoSP->sanphamphu->sp_ten.'-'.$comBoSP->sanphamphu->loaisp->lsp_ten.'-'.$comBoSP->sanphamphu->loaisp->lsp_thuonghieu.'-'.$comBoSP->sanphamphu->sp_ma}}
                                                </h3>
                                            </div>
                                            <div class="mb-2 px-2 row g-0 align-items-center">
                                                <span
                                                    class="text-size col-auto me-2 buy-price">{{number_format($giaBanCuaSp,0,".",".")}}đ</span>
                                                <small class="col-auto px-2 py-1 d-inline-block  rounded">
                                                    -{{$giaban->giamgia}}% </small>
                                                <del style="color: #828282" class="small col-12 d-block buy-price--old">
                                                    {{ number_format($giaban->giaban,0,".",".") }}đ
                                                </del>
                                            </div>
                                            <div class="d-flex px-2 align-items-center mb-2 product-item__review">
                                                <div
                                                    class="starbaprv-widget starbaprv-preview-badge starbaprv-preview-badge--with-link">
                                                    <div class="icon-start starbap-prev-badge">
                                                        <i class="fa fa-star "></i>
                                                        <i class="fa fa-star "></i>
                                                        <i class="fa fa-star "></i>
                                                        <i class="fa fa-star "></i>
                                                        <i class="fa fa-star "></i>
                                                        <!-- <a href="" class="starbap-star starbap--on"></a> -->
                                                        <span class=" starbap-prev-badgetext" style="font-size:10px">
                                                            | Đã bán
                                                            {{App\Models\cthoadon::where('sp_ma', $comBoSP->sanphamphu->sp_ma)->get()->sum('soluong')}}
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                    <div class="row row-cols-2 row-cols-md-4 row-cols-xl-12 gy-4 gx-2 gx-2 align-items-center h-100">
                        <div class="col recommend-item position-relative h-100 w-100">
                            <div class="d-flex justify-content-center align-items-center gap-2 mt-2 flex-column">
                                <div><strong>Giá bán:</strong> <span
                                        class="text-danger fs-3 giaBan">{{number_format($tongGiaBanSPTheoBo,0,".",".")}}<sup>đ</sup></span>
                                </div>
                                <div class="text-decoration-line-through"><strong>Tổng:</strong> <span
                                        class="tongGiaBan">{{number_format($tongGiaGocSPTheoBo,0,".",".")}}<sup>đ</sup>
                                    </span></div>
                            </div>
                            <button type="button" class="btn btn-success w-100">Thêm Vào Giỏ Hàng</button>
                        </div>
                    </div>
                </div>
            </div>
            @endif

            <div class="hrvptabs pt-3 pt-lg-0 mb-2 mb-lg-4 bg-white__mobile">

                <div class="bg-white card-body">
                    <strong class="fs-2 describe" style="margin-bottom:30px;display:block">
                        Mô tả sản phẩm
                    </strong>
                    <ul>
                        <li style="font-weight:400;text-align: justify;">
                            <strong class="text-size">Thông tin: </strong>
                            <span style="font-weight:400;" class="text-size">
                                Bao cao su Shell Love Bead - Gân nổi, kéo dài thời gian, bi tăng 1.5cm - Đây là dòng bao
                                thế hệ mới của thương hiệu Shell đình đám đến từ Hàn Quốc. Điểm nhấn là đi kèm bi
                                silicon tăng kích thước 1.5cm. Bên cạnh đó cũng không thể bỏ qua thiết kế trang bị vô số
                                gai nổi dày đặc cùng gân sóng ở phần đầu. Chị em phụ nữ sẽ phải chết mê, chết mệt với
                                cảm giác kích thích đầy ma lực. Sản phẩm còn được bổ sung tinh chất kéo dài thời gian,
                                giúp các quý ông sung sức nhiều giờ liền.</span>
                        </li>
                        <li style="font-weight:400;text-align: justify">
                            <strong class="text-size">Thành phần: </strong>
                            <span style="font-weight:400;" class="text-size">
                                100% cao su Latex cao cấp
                            </span>
                        </li>
                        <li style="font-weight:400;text-align: justify">
                            <strong class="text-size">Đặc điểm</strong>
                            <span class="text-size" style="font-weight:400;">
                                : Bi silicon 1.5cm tăng kích thước, kéo dài thời gian gấp 2 - 3 lần, gai nổi trang bị
                                dày đặc, gân sóng bao quanh phần đầu bao, thiết kế ôm sát và chống tuột.</span>
                        </li>
                        <li style="font-weight:400;text-align: justify">
                            <strong class="text-size">Cách dùng: </strong>
                            <span class="text-size" style="font-weight:400;">
                                Xé một góc trên bao bì, lấy sản phẩm ra ngoài. Dùng tay bóp đầu bao để đẩy hết khí thừa.
                                Đưa bi silicon vào trong đầu bao cao su. Tiếp đó, người dùng đặt “áo mưa” lên đầu khấc,
                                từ từ kéo xuống tận gốc dương vật. Quan hệ xong rút bao nhẹ nhàng và thắt lại để tinh
                                dịch không tràn ra ngoài. Thắt miệng bao cao su rồi đặt vào thùng rác.</span>
                        </li>
                        <li style="font-weight:400;text-align: justify">
                            <strong class="text-size">Quy cách: </strong>
                            <span class="text-size" style="font-weight:400;">
                                Hộp 5 cái bao cao su và 5 bi silicon
                            </span>
                        </li>
                        <li style="font-weight:400;text-align: justify">
                            <strong class="text-size">Thương hiệu: </strong>
                            <span class="text-size" style="font-weight:400;">
                                Shell
                            </span>
                        </li>
                        <li style="font-weight:400;text-align: justify">
                            <strong class="text-size">Bảo quản: </strong>
                            <span class="text-size" style="font-weight:400;">
                                Nơi khô ráo và thoáng mát
                            </span>
                        </li>
                        <li style="font-weight:400;text-align: justify">
                            <strong class="text-size">Hạn sử dụng: </strong>
                            <span class="text-size" style="font-weight:400;">
                                05 năm
                            </span>
                        </li>
                    </ul>

                </div>
            </div>
            <div class="product-description pt-3 pt-lg-0 mb-2 mb-lg-4 bg-white__mobile">

                <div class="bg-white card-body">
                    <strong class="fs-3 detail_infor">Thông tin chi tiết</strong>
                    <div class="toc px-3 pt-3 mb-3 rounded">

                        <div class="toc__content">
                            <h3 class="text-size">Mục lục bài viết</h3>
                            <ol class="toc-list">
                                <li class="text-size toc-list-item is-active-li">
                                    <a class=" toc-link node-name--H2  text-decoration-none text-size" href="">Giới
                                        thiệu chung về bao cao su Shell Bead</a>
                                </li>
                                <li class="text-size toc-list-item">
                                    <a class="toc-link node-name--H2  text-decoration-none text-size" href="">Ưu điểm
                                        nổi trội của bao cao su Shell Love Bead</a>
                                </li>
                                <li class="text-size toc-list-item">
                                    <a class="toc-link node-name--H2 text-decoration-none text-size" href="">Hướng dẫn
                                        sử dụng bao cao su Shell Love Bead</a>
                                    <ol class="toc-list is-collapsible is-collapsed">
                                        <li class="text-size toc-list-item">
                                            <a href="" class="toc-link node-name--H3 text-decoration-none text-size">Lưu
                                                ý khi sử dụng bao cao su Shell Love Bead</a>
                                        </li>
                                        <li class="text-size toc-list-item">
                                            <a href=""
                                                class="toc-link node-name--H3 text-decoration-none text-size">Hướng
                                                dẫn
                                                bảo quản bao cao su Shell Love Bead</a>
                                        </li>
                                    </ol>
                                </li>
                                <li class="text-size toc-list-item">
                                    <a class="toc-link node0name--H2 text-decoration-none text-size" href="">Tại sao nên
                                        mua bao cao su Shell Love Bead tại Gunshop?</a>
                                </li>
                            </ol>

                        </div>
                    </div>
                    <div class="content expend">
                        <h2 style="text-align: justidy;">
                            <strong class="letter_infor">
                                <span>
                                    Giới thiệu chung về bao cao su Shell Love Bead
                                </span>
                            </strong>
                        </h2>
                        <p style="text-align:justify;">
                            <span style="font-size:16px">
                                <strong class="text-size">Bao cao su Shell Love Bead </strong>
                                - Gân nổi, kéo dài thời gian, bi tăng 1.5cm không chỉ dừng lại ở việc giúp các cặp đôi
                                quan hệ an toàn. Sản phẩm ra đời với sứ mệnh đem tới trải nghiệm khác lạ, gia tăng khoái
                                cảm cho cả hai phái, đặc biệt là giúp nữ giới thêm phần khoái lạc, lên đỉnh dễ dàng.
                            </span>
                        </p>
                        <p style="text-align:center;">
                            <img src="./img/1_c416eac71a894ae2a6224dc162a5d672.gif" alt="" class="img_infor">

                        </p>
                        <p style="text-align:justify;">
                            <span style="font-size:16px">
                                Điều này có được nhờ thiết kế và cấu tạo sản phẩm độc đáo, có một không hai. Bạn sẽ phải
                                thích mê ngay từ lần đầu tiên sử dụng. Hãy sớm dùng thử để lấy lại uy lực cho những cú
                                “nhấp nhả” mạnh mẽ.&nbsp;
                            </span>
                        </p>
                        <h2 style="text-align: justidy;">
                            <strong class="letter_infor">
                                <span>
                                    Ưu điểm nổi trội của bao cao su Shell Love Bead&nbsp

                                </span>
                            </strong>
                        </h2>
                        <p style="text-align:justify;">
                            <span style="font-size:16px">
                                Đặc điểm nổi trội chắc chắn không thể bỏ qua chính là viên bi silicon 1.5cm kèm theo hộp
                                sản phẩm. Mục đích ra đời chính là đôn lên kích thước chiều dài dương vật, khắc phục tự
                                ti của nhiều chàng trai bấy lâu nay.&nbsp;
                            </span>
                        </p>
                        <p style="text-align:justify;">
                            <span style="font-size:16px">
                                Không những giúp chạm sâu vào “cô bé”, viên bi này còn chuyển động xoay tròn đa điểm,
                                xoáy vào thành âm đạo khiến nàng ngất ngây trong khoái cảm cực đã.
                            </span>
                        </p>
                        <p style="text-align:center;">
                            <img src="./img/2_optimized_f50b57c57c7b4feb9483b2bb699b6846.jpg" alt="" class="img_infor">

                        </p>
                        <p style="text-align:justify;">
                            <span style="font-size:16px">
                                Sản phẩm được làm từ cao su Latex cao cấp, an toàn cho người sử dụng. Mặc khác, dù có
                                thực hiện các cú nhấp sâu và mạnh đến choáng ngợp cũng không lo bị tuột ra nhờ thiết kế
                                ôm sát. Có thể nói rằng,
                            </span>
                        </p>
                        <p style="text-align:center;">
                            <img src="./img/4_optimized_01a5bf725cc249e2a477aa1f19629681.jpg" alt="" class="img_infor">

                        </p>
                        <h2 style="text-align: justidy;">
                            <strong class="letter_infor">
                                <span>
                                    Hướng dẫn sử dụng bao cao su Shell Love Bead&nbsp

                                </span>
                            </strong>
                        </h2>
                        <ul>
                            <li>
                                <p style="text-align: justify">
                                    <span class="text-size">+ Đảm bảo dương vật đã cương cứng trước khi sử
                                        dụng.&nbsp;</span>
                                </p>
                            </li>
                            <li>
                                <p style="text-align: justify">
                                    <span class="text-size"> + Xé một phần nhỏ góc trên bao bì vá lấy sản phẩm
                                        ra.&nbsp;</span>
                                </p>
                            </li>
                            <li>
                                <p style="text-align: justify">
                                    <span class="text-size"> + Đẩy hết khí thừa ở trên trong bao cao su ra
                                        ngoài.&nbsp;</span>
                                </p>
                            </li>
                            <li>
                                <p style="text-align: justify">
                                    <span class="text-size"> + Đưa bi silicon xuống phần đáy bao.&nbsp;</span>
                                </p>
                            </li>
                            <li>
                                <p style="text-align: justify">
                                    <span class="text-size"> + Đặt bao cao su lên đầu khấc và từ từ vuốt xuống tận
                                        gốc.&nbsp;</span>
                                </p>
                            </li>
                            <li>
                                <p style="text-align: justify">
                                    <span class="text-size"> + Sau khi quan hệ xong, rút bao ra từ từ, thắt miệng chặt
                                        và đặt vào thùng rác.&nbsp;</span>
                                </p>
                            </li>

                        </ul>
                        <h3 style="text-align: justidy;">
                            <strong>
                                <span class="text-size">
                                    Lưu ý khi sử dụng bao cao su Shell Love Bead

                                </span>
                            </strong>
                        </h3>
                        <ul>
                            <li>
                                <p style="text-align: justify">
                                    <span class="text-size"> + Kiểm tra kỹ tính nguyên vẹn của bao cao su trước khi sử
                                        dụng.&nbsp;</span>
                                </p>
                            </li>
                            <li>
                                <p style="text-align: justify">
                                    <span class="text-size"> + Không dùng khi cả nam và nữ đang có vết xước, vết thương
                                        hở vùng kín.&nbsp;</span>
                                </p>
                            </li>
                            <li>
                                <p style="text-align: justify">
                                    <span class="text-size"> + Tuyệt đối không tái sử dụng bao cao su.&nbsp;</span>
                                </p>
                            </li>
                        </ul>
                        <h3 style="text-align: justidy;">
                            <strong>
                                <span class="text-size">
                                    Hướng dẫn bảo quản bao cao su Shell Love Bead

                                </span>
                            </strong>
                        </h3>
                        <ul>
                            <li>
                                <p style="text-align: justify">
                                    <span class="text-size"> + Nơi khô ráo, thoáng mát.&nbsp;</span>
                                </p>
                            </li>
                            <li>
                                <p style="text-align: justify">
                                    <span class="text-size"> + Tránh tiếp xúc ánh nắng trực tiếp và nhiệt độ
                                        cao.&nbsp;</span>
                                </p>
                            </li>
                            <li>
                                <p style="text-align: justify">
                                    <span class="text-size"> + Để xa tầm tay trẻ em.&nbsp;</span>
                                </p>
                            </li>
                        </ul>
                        <h2 style="text-align: justidy;">
                            <strong class="letter_infor">
                                <span>
                                    Tại sao nên mua bao cao su Shell Love Bead tại PlayBoy?

                                </span>
                            </strong>
                        </h2>
                        <p style="text-align:justify;">
                            <span style="font-size:16px">
                                Đến với <strong><a class="text-size text-decoration-none " target="_blank"
                                        href="">PlayBoy</a></strong>
                                , khách hàng hoàn toàn yên tâm về chất lượng sản phẩm, đảm bảo chính hãng. Không những
                                vậy, đội ngũ nhân viên giàu kinh nghiệm sẽ tư vấn và hỗ trợ nhiệt tình mọi thắc
                                mắc.&nbsp;
                            </span>
                        </p>
                        <p style="text-align:center;">
                            <img src="./img/5_optimized_c09010a124b446d4b68fe7294c3fa168.jpg" alt="" class="img_infor">

                        </p>
                        <p style="text-align:justify;">
                            <span style="font-size:16px">
                                Ngoài ra, PlayBoy đảm bảo thời gian giao hàng nhanh chóng, kín đáo, được đồng kiểm trước
                                khi nhận hàng để đem tới trải nghiệm khiến khách hàng hài lòng nhất. Nhanh chân ghé các
                                cửa hàng của Gunshop ngay thôi nào!
                            </span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12 col-lg-3">
            <div class="pt-3 pt-lg-0 bg-white__mobile">

                <div class="bg-white p-3">
                    <strong class="related_products">
                        Sản phẩm liên quan
                    </strong>
                    <br>
                    <br>
                    <div class="row row-cols-2 row-cols-md-3 row-cols-lg-1 g-2">

                        @foreach($spLienQuans as $spLienQuan)
                        <a href="/khachhang/chitietsp/{{$spLienQuan->sp_ma}}"
                            class="text-decoration-none text-reset col">
                            <div class="shadow-item product-item card rounded-0 h-100">
                                @php
                                $sPCoKhuyenMai=
                                App\Models\khuyenmai::where('sp_ma',$spLienQuan->sp_ma)->where('km_tinhtrang',1)->first();
                                @endphp
                                @if($sPCoKhuyenMai)
                                <div class="product-gift-icon position-absolute h-100">
                                    <img src="{{asset('uploads/gift.svg')}}" alt="">
                                </div>
                                @endif
                                <div class="d-block ratio ratio-1x1">
                                    <img src="{{asset('uploads/'.$spLienQuan->sp_hinh)}}" alt="Ảnh Mẫu">
                                </div>
                                <div class="d-block pt-2 mt-2 text-decoration-none">
                                    @php
                                    if($loaiSP->lsp_thuonghieu!=='Khác')
                                    if($spLienQuan->donvis[0]->dv_ten!=='Không')
                                    $tenSPLienQuan = $spLienQuan->sp_ten.' - '.$loaiSP->lsp_ten.' -
                                    '.$loaiSP->lsp_thuonghieu.' - '.$spLienQuan->donvis[0]->dv_ten.' -
                                    '.$sanPham->sp_ma;
                                    else
                                    $tenSPLienQuan = $spLienQuan->sp_ten.' - '.$loaiSP->lsp_ten.' -
                                    '.$loaiSP->lsp_thuonghieu.' - '.$spLienQuan->sp_ma;
                                    else if($spLienQuan->donvis[0]->dv_ten!=='Không')
                                    $tenSPLienQuan = $spLienQuan->sp_ten.' - '.$loaiSP->lsp_ten.' -
                                    '.$spLienQuan->donvis[0]->dv_ten.' - '.$spLienQuan->sp_ma;
                                    else $tenSPLienQuan = $spLienQuan->sp_ten.' - '.$loaiSP->lsp_ten.' -
                                    '.$spLienQuan->sp_ma;
                                    @endphp
                                    <h3 class="text-start text_extend text-dark">
                                        {{$tenSPLienQuan}}
                                    </h3>
                                </div>
                                <div class="mb-2 px-2 row g-0 align-items-center">
                                    <span
                                        class="text-size col-auto me-2 ">{{ number_format($spLienQuan->donvis[0]->pivot->giaban - ($spLienQuan->donvis[0]->pivot->giaban*$spLienQuan->donvis[0]->pivot->giamgia/100)) }}đ</span>
                                    <small class="col-auto px-2 py-1 d-inline-block  rounded">
                                        -{{$spLienQuan->donvis[0]->pivot->giamgia}}% </small>
                                    <del style="color: #828282" class="small col-12 d-block ">
                                        {{number_format($spLienQuan->donvis[0]->pivot->giaban)}}đ </del>
                                </div>
                                <div class="d-flex px-2 align-items-center mb-2 product-item__review">
                                    <div
                                        class="starbaprv-widget starbaprv-preview-badge starbaprv-preview-badge--with-link">
                                        <div class="text-size starbap-prev-badge" style="font-size:10px">
                                            <i class="fa fa-star "></i>
                                            <i class="fa fa-star "></i>
                                            <i class="fa fa-star "></i>
                                            <i class="fa fa-star "></i>
                                            <i class="fa fa-star "></i>
                                            <span class=" starbap-prev-badgetext" style="font-size:10px">
                                                | Đã bán
                                                {{App\Models\cthoadon::where('sp_ma',$spLienQuan->sp_ma)->get()->sum('soluong')}}
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                        @endforeach

                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
@endsection

@section('lienKet-JS-CuoiTrang')
<script src="{{ asset('') }}"></script>

@endsection