@extends('admin/layouts/default')

{{-- Page title --}}
@section('title')
booktests List
@parent
@stop

{{-- Page content --}}
@section('content')
<section class="content-header">
    <h1>Booktests</h1>
    <ol class="breadcrumb">
        <li>
            <a href="{{ route('dashboard') }}"> <i class="livicon" data-name="home" data-size="16" data-color="#000"></i>
                Dashboard
            </a>
        </li>
        <li>booktests</li>
        <li class="active">booktests</li>
    </ol>
</section>

<section class="content paddingleft_right15">
    <div class="row">
        <div class="panel panel-primary ">
            <div class="panel-heading clearfix">
                <h4 class="panel-title pull-left"> <i class="livicon" data-name="list-ul" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                    Booktests List
                </h4>
                <div class="pull-right">
                    <a href="{{ route('admin.booktests.create') }}" class="btn btn-sm btn-default"><span class="glyphicon glyphicon-plus"></span> @lang('button.create')</a>
                    <a class="btn btn-info btn-large" onclick="newBook()" href="#bookModal">View Demo</a>                    
                </div>
            </div>
            <br />
            <div class="panel-body">
                <table class="table table-bordered " id="table">
                    <thead>
                        <tr class="filters">
                            <th>ID</th>
                            <th>Title</th>
                            <th>Author</th>
                            <th>Description</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($booktests as $booktest)
                        <tr>
                            <td>{!! $booktest->id !!}</td>
                            <td>{!! $booktest->title !!}</td>
                            <td>{!! $booktest->author !!}</td>
                            <td>{!! $booktest->description !!}</td>
                            <td>
                                <a href="{{ route('admin.booktests.show', $booktest->id) }}">
                                    <i class="livicon" data-name="info" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="view booktest"></i>
                                </a>
                                <a href="{{ route('admin.booktests.edit', $booktest->id) }}">
                                    <i class="livicon" data-name="edit" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="edit booktest"></i>
                                </a>
                                <a onclick='editBook(this)' data-obj='{!! $booktest !!}'>
                                    <i class="livicon" data-name="edit" data-size="18" data-loop="true" data-c="#428BCA" data-hc="#428BCA" title="edit booktest"></i>
                                </a>
                                <a href="{{ route('admin.booktests.confirm-delete', $booktest->id) }}" data-toggle="modal" data-target="#delete_confirm">
                                    <i class="livicon" data-name="remove-alt" data-size="18" data-loop="true" data-c="#f56954" data-hc="#f56954" title="delete booktest"></i>
                                </a>
                            </td>
                        </tr>
                        @endforeach

                    </tbody>
                </table>
            </div>
        </div>
    </div>    <!-- row-->
</section>

<script type="text/javascript">
    function editBook(item) {
        var obj = $(item).data("obj");
        console.log(obj);
        $("#idBook").val(obj.id);
        $("#titleBook").val(obj.title);
        $("#authorBook").val(obj.author);
        $("#descriptionBook").val(obj.description);


//        $.ajax({
//            type: "POST",
//            url: '{{ route('admin.booktests.detail') }}',
//            data: {id: obj.id},
//            success: function (data){
//                console.log(data);
//                alert("success!");
//            }
//        });
        $("#bookModal").modal();

    }
    function newBook() {
        $("#idBook").val("");
        $("#titleBook").val("");
        $("#authorBook").val("");
        $("#descriptionBook").val("");
        $("#bookModal").modal();
    }
</script>
@stop

@include('admin.booktests.modal')

{{-- Body Bottom confirm modal --}}
@section('footer_scripts')
<div class="modal fade" id="delete_confirm" tabindex="-1" role="dialog" aria-labelledby="user_delete_confirm_title" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
        </div>
    </div>
</div>
<script>
    $(function () {
        $('body').on('hidden.bs.modal', '.modal', function () {
            $(this).removeData('bs.modal');
        });
    });
</script>
<script src="{{ asset('assets/vendors/modal/js/classie.js') }}" ></script>
<script src="{{ asset('assets/vendors/modal/js/modalEffects.js') }}" ></script>
@stop
