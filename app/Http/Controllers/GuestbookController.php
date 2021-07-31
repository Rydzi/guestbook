<?php

namespace App\Http\Controllers;

use App\Models\Region;
use App\Http\Requests\SavePost;
use App\Models\Post;
use Illuminate\Support\Facades\Cache;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Support\Facades\Request;

class GuestbookController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //get regions 
        $regions = Region::pluck('region', 'id');

        $posts = $this->cachedPagination();

        return view('guestbook.home', [
            'regions'  => $regions,
            'posts'  => $posts,
        ]);
    }


    // cache all date/or read data from cache and return data for pagination
    private function cachedPagination()
    {
        $all = Cache::rememberForever('posts', function () {
            return Post::latest()->get();
        });

        $page = Request::get('page', 1);
        $perPage = 5;

        return new LengthAwarePaginator(
            $all->forPage($page, $perPage),
            $all->count(),
            $perPage,
            $page
        );
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\SavePost $request
     * @return \Illuminate\Http\Response
     */
    public function store(SavePost $request)
    {
        // create post
        $this->createPost($request);

        // success message
        flash()->success('Successfully added!')->important();

        // redirect back
        return redirect()->route('home');
    }


    private function createPost(SavePost $request)
    {
        $post = new Post();

        //save data from request
        $post = $post->create($request->all());

        //save additional data IP, user agent
        $post->ip = $request->ip();
        $post->browser = $request->header('User-Agent');

        $post->save();
    }
}
