<div class="row">
    <div class="col">
        <h1 class="text-center">Guestbook</h1>
        {{ Form::open( array ('url' => 'store', 'method'=>'post' ) ) }}
        <div class="form-group row">
            <div class="col-md-6">
                {!! Form::text('name', null, ['class' => 'form-control', 'placeholder' => 'your name']) !!}
            </div>
            <div class="col-md-6">
                {!! Form::email('email', null, ['class' => 'form-control', 'placeholder' => 'your email address']) !!}
            </div>
        </div>
        <div class="form-group row">
            <div class="col-md-6">
                {!! Form::text('phone_number', null, ['class' => 'form-control', 'placeholder' => 'your phone number']) !!}
            </div>
            <div class="col-md-6">
            {!! Form::select('region_id', @$regions , null, ['class' => 'form-control', 'placeholder' => 'your region']) !!}
            </div>
        </div>
        <div class="form-group">
            {!! Form::textarea('message', null, ['class' => 'form-control', 'rows' => 8, 'placeholder' => 'your message']) !!}
        </div>
        <div class="form-group">
            {!! Form::button('send', ['type' => 'submit', 'class' => 'btn btn-primary']) !!}
        </div>
        {{ Form::close() }}
    </div>
</div>