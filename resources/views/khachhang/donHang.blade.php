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
                                    <div class="info__ship">
                                        <div class="ship__detail">
                                          <p class="ship__detail-hd">PlayBoy.vn</p>
                                          <p class="ship__detail-ct">Thông tin giao hàng</p>
                                          <div class="i4__acc">
                                            <img
                                              src="https://cf.shopee.vn/file/733fdca0ecdfe7568916e60d31c79239_tn"
                                              alt=""
                                              class="i4__acc-avt"
                                            />
                                            <div class="i4__acc-name">
                                              <p>Thanh Tòng <span>(ttong@gmail.com)</span></p>
                                              <a href="">Đăng xuất</a>
                                            </div>
                                          </div>
                                          <div class="feildset">
                                            <div class="feild">
                                              <label class="feild__lable" for="st__address"
                                                >Thêm địa chỉ mới</label
                                              >
                                              <select class="feild__input pd" name="" id="st__address">
                                                <option value="">Địa chỉ đã lưu chữ</option>
                                              </select>
                                            </div>
                                            <div class="feild">
                                              <input
                                                class="feild__input"
                                                type="text"
                                                name="name"
                                                placeholder="Họ và tên"
                                              />
                                            </div>
                                            <div class="feild">
                                              <input
                                                class="feild__input"
                                                type="text"
                                                name="phone"
                                                placeholder="Số điện thoại"
                                              />
                                            </div>
                                            <div class="feild">
                                              <input
                                                class="feild__input"
                                                type="text"
                                                name="address"
                                                placeholder="Địa chỉ"
                                              />
                                            </div>
                                            <div class="feild__choose">
                                              <div class="feild__address">
                                                <label class="feild__lable" for="customer-ship"
                                                  >Tỉnh/thành</label
                                                >
                                                <select class="feild__input pd" name="" id="customer-ship">
                                                  <option selected value="">Chọn tỉnh / thành</option>
                                                  <option value="">Cần Thơ</option>
                                                </select>
                                              </div>
                                              <div class="feild__address">
                                                <label class="feild__lable" for="customer-ship"
                                                  >Quận/huyện</label
                                                >
                                                <select class="feild__input pd" name="" id="customer-ship">
                                                  <option selected value="">Chọn quận / huyện</option>
                                                  <option value="">Cái Răng</option>
                                                </select>
                                              </div>
                                              <div class="feild__address">
                                                <label class="feild__lable" for="customer-ship"
                                                  >Phường/ã</label
                                                >
                                                <select class="feild__input pd" name="" id="customer-ship">
                                                  <option selected value="">Chọn phường / xã</option>
                                                  <option value="">Hưng Lợi</option>
                                                </select>
                                              </div>
                                            </div>
                                            <div class="location__shipping">
                                              <h2 class="change-title">Phương thức vận chuyển</h2>
                                              <div class="content__box">
                                                <label class="content__box-label" for=""
                                                  >Giao hàng tiết kiệm (từ 3-5 ngày)</label
                                                >
                                              </div>
                                            </div>
                                            <div class="method__pay">
                                              <h2 class="method__pay-title">Phương thức thanh toán</h2>
                                            </div>
                                            <div class="pay__box">
                                              <div class="pay__box-item">
                                                <input type="radio" name="radio" class="input-check" />
                                                <img
                                                  class="pay__box-img"
                                                  src="https://hstatic.net/0/0/global/design/seller/image/payment/cod.svg?v=1"
                                                  alt=""
                                                />
                                                <label for="">Thanh toán khi giao hàng</label>
                                              </div>
                                              <div class="pay__box-item">
                                                <input type="radio" name="radio" class="input-check" />
                                                <img
                                                  class="pay__box-img"
                                                  src="https://hstatic.net/0/0/global/design/seller/image/payment/other.svg?v=1"
                                                  alt=""
                                                />
                                                <label for="">Chuyển khoảng qua ngân hàng</label>
                                              </div>
                                              <div class="pay__box-item">
                                                <input type="radio" name="radio" class="input-check" />
                                                <img
                                                  class="pay__box-img"
                                                  src="https://hstatic.net/0/0/global/design/seller/image/payment/vnpay_new.svg?v=1"
                                                  alt=""
                                                />
                                                <label for="">Thẻ ATM/Visa/QR</label>
                                              </div>
                                            </div>
                                            
                                          </div>
                                        </div>
                                      </div>
                                      <div class="list__product">
                                        <span class="product-show-order"
                                          >Hiển thị thông tin đơn hàng
                                          <i class="fa fa-caret-down" aria-hidden="true"></i>
                                        </span>
                                        {{-- <span class="product-hidden-order">Ẩn thông tin đơn hàng</span> --}}
                                        <div class="product-list--buy">
                                          <div class="product__pay">
                                            <div class="product__pay-thum">
                                              <img
                                                class="product__pay-img"
                                                src="//product.hstatic.net/1000343028/product/81_186a08f49fba4d64a280964b66aaaba5_small.png"
                                                alt=""
                                              />
                                              <span class="product__pay-number">2</span>
                                            </div>
                                            <p class="product__pay-title">
                                              Dương vật giả cao cấp dây đeo đặc ruột, 10 chế độ rung - Loveaider
                                              - 11685
                                            </p>
                                            <p class="product__pay-price">1,700,000đ</p>
                                          </div>
                                          <div class="product__pay">
                                            <div class="product__pay-thum">
                                              <img
                                                class="product__pay-img"
                                                src="//product.hstatic.net/1000343028/product/81_186a08f49fba4d64a280964b66aaaba5_small.png"
                                                alt=""
                                              />
                                              <span class="product__pay-number">2</span>
                                            </div>
                                            <p class="product__pay-title">
                                              Dương vật giả cao cấp dây đeo đặc ruột, 10 chế độ rung - Loveaider
                                              - 11685
                                            </p>
                                            <p class="product__pay-price">1,700,000đ</p>
                                          </div>
                                          <div class="product__pay">
                                            <div class="product__pay-thum">
                                              <img
                                                class="product__pay-img"
                                                src="//product.hstatic.net/1000343028/product/81_186a08f49fba4d64a280964b66aaaba5_small.png"
                                                alt=""
                                              />
                                              <span class="product__pay-number">2</span>
                                            </div>
                                            <p class="product__pay-title">
                                              Dương vật giả cao cấp dây đeo đặc ruột, 10 chế độ rung - Loveaider
                                              - 11685
                                            </p>
                                            <p class="product__pay-price">1,700,000đ</p>
                                          </div>
                                          <div class="product__pay">
                                            <div class="product__pay-thum">
                                              <img
                                                class="product__pay-img"
                                                src="//product.hstatic.net/1000343028/product/81_186a08f49fba4d64a280964b66aaaba5_small.png"
                                                alt=""
                                              />
                                              <span class="product__pay-number">2</span>
                                            </div>
                                            <p class="product__pay-title">
                                              Dương vật giả cao cấp dây đeo đặc ruột, 10 chế độ rung - Loveaider
                                              - 11685
                                            </p>
                                            <p class="product__pay-price">1,700,000đ</p>
                                          </div>
                                          <div class="product__pay">
                                            <div class="product__pay-thum">
                                              <img
                                                class="product__pay-img"
                                                src="//product.hstatic.net/1000343028/product/81_186a08f49fba4d64a280964b66aaaba5_small.png"
                                                alt=""
                                              />
                                              <span class="product__pay-number">2</span>
                                            </div>
                                            <p class="product__pay-title">
                                              Dương vật giả cao cấp dây đeo đặc ruột, 10 chế độ rung - Loveaider
                                              - 11685
                                            </p>
                                            <p class="product__pay-price">1,700,000đ</p>
                                          </div>
                                        </div>
                                        <div class="product__sale">
                                          <div class="code__sale">
                                            <div class="code_ctn">
                                              <svg
                                                width="15"
                                                height="10"
                                                viewBox="0 0 18 14"
                                                fill="none"
                                                xmlns="http://www.w3.org/2000/svg"
                                              >
                                                <path
                                                  fill-rule="evenodd"
                                                  clip-rule="evenodd"
                                                  d="M17.3337 5.3335V2.00016C17.3337 1.07516 16.5837 0.333496 15.667 0.333496H2.33366C1.41699 0.333496 0.675326 1.07516 0.675326 2.00016V5.3335C1.59199 5.3335 2.33366 6.0835 2.33366 7.00016C2.33366 7.91683 1.59199 8.66683 0.666992 8.66683V12.0002C0.666992 12.9168 1.41699 13.6668 2.33366 13.6668H15.667C16.5837 13.6668 17.3337 12.9168 17.3337 12.0002V8.66683C16.417 8.66683 15.667 7.91683 15.667 7.00016C15.667 6.0835 16.417 5.3335 17.3337 5.3335ZM15.667 4.11683C14.6753 4.69183 14.0003 5.77516 14.0003 7.00016C14.0003 8.22516 14.6753 9.3085 15.667 9.8835V12.0002H2.33366V9.8835C3.32533 9.3085 4.00033 8.22516 4.00033 7.00016C4.00033 5.76683 3.33366 4.69183 2.34199 4.11683L2.33366 2.00016H15.667V4.11683ZM9.83366 9.50016H8.16699V11.1668H9.83366V9.50016ZM8.16699 6.16683H9.83366V7.8335H8.16699V6.16683ZM9.83366 2.8335H8.16699V4.50016H9.83366V2.8335Z"
                                                  fill="#318DBB"
                                                ></path>
                                              </svg>
                                              <p class="code__slale-ct">Mã giảm giá</p>
                                            </div>
                                            <div id="code__sale-item">
                                              <span>
                                                <p class="code__sale-label">Giảm 10%</p>
                                              </span>
                                              <span>
                                                <p class="code__sale-label">Giảm 10%</p>
                                              </span>
                                            </div>
                                          </div>
                                          <div class="price-ct">
                                            <div class="provi__price">
                                              <p>Tạm tính</p>
                                              <p>5,008,477đ</p>
                                            </div>
                                            <div class="tranf__fee">
                                              <p>Phí vận chuyển</p>
                                              <p>Miễn phí</p>
                                            </div>
                                          </div>
                                          <div class="total__price-complete">
                                            <p>Tổng cộng</p>
                                            <span>5,088,477đ</span>
                                          </div>
                                          <div class="complete">
                                            <a href="#">Giỏ hàng</a>
                                            <button class="btn-complete btn-primary">
                                              Hoàn tất đơn hàng
                                            </button>
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
</div>
@endsection

@section('lienKet-JS-CuoiTrang')
<script src="{{ asset('js/auth/dangNhap.js') }}"></script>


@endsection