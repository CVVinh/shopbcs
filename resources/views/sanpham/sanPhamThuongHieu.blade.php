<!-- <section id="brand" class="my-4">
    <div class="container">
        <div class="brand-top d-flex align-items-center justify-content-between">
            <h3 class="brand-name">Sản Phẩm Thương Hiệu</h3>
            <a href="#!" class="text-reset text-decoration-none">Xem thêm
                <i class="fa fa-angle-right" aria-hidden="true"></i>
            </a>

        </div>
    </div>
</section> -->

<section class="pb-3 mb-3">
    <div class="container">
        <div class="flash-container pb-3">
            <div class="d-flex align-items-center justify-content-between bg-flash">
                <div class="flash-title p-3 d-flex align-items-center justify-content-between gap-4">
                    <h3>Sản Phẩm Thương Hiệu</h3>
                </div>

                <a href="/khachhang/xemToanBoSP/thuonghieu"
                    class="text-reset text-decoration-none extend pr-2 text-danger">
                    <strong class="text-danger">
                        <span class=" extend-md">Xem toàn bộ sản phẩm</span>
                        <span class="extend_small">Xem thêm</span>
                        <i class="fa fa-angle-right" aria-hidden="true"></i>
                    </strong>
                </a>

            </div>

            <ul class="product-list1">
                @php
                $sPThuongHieus = App\Models\loaisp::where('lsp_thuonghieu','<>', '')->where('lsp_ma','<>','1')->distinct()->offset(0)->limit(6)->get();
                @endphp

                @foreach($sPThuongHieus as $sPThuongHieu)
                <li class="product-item">
                    <a href="/khachhang/xemToanBoSP/{{$sPThuongHieu->lsp_thuonghieu}}" class="text-decoration-none text-reset">
                                <img src="{{asset('uploads/'.$sPThuongHieu->lsp_hinh)}}" alt="{{$sPThuongHieu->lsp_ten}}" />
                    </a>
                </li>
                @endforeach
            </ul>
        </div>

    </div>
</section>