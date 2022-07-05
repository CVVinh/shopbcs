@extends('boCuc')

@section('lienKet-CSS-DauTrang')
<link rel="stylesheet" href="{{ asset('css/khachHang.css') }}" />
@endsection

@section('lienKet-JS-DauTrang')
<script src='https://www.google.com/recaptcha/api.js?hl=vi'></script>
@endsection

@section('noiDung')
<div class="grid khungHienThi">
    <div class="wrapper">
        <div class="info">
            <div class="info__welcome">
                <h5 class="info___welcome-heading">Xin chào, Thanh Tòng</h5>
                <ul class="info__list">
                    <li><a class="info__list-item-link active" href="">Thông tin chung</a></li>
                    <li><a class="info__list-item-link" href="">Số địa chỉ</a></li>
                    <li><a class="info__list-item-link" href="/khachhang/donHang">Đơn hàng của tôi</a></li>
                    <li><a class="info__list-item-link" href="/khachhang/gioHang">Giỏ hàng của tôi</a></li>
                    <li><a class="info__list-item-link" href="">Đăng xuất</a></li>
                </ul>
            </div>
            <div class="info__general w-full">
                <div class="container mb-4">
                    <div class="row">
                        <div class="col-md-12 ">
                            <div class="card h-100">
                                <div class="card-header bg-white d-flex flex-wrap">
                                    <div class="mycart">
                                        <h2>Giỏ hàng của bạn</h2>
                                        <p>Có 4 sản phẩm trong giỏ hàng</p>
                                    </div>
                                    <div class="cart__info">
                                        <div class="cart__info-prices">
                                            <div class="cart__info-price">
                                                <div class="cart__img">
                                                    <img src="//product.hstatic.net/1000343028/product/raw_616ea78d7e28490583c5e5ae58793bef_medium.jpg" alt="Chai hít">
                                                </div>
                                                <div class="cart__price">
                                                    <p>Chai hít tăng khoái cảm PSR - Chai 10m</p>
                                                    <span>399,002đ</span>
                                                    <span class="cart__price--underline">517,000đ</span>
                                                    <div class="cart__mount">
                                                        <button value="">-</button>
                                                        <input type="text" placeholder="1">
                                                        <button value="">+</button>
                                                        <button class="btn__cancel">Hủy</button>
                                                        <div class="cart__total">
                                                            <p>Thành tiền: 399,002đ</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cart__info-price">
                                                <div class="cart__img">
                                                    <a href=""><img src="//product.hstatic.net/1000343028/product/raw_616ea78d7e28490583c5e5ae58793bef_medium.jpg" alt="Chai hít"></i></a>
                                                </div>
                                                <div class="cart__price">
                                                    <p>Chai hít tăng khoái cảm PSR - Chai 10m</p>
                                                    <span>399,002đ</span>
                                                    <span class="cart__price--underline">517,000đ</span>
                                                    <div class="cart__mount">
                                                        <button value="">-</button>
                                                        <input type="text" placeholder="1">
                                                        <button value="">+</button>
                                                        <button class="btn__cancel">Hủy</button>
                                                        <div class="cart__total">
                                                            <p>Thành tiền: 399,002đ</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cart__info-price">
                                                <div class="cart__img">
                                                    <a href=""><img src="//product.hstatic.net/1000343028/product/raw_616ea78d7e28490583c5e5ae58793bef_medium.jpg" alt="Chai hít"></i></a>
                                                </div>
                                                <div class="cart__price">
                                                    <p>Chai hít tăng khoái cảm PSR - Chai 10m</p>
                                                    <span>399,002đ</span>
                                                    <span class="cart__price--underline">517,000đ</span>
                                                    <div class="cart__mount">
                                                        <button value="">-</button>
                                                        <input type="text" placeholder="1">
                                                        <button value="">+</button>
                                                        <button class="btn__cancel">Hủy</button>
                                                        <div class="cart__total">
                                                            <p>Thành tiền: 399,002đ</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cart__total-prices">
                                                <p>Tổng tiền: 1,222,333đ</p>
                                            </div>
                                        </div>
                                        <div class="cart__info-promo">
                                            <div class="cart__promo">
                                                <h3>Dịch vụ khuyến mãi</h3>
                                                <p>Nhập mã THU^ để giảm ngay 15% các đơn hàng thứ 6 hàng tuần</p>
                                                <p>Nhập mã THU^ để giảm ngay 15% các đơn hàng thứ 6 hàng tuần</p>
                                                <p>Nhập mã THU^ để giảm ngay 15% các đơn hàng thứ 6 hàng tuần</p>
                                                <p>Nhập mã THU^ để giảm ngay 15% các đơn hàng thứ 6 hàng tuần</p>
                                            </div>
                                            <div class="cart__pay">
                                                <p>Phí vận chuyển sẽ được tính ở trang thanh toán. Bạn cũng có thể nhập mã giảm giá ở thanh toán</p>
                                                <button class="btn btn-primary">THANH TOÁN</button>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
</div>
@endsection

@section('lienKet-JS-CuoiTrang')
<script src="{{ asset('js/auth/dangNhap.js') }}"></script>

@endsection