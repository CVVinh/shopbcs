<section class="category">
    <div class="container">
        <div class="category-top d-flex align-items-center justify-content-between">
            <h3 class="category-title">Sản phẩm phổ biến</h3>
                <a href="#!" class="text-reset text-decoration-none"><strong class="text-danger">Xem thêm
                    <i class="fa fa-angle-right" aria-hidden="true"></i></strong>
                </a>
        </div>
        <div class="category-list">

            @foreach($maxDanhMuc as $key=>$value)

            @php
            $sanPham = App\Models\sanpham::where('sp_ma', $key)->first();
            @endphp

            <div class="category-item">
                <a href="/khachhang/chitietsp/{{$sanPham->sp_ma}}" class="text-decoration-none text-reset">
                    <div class="category-item__img"><img src="{{asset('uploads/'.$sanPham->sp_hinh)}}" alt="Ảnh Mẫu"></div>
                    <span class="text_extend">{{$sanPham->sp_ten}}</span>
                </a>
            </div>
            @endforeach

        </div>
    </div>
</section>