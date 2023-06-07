<html>
    <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.2.1/css/all.css">

    {{-- <link rel="stylesheet" href="{{ asset('frontend/css/style.css') }}"> --}}
        <title>@yield('title') - @include('frontend.inc.sitename') </title>
        @include('frontend.inc.css')
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
      @include('frontend.inc.shopCategory')
            @yield('content')

            @if (\Session::has('message'))
                <div class="toast show" role="alert" aria-live="assertive"
                aria-atomic="true" style="float: right;float: right; position: fixed; z-index: 100000; background: #fff; top: 10px; right: 10px;">
                    <div class="toast-header">
                    <img src="{{ asset('img/logo.png') }}" style="height: 25px;weight:25px;"
                    class="rounded me-2" alt="...">
                    <strong class="me-auto">@include('frontend.inc.sitename')</strong>
                    <button type="button" class="btn-close" data-bs-dismiss="toast"
                    aria-label="Close"></button>
                    </div>
                    <div class="toast-body" style="text-transform: capitalize;">
                        {!! \Session::get('message') !!}
                    </div>
                </div>
            @endif


        @include('frontend.inc.footer')
    </body>
</html>
