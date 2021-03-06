@extends('admin.master')
@section('content')
    <div class="nk-content ">
        <div class="container-fluid">
            <div class="nk-content-inner">
                <div class="nk-content-body">
                    <div class="nk-block-head nk-block-head-sm">
                        <div class="nk-block-between">
                            <div class="nk-block-head-content">
                                <h3 class="nk-block-title page-title">Sale</h3>
                                @if ($errors->any())
                                    @foreach ($errors->all() as $error)
                                        <div class="alert alert-danger" role="alert">{{ $error }}</div>
                                    @endforeach
                                @endif
                                @if (session('thanhcong'))
                                    <div class="alert alert-success" role="alert">{{ session('thanhcong') }}</div>
                                @endif
                                @if (session('thatbai'))
                                    <div class="alert alert-danger" role="alert">{{ session('thatbai') }}</div>
                                @endif
                                @if (session('canhbao'))
                                    <div class="alert alert-warning" role="alert">{{ session('canhbao') }}</div>
                                @endif
                            </div><!-- .nk-block-head-content -->
                            <div class="nk-block-head-content">
                                <div class="toggle-wrap nk-block-tools-toggle">
                                    <a href="#" class="btn btn-icon btn-trigger toggle-expand mr-n1"
                                        data-target="pageMenu"><em class="icon ni ni-more-v"></em></a>
                                    <div class="toggle-expand-content" data-content="pageMenu">
                                        <ul class="nk-block-tools g-3">
                                            <li>
                                                <div class="drodown">
                                                    <a href="#"
                                                        class="dropdown-toggle dropdown-indicator btn btn-outline-light btn-white"
                                                        data-toggle="dropdown">Tr???ng th??i</a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <ul class="link-list-opt no-bdr">
                                                            <li><a href="#"><span>??ang ho???t ?????ng</span></a></li>
                                                            <li><a href="#"><span>Ng???ng ho???t ?????ng</span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="nk-block-tools-opt">

                                                <a href="#" data-target="addProduct" class="toggle btn btn-icon btn-primary d-md-none"><em class="icon ni ni-plus"></em></a>
                                            <a href="#" data-target="addProduct" class="toggle btn btn-primary d-none d-md-inline-flex" onclick='
                                            document.getElementById("dm_ma").value="";
                                            document.getElementById("dm_ten").value="";
                                            // document.getElementById("dm_tinhtrang").value="";
                                            document.getElementById("button_update").innerHTML="<em class=\"icon ni ni-plus\"></em><span>Th??m</span>";

                                    '><em class="icon ni ni-plus"></em><span>Th??m</span></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div><!-- .nk-block-head-content -->
                        </div><!-- .nk-block-between -->
                    </div><!-- .nk-block-head -->
                    <div class="nk-block">
                        <div class="card card-bordered">
                            <div class="card-inner-group">
                                <div class="card-inner p-0">
                                    <div class="nk-tb-list">
                                        <div class="nk-tb-item nk-tb-head">
                                            <div class="nk-tb-col nk-tb-col-check">
                                                <div class="custom-control custom-control-sm custom-checkbox notext">
                                                    <input type="checkbox" class="custom-control-input" id="pid">
                                                    <label class="custom-control-label" for="pid"></label>
                                                </div>
                                            </div>
                                            <div class="nk-tb-col tb-col-sm"><span>H??nh</span></div>
                                            <div class="nk-tb-col"><span>T??n s???n ph???m</span></div>
                                            <div class="nk-tb-col"><span>Ng??y b???t ?????u </span></div>
                                            <div class="nk-tb-col"><span>Ng??y k???t th??c</span></div>
                                            <div class="nk-tb-col"><span>Gi???m gi??</span></div>
                                            <div class="nk-tb-col"><span>T??nh tr???ng</span></div>
                                            <div class="nk-tb-col nk-tb-col-tools">
                                                <ul class="nk-tb-actions gx-1 my-n1">
                                                    <li class="mr-n1">
                                                        <div class="dropdown">
                                                            <a href="#"
                                                                class="dropdown-toggle btn btn-icon btn-trigger"
                                                                data-toggle="dropdown"><em
                                                                    class="icon ni ni-more-h"></em></a>
                                                            <div class="dropdown-menu dropdown-menu-right">
                                                                <ul class="link-list-opt no-bdr">
                                                                    <li><a href="#"><em
                                                                                class="icon ni ni-trash"></em><span>X??a t???t
                                                                                c???</span></a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div><!-- .nk-tb-item -->
                                            <div class="nk-tb-item">
                                                <div class="nk-tb-col nk-tb-col-check">
                                                    <div class="custom-control custom-control-sm custom-checkbox notext">
                                                        <input type="checkbox" class="custom-control-input" id="pid1">
                                                        <label class="custom-control-label" for="pid1"></label>
                                                    </div>
                                                </div>
                                                <div class="nk-tb-col tb-col-sm">
                                                    <span class="tb-product">
                                                        <img src="" alt=""
                                                            class="thumb">
                                                    </span>
                                                </div>
                                                <div class="nk-tb-col tb-col-sm">
                                                    <span class="tb-product">
                                                        <span class="title">Tong</span>
                                                    </span>
                                                </div>
                                                <div class="nk-tb-col tb-col-sm">
                                                    <span class="tb-product">

                                                            05/12/2021
                                                    </span>
                                                </div>
                                                <div class="nk-tb-col tb-col-sm">
                                                    <span class="tb-product">
                                                        7/1/2021 
                                                    </span>
                                                </div>
                                                <div class="nk-tb-col">
                                                    <strong>10%</strong>
                                                </div>
                                                <div class="nk-tb-col">
                                                   
                                                        <span
                                                            class="badge badge-sm badge-dot has-bg badge-success d-none d-mb-inline-flex">??ang
                                                            ho???t ?????ng</span>
                                                </div>
                                                <div class="nk-tb-col nk-tb-col-tools">
                                                    <ul class="nk-tb-actions gx-1 my-n1">
                                                        <li class="mr-n1">
                                                            <div class="dropdown">
                                                                <a href="#"
                                                                    class="dropdown-toggle btn btn-icon btn-trigger"
                                                                    data-toggle="dropdown"><em
                                                                        class="icon ni ni-more-h"></em></a>
                                                                <div class="dropdown-menu dropdown-menu-right">
                                                                    <ul class="link-list-opt no-bdr">
                                                                        <li><a
                                                                                href="{{ route('admin.sanpham.sua', ['id' => 2]) }}"><em
                                                                                    class="icon ni ni-edit"></em><span>S???a</span></a>
                                                                        </li>
                                                                        <li><a href="#"><em
                                                                                    class="icon ni ni-trash"></em><span>X??a</span></a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        <!-- .nk-tb-item -->
                                    </div><!-- .nk-tb-list -->
                                </div>
                                
                            </div>
                        </div>
                    </div><!-- .nk-block -->
                </div>
            </div>
        </div>
    </div>


    <form action="{{url('admin/danhmucdulieu/danhmucsp/them')}}" method="post" enctype="multipart/form-data" class="formDanhMucSP">
        @csrf
        <div class="nk-add-product toggle-slide toggle-slide-right" data-content="addProduct" data-toggle-screen="any" data-toggle-overlay="true" data-toggle-body="true" data-simplebar>
            <div class="nk-block-head">
                <div class="nk-block-head-content">
                    <h5 class="nk-block-title">Th??m danh m???c s???n ph???m</h5>
                    <div class="nk-block-des">
                        <p>Th??m m???i danh m???c s???n ph???m</p>
                    </div>
                </div>
            </div><!-- .nk-block-head -->
            <div class="nk-block">
                <div class="row g-3">
                    <div class="col-12">
                        <div class="form-group">
                            <label class="form-label" for="product-title">Danh m???c s???n ph???m</label>
                            <div class="form-control-wrap">
                                <select class="form-control" id="dm_tinhtrang" name="dm_tinhtrang">
                                    <option value="1">??ang s??? d???ng</option>
                                    <option value="0">Ng???ng s??? d???ng</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-group">
                            <label class="form-label" for="product-title">S???n ph???m</label>
                            <div class="form-control-wrap">
                                <select class="form-control" id="dm_tinhtrang" name="dm_tinhtrang">
                                    <option value="1">??ang s??? d???ng</option>
                                    <option value="0">Ng???ng s??? d???ng</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-group">
                            <label class="form-label" for="product-title">Lo???i s???n ph???m</label>
                            <div class="form-control-wrap">
                                <select class="form-control" id="dm_tinhtrang" name="dm_tinhtrang">
                                    <option value="1">??ang s??? d???ng</option>
                                    <option value="0">Ng???ng s??? d???ng</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-group">
                            <label class="form-label" for="product-title">Tr???ng th??i</label>
                            <div class="form-control-wrap">
                                <select class="form-control" id="dm_tinhtrang" name="dm_tinhtrang">
                                    <option value="1">??ang s??? d???ng</option>
                                    <option value="0">Ng???ng s??? d???ng</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="form-group">
                            <label class="form-label" for="product-title">Ng??y b???t ?????u</label>
                            <div class="form-control-wrap">
                                <input type="datetime-local" name="" id="" style="width:100%">
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-group">
                            <label class="form-label" for="product-title">Ng??y k???t th??c</label>
                            <div class="form-control-wrap">
                                <input type="datetime-local" name="" id="" style="width:100%">
                            </div>
                        </div>
                    </div>


                <div class="col-12">
                                <button class="btn btn-primary" id="button_update"><em class="icon ni ni-plus"></em><span>Th??m</span></button>
                                </div>
            </div>

                </div>
            </div><!-- .nk-block -->
        </div>
    </form>


    <script src="{{ asset('/assets/js/jquery-3.6.0.min.js') }}"></script>
    <script>
        $(document).ready(function() {
            $("#keyword").keyup(function() {
                var keyword = $(this).val();
                console.log(keyword);
                $.ajax({
                    type: "GET",
                    url: "loaithucuong/searchltu",
                    data: {
                        keyword: keyword,
                    },
                    datatype: "JSON",
                    success: function(data) {
                        $(".searchltu").html(data);
                    },
                })
            });
        });
    </script>
@endsection
