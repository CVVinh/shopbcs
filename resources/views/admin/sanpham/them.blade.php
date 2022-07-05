@extends('admin.master')
@section('content')
    <div class="nk-content ">
        <form action="{{ url('admin/sanpham/them') }}" method="post" enctype="multipart/form-data" class="formLoaiSanPham">
            @csrf
            <div class="nk-block-head">
                <div class="nk-block-head-content">
                    <h5 class="nk-block-title">Thêm sản phẩm</h5>
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
                </div>
            </div><!-- .nk-block-head -->
            <div class="nk-block">
                <div class="row g-3">

                    <div class="col-4">
                        <div class="form-group">
                            <label class="form-label" for="lsp_ten">Tên sản phẩm</label>
                            <div class="form-control-wrap">
                                <input type="text" class="form-control" id="sp_ten" name="sp_ten">
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="form-group">
                            <label class="form-label" for="lsp_ten">Số lượng</label>
                            <div class="form-control-wrap">
                                <input type="text" class="form-control" name="sp_soluong">
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="form-group">
                            <label class="form-label" for="lsp_ten">Giá nhập</label>
                            <div class="form-control-wrap">
                                <input type="text" class="form-control" name="sp_gianhap">
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="form-group">
                            <label class="form-label" for="product-title">Danh mục sản phẩm</label>
                            <div class="form-control-wrap">
                                <select class="form-control" id="dm_ma" name="dm_ma">
                                    @foreach ($danhmucsps as $danhmucsp)
                                        <option value="{{ $danhmucsp->dm_ma}}">{{$danhmucsp->dm_ten}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="form-group">
                            <label class="form-label" for="product-title">Loại sản phẩm</label>
                            <div class="form-control-wrap">
                                <select class="form-control" id="lsp_ma" name="lsp_ma">
                                    <option value="">Chọn loại sản phẩm</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="form-group">
                            <label class="form-label" for="product-title">Nhà sản xuất</label>
                            <div class="form-control-wrap">
                                <select class="form-control" id="nsx_ma" name="nsx_ma">
                                    @foreach ($nhasanxuats as $nhasanxuat)
                                        <option value="{{ $nhasanxuat->nsx_ma }}">{{ $nhasanxuat->nsx_ten }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-10">
                        <div class="form-group">
                            <div class="form-control-wrap">
                                <div class="card card-preview">
                                    <div class="card-inner">
                                        <select id="custom-labels-listbox" name="dv_ma[]" class="dual-listbox" multiple>
                                            @foreach($donvis as $donvi)
                                                <option id=dv value="{{$donvi->dv_ma}}">{{$donvi->dv_ten}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div><!-- .card-preview -->
                            </div>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="form-group">
                            <div class="form-control-wrap">
                                    @foreach($donvis as $donvi)
                                        <label class="form-label" id="donvi_ten{{$donvi->dv_ma}}" hidden for="product-title">{{$donvi->dv_ten}}</label>
                                        <input type="text" id="donvi_ma{{$donvi->dv_ma}}"  hidden name="giaban[{{$donvi->dv_ma}}]"></input>
                                    @endforeach
                            </div>
                        </div>
                    </div>

                    <div class="col-3">
                        <div class="form-group">
                            <label class="form-label" for="lsp_ten">Hình đại diện cho SP</label>
                            <div class="form-control-wrap">
                                <input type="file" accept="image/png, image/jpeg" name="sp_hinh" id="sp_hinh"
                                />
                                <div id="sp_hinh1"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-9">
                        <div class="form-group">
                            <label class="form-label" for="lsp_ten">Chọn các hình để mô tả</label>
                            <div class="form-control-wrap">
                                <input type="file" accept="image/png, image/jpeg" name="h_ten[]" id="h_ten" multiple />
                                <div id="h_ten1"></div>
                            </div>
                        </div>
                    </div>

                    <div class="nk-block nk-block-lg">
                        <div class="nk-block-head">
                            <div class="nk-block-head-content">
                                <h4 class="title nk-block-title">Mô tả</h4>
                                <div class="nk-block-des">
                                    <p>Mô tả sản phẩm cho thật hấp dẫn</p>
                                </div>
                            </div>
                        </div>
                        <div class="card card-bordered">
                            <div class="card-inner">
                                <textarea class="summernote-basic" name="sp_mota"></textarea>
                            </div>
                        </div>
                    </div><!-- .nk-block -->

                    <div class="nk-block nk-block-lg">
                        <div class="nk-block-head">
                            <div class="nk-block-head-content">
                                <h4 class="title nk-block-title">Thông tin chi tiết</h4>
                                <div class="nk-block-des">
                                    <p>Nhập thông tin chi tiết</p>
                                </div>
                            </div>
                        </div>
                        <div class="card card-bordered">
                            <div class="card-inner">
                                <textarea class="summernote-basic1" name="sp_thongtin"></textarea>
                            </div>
                        </div>
                    </div><!-- .nk-block -->

                    <div class="col-12">
                        <button class="btn btn-primary" id="button_update"><em
                                class="icon ni ni-plus"></em><span>Thêm</span></button>
                    </div>
                </div>
            </div><!-- .nk-block -->
        </form>
    </div>
@section('link-js-cuoitrang')
    <script src="{{ asset('assets/js/libs/editors/summernote.js?ver=2.5.0') }}"></script>
    <script src="{{ asset('assets/js/editors.js?ver=2.5.0') }}"></script>
    <script src="{{asset('assets/js/libs/dual-listbox.js?ver=2.5.0')}}"></script>
    <script src="{{asset('assets/js/example-listbox.js?ver=2.5.0')}}"></script>
    <script>


    var customLabelsListbox = new DualListbox('#custom-labels-listbox', {
            addEvent: function(value) {
                // console.log(value);
                document.getElementById("donvi_ten"+value).hidden = false;
                document.getElementById("donvi_ma"+value).hidden = false;
            },
            removeEvent: function (value) {
                // console.log(value);
                document.getElementById("donvi_ten"+value).hidden = true;
                document.getElementById("donvi_ma"+value).hidden = true;
                document.getElementById("donvi_ma"+value).value = "";
            },
            availableTitle: 'Source Options',
            selectedTitle: 'Destination Options',
            addButtonText: '<em class="icon ni ni-chevron-right"></em>',
            removeButtonText: '<em class="icon ni ni-chevron-left"></em>',
            addAllButtonText: '<em class="icon ni ni-chevrons-right"></em>',
            removeAllButtonText: '<em class="icon ni ni-chevrons-left"></em>'
        });



        function previewImages(input) {
            var id = '#'+this.id+'1';
            var $preview = $(id).empty();

            if (this.files) $.each(this.files, readAndPreview);

            function readAndPreview(i, file) {
                
                if (!/\.(jpe?g|png|gif)$/i.test(file.name)){
                    return alert(file.name +" is not an image");
                } // else...
                
                var reader = new FileReader();

                $(reader).on("load", function() {
                    $preview.append($("<img/>", {src:this.result, height:100}));
                });

                reader.readAsDataURL(file);
                
            }

        }
            $('#sp_hinh').on("change", previewImages);
            $('#h_ten').on("change", previewImages);
    </script>
    <script>
        $('.summernote-basic').summernote({
            placeholder: 'Mô tả sản phẩm của bạn ở đây',
            tabsize: 4,
            height: 120,
            toolbar: [
                ['style', ['style']],
                ['font', ['bold', 'underline', 'strikethrough', 'clear']],
                ['font', ['superscript', 'subscript']],
                ['color', ['color']],
                ['fontsize', ['fontsize', 'height']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['table', ['table']],
                ['insert', ['link', 'picture', 'video']],
                ['view', ['fullscreen', 'codeview', 'help']]
            ]
        });

        $('.summernote-basic1').summernote({
            placeholder: 'Thiết kế thông tin chi tiết sản phẩm ở đây',
            tabsize: 4,
            height: 120,
            toolbar: [
                ['style', ['style']],
                ['font', ['bold', 'underline', 'strikethrough', 'clear']],
                ['font', ['superscript', 'subscript']],
                ['color', ['color']],
                ['fontsize', ['fontsize', 'height']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['table', ['table']],
                ['insert', ['link', 'picture', 'video']],
                ['view', ['fullscreen', 'codeview', 'help']]
            ]
        });
        $("select[name='dm_ma']").change(function() {
            var danhmucsp_id = $(this).val();
            $.ajax({
                url: `/api/danhmucsp/${danhmucsp_id}/loaisp`,
                method: 'GET',
                success: function(data) {
                    $("select[name='lsp_ma']").html('');
                    $.each(data, function(key, value) {
                        $("select[name='lsp_ma']").append(
                            "<option value=" + value.lsp_ma + ">" + value.lsp_ten + "</option>"
                        );
                    });
                }
            });
        })
    </script>
@endsection
@endsection
