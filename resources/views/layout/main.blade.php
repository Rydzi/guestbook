<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        @include('partials.header')
    </head>
    <body>
        <header class="container mt-3">
            @include('flash::message')
            @include('partials.errors')
        </header>
        <main>
            <div class="container">
                @yield('content')
            </div>
        </main>
        <footer>
            @include('partials.footer')
        </footer>
    </body>
</html>
