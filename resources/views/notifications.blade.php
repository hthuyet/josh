@if ($errors->any())
<div class="alert alert-danger alert-dismissable margin5">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <strong>Error:</strong> Please check the form below for errors
</div>
@endif

@if ($message = Session::get('success'))
<div class="alert alert-success alert-dismissable margin5">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <strong>Success:</strong> {{ $message }}
</div>
@endif

@if ($message = Session::get('error'))
<div class="alert alert-danger alert-dismissable margin5">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <strong>Error:</strong> {{ $message }}
</div>
@endif

@if ($message = Session::get('warning'))
<div class="alert alert-warning alert-dismissable margin5">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <strong>Warning:</strong> {{ $message }}
</div>
@endif

@if ($message = Session::get('info'))
<div class="alert alert-info alert-dismissable margin5">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <strong>Info:</strong> {{ $message }}
</div>
@endif


<div id="customNotifications" class="alert alert-info alert-dismissable margin5">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <strong id="customNotificationslb">Info:</strong>
    <span id="customNotificationsMess"></span>
</div>

<script type="text/javascript">
    function alertNotifications(type, message) {
        if (type == "success") {
            $("#customNotifications").removeClass('alert-danger');
            $("#customNotifications").removeClass('alert-success');
            $("#customNotifications").removeClass('alert-warning');
            $("#customNotifications").removeClass('alert-info');
            $("#customNotifications").addClass('alert-success');
            $("#customNotificationslb").html('Success:');
            $("#customNotificationsMess").html(message);
        }
    }
</script>
