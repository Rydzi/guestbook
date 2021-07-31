@extends('layout.main')

@section('content')

@include('guestbook.form-partial')

<hr>

@include('guestbook.posts-partial')


@endsection