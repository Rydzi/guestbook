@forelse ($posts as $post)
    <div class="row border-bottom pb-1 mb-1">
        <div class="col-md-6">
            <strong>{{ $post->name }}</strong>
        </div>
        <div class="col-md-6 text-right">
            <time datetime="{{ $post->datetime }}">
                <small class="text-muted">{{ $post->human_date }}</small>
            </time>
        </div>
        <div class="col-md-12">{{ $post->message }}</div>
    </div>
@empty
    <h2>There are no posts :(</h2>
@endforelse

<div class="row">

    <div class="col-auto text-center m-auto">
        {{ $posts->links() }}
    </div>

</div>