<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" type="image/png" href="{{ asset('favicon/favicon-96x96.png') }}" sizes="96x96" />
<link rel="icon" type="image/svg+xml" href="{{ asset('favicon/favicon.svg') }}" />
<link rel="shortcut icon" href="{{ asset('favicon/favicon.ico') }}" />
<link rel="apple-touch-icon" sizes="180x180" href="{{ asset('favicon/apple-touch-icon.png') }}" />
<meta name="apple-mobile-web-app-title" content="PayConnect" />
<meta name="description" content="{{ config('app.name') }} lets you earn daily income by purchasing products. Turn every purchase into a smart investment.">
  <meta name="keywords" content="earn daily income, buy to earn, investment products, passive income, product-based ROI, {{ config('app.name') }}, online earning, income from shopping">
<!-- Canonical URL -->
  <link rel="canonical" href="{{ url()->current() }}">
<!-- Open Graph / Facebook -->
  <meta property="og:title" content="Buy Products & Earn Daily | {{ config('app.name') }}">
  <meta property="og:description" content="Invest by buying products on {{ config('app.name') }} and earn daily income. Join a smarter way to grow your money.">
  <meta property="og:image" content="{{ asset('logo.png') }}"> <!-- Replace with actual image URL -->
  <meta property="og:url" content="{{ url()->current() }}">
  <meta property="og:type" content="website">
  <meta property="og:site_name" content="{{ config('app.name') }}">

  <!-- Twitter Cards -->
  <meta name="twitter:card" content="summary_large_image">
  <meta name="twitter:title" content="Buy & Earn Daily | {{ config('app.name') }}">
  <meta name="twitter:description" content="Turn purchases into profits. Earn daily income by investing in products on {{ config('app.name') }}.">
  <meta name="twitter:image" content="{{ asset('logo.png') }}"> <!-- Replace with actual image URL -->
  <meta name="twitter:site" content=""> <!-- Optional -->


<link rel="manifest" href="{{ asset('favicon/site.webmanifest') }}" />
<link rel="stylesheet" href="{{ asset('vitecss/fonts/fonts.css?v='.config('versions.vite_version').'') }}">
<link rel="stylesheet" href="{{ asset('vitecss/css/app.css?v='.config('versions.vite_version').'') }}">
<link rel="manifest" href="{{ asset('manifest.json') }}" class="">
<title>{{ config('app.name') }} | Users | @yield('title')</title>

    @yield('css')
</head>
<section class="pos-fixed loading column justify-center top-0 left-0 bottom-0 right-0 bg higher">
<svg fill="var(--primary)" height="100" width="100" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><defs><linearGradient id="RadialGradient8932"><stop offset="0%" stop-color="var(--primary)" stop-opacity="1"/><stop offset="100%" stop-color="var(--primary)" stop-opacity="0.25"/></linearGradient></defs><style>@keyframes spin8932 {
            to {
                transform: rotate(360deg);
            }
        }

        #circle8932 {
            transform-origin: 50% 50%;
            stroke: url(#RadialGradient8932);
            fill: none;
            animation: spin8932 .5s infinite linear;
            :

        }</style><circle cx="10" cy="10" r="8" id="circle8932" stroke-width="2"/></svg>
</section>
@include('components.skeletons')
<body class="column bg justify-center">
   <header class="pos-sticky average row align-center space-between no-select pc-x-padding stick-top w-full bg border-bottom-thin p-10">
    <img src="{{ asset('images/avatar.svg') }}" height="50" alt="">
    <strong class="desc">@yield('title')</strong>
    <img src="{{ asset('logo.png') }}" height="30" alt="">
   </header>
   <main class="flex-auto bg pc-x-padding w-full">
    <section class="popup" onclick="HidePopUp(MyFunc.PopUpHidden)">
      <div onclick="StopPropagation(event)" class="child">@yield('popup_child')</div>
    </section>
    <section class="slideup" onclick="HideSlideUp()">
      <div class="child" onclick="StopPropagation(event)">@yield('slideup_child')</div>
    </section>
     @yield('main')
   </main>
   <footer class="box-shadow-silver pc-x-padding no-select bg w-full pos-sticky stick-bottom row space-between">
    <div onclick="spa(event,'{{ url('users/dashboard') }}',this)" class="column pc-pointer nav p-10 g-5 w-full align-center">
       <div class="svg p-5 align-center column w-full">
         <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="CurrentColor" viewBox="0 0 256 256"><path d="M224,120v96a8,8,0,0,1-8,8H40a8,8,0,0,1-8-8V120a15.87,15.87,0,0,1,4.69-11.32l80-80a16,16,0,0,1,22.62,0l80,80A15.87,15.87,0,0,1,224,120Z"></path></svg>
       
       </div>
        <span>Home</span>
    </div>

    <div onclick="spa(event,'{{ url('users/products') }}',this)" class="column pc-pointer nav p-10 g-5 w-full align-center">
       <div class="svg p-5 align-center column w-full">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="CurrentColor" viewBox="0 0 256 256"><path d="M224,64H176V56a24,24,0,0,0-24-24H104A24,24,0,0,0,80,56v8H32A16,16,0,0,0,16,80v28a4,4,0,0,0,4,4H64V96.27A8.17,8.17,0,0,1,71.47,88,8,8,0,0,1,80,96v16h96V96.27A8.17,8.17,0,0,1,183.47,88,8,8,0,0,1,192,96v16h44a4,4,0,0,0,4-4V80A16,16,0,0,0,224,64Zm-64,0H96V56a8,8,0,0,1,8-8h48a8,8,0,0,1,8,8Zm80,68v60a16,16,0,0,1-16,16H32a16,16,0,0,1-16-16V132a4,4,0,0,1,4-4H64v16a8,8,0,0,0,8.53,8A8.17,8.17,0,0,0,80,143.73V128h96v16a8,8,0,0,0,8.53,8,8.17,8.17,0,0,0,7.47-8.25V128h44A4,4,0,0,1,240,132Z"></path></svg>
       
       </div>
        <span>Products</span>
    </div>
    <div onclick="spa(event,'{{ url('users/recharge') }}',this)" class="column pc-pointer nav p-10 g-5 w-full align-center">
       <div class="svg p-5 align-center column w-full">
         <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="CurrentColor" viewBox="0 0 256 256"><path d="M128,24A104,104,0,1,0,232,128,104.13,104.13,0,0,0,128,24Zm40,112H136v32a8,8,0,0,1-16,0V136H88a8,8,0,0,1,0-16h32V88a8,8,0,0,1,16,0v32h32a8,8,0,0,1,0,16Z"></path></svg>
       
       </div>
        <span>Recharge</span>
    </div>
    <div onclick="spa(event,'{{ url('users/withdraw') }}',this)" class="column pc-pointer nav p-10 g-5 w-full align-center">
       <div class="svg p-5 align-center column w-full">
         <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="CurrentColor" viewBox="0 0 256 256"><path d="M208,48H48A24,24,0,0,0,24,72V184a24,24,0,0,0,24,24H208a24,24,0,0,0,24-24V72A24,24,0,0,0,208,48Zm-56,72a24,24,0,0,1-48,0,8,8,0,0,0-8-8H40V96H216v16H160A8,8,0,0,0,152,120ZM48,64H208a8,8,0,0,1,8,8v8H40V72A8,8,0,0,1,48,64Z"></path></svg>
        
       </div>
        <span>Withdraw</span>
    </div>
    <div onclick="spa(event,'{{ url('users/profile') }}',this)" class="column pc-pointer nav p-10 g-5 w-full align-center">
       <div class="svg p-5 align-center column w-full">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="CurrentColor" viewBox="0 0 256 256"><path d="M96.26,37A8,8,0,0,1,102,27.29a104.11,104.11,0,0,1,52,0,8,8,0,0,1-2,15.75,8.15,8.15,0,0,1-2-.26,88,88,0,0,0-44,0A8,8,0,0,1,96.26,37ZM33.35,110a8,8,0,0,0,9.85-5.57,88,88,0,0,1,22-38.09A8,8,0,0,0,53.79,55.14a104.05,104.05,0,0,0-26,45A8,8,0,0,0,33.35,110Zm179.44-5.56a8,8,0,0,0,15.42-4.28,104,104,0,0,0-26-45,8,8,0,1,0-11.41,11.22A88,88,0,0,1,212.79,104.45ZM222.66,146a8,8,0,0,0-9.85,5.58,87.61,87.61,0,0,1-19,34.83A79.75,79.75,0,0,0,172,165.11a4,4,0,0,0-4.83.31,59.81,59.81,0,0,1-78.27,0,4,4,0,0,0-4.84-.31,79.52,79.52,0,0,0-22,21.12,87.7,87.7,0,0,1-18.83-34.67,8,8,0,0,0-15.42,4.28,104.07,104.07,0,0,0,200.46,0A8,8,0,0,0,222.66,146ZM128,164a44,44,0,1,0-44-44A44.05,44.05,0,0,0,128,164Z"></path></svg>
        </div> 
        <span>Profile</span>
    </div>
    
   </footer>
    
    <script src="{{ asset('vitecss/js/app.js?v='.config('versions.vite_version').'') }}"></script>
    @yield('js')
</body>
</html>