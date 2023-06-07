<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@include('frontend.inc.sitename')</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.2.1/css/all.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>

    <link rel="stylesheet" href="{{ asset('frontend/css/style.css') }}">
</head>
<body>

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


    <section class="py-2 bg_image">
        <div class="container-fluid">
            @include('frontend.inc.header')
        </div>

        <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">


                @foreach ($slider as $i=>$slid)

                <div class="carousel-item
                @if($i == '0')
                    active
                @endif
                " data-bs-interval="10000">
                    <img src="{{ asset($slid->img) }}" class="d-block w-100" alt="...">
                  </div>

                @endforeach





            </div>

            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>

    </section>

    <section class="section_round">
        <div class="container">
            <div class="row" style="margin-top: -18px;">
            <div class="col-2 s_round">
                <input type="text" class="form-control left" placeholder="From" />
            </div>
            <div class="col-2">
                <input type="text" class="form-control" placeholder="To" />
            </div>
            <div class="col-2">
                <input type="date" class="form-control" placeholder="JOURNEY DATE"/>
            </div>
            <div class="col-2">
                <input type="text" class="form-control" placeholder="Person" />
            </div>
            <div class="col-2 s_round">
                <input type="text" class="form-control right" placeholder="Search"/>
            </div>
        </div>
    </div>
    </section>



    {{-- <section class="py-4 serviceSection mt-4">
        <div class="container">
          <div class="row">
            <div class="col">
              <h3 class="p_heading"> Best Category for you</h3>
              <div class="btn_size2">

                @foreach ($AllServiceCity as $citys)
                    <a href="" class="btn text-light btn-p">
                        {{ $citys->to }}
                    </a>
                    <a href="" class="btn text-light btn-p">
                        {{ $citys->form }}
                    </a>
                @endforeach

              </div>
              <hr />
            </div>
          </div>
          <div class="row mt-3 row_width">

            @foreach ($AllServiceAir as $allAir)

                <div class="col-lg-3">
                    <a href="/viewTransport/air/{{ $allAir->id }}">
                    <div class="card">
                      <img src="{{ asset($allAir->img) }}"class="card-img-top tour_img"/>
                      <div class="card-body a_size">
                       {{ $allAir->name }} - {{ $allAir->model }}
                      </div>
                      <p class="paragrap_height">
                        {{ $allAir->form }} - to - {{ $allAir->to }}
                      </p>
                    </div>
                    </a>
                </div>
            @endforeach

            @foreach ($AllServiceBus as $allAir)

            <div class="col-lg-3">
                <a href="/viewTransport/bus/{{ $allAir->id }}">
                <div class="card">
                  <img src="{{ asset($allAir->img) }}"class="card-img-top tour_img"/>
                  <div class="card-body a_size">
                    <a href="">{{ $allAir->name }} - {{ $allAir->model }}</a>
                  </div>
                  <p class="paragrap_height">
                    {{ $allAir->form }} - to - {{ $allAir->to }}
                  </p>
                </div>
                </a>
            </div>
            @endforeach

            @foreach ($AllServiceCar as $allAir)
            <div class="col-lg-3">
                <a href="/viewTransport/car/{{ $allAir->id }}">
                <div class="card">
                  <img src="{{ asset($allAir->img) }}"class="card-img-top tour_img"/>
                  <div class="card-body a_size">
                    <a href="">{{ $allAir->name }} - {{ $allAir->model }}</a>
                  </div>
                  <p class="paragrap_height">
                    {{ $allAir->form }} - to - {{ $allAir->to }}
                  </p>
                </div>
                </a>
              </div>
            @endforeach

            @foreach ($AllServiceHotel as $allAir)
            <div class="col-lg-3">
                <a href="/viewTransport/hotel/{{ $allAir->id }}">
                <div class="card">
                  <img src="{{ asset($AllServiceHotelImg->src) }}"class="card-img-top tour_img"/>
                  <div class="card-body a_size">
                    <a href="">{{ $allAir->name }}</a>
                  </div>
                  <p class="paragrap_height">
                    {{ $allAir->address }}
                  </p>
                </div>
                </a>
              </div>
            @endforeach

            @foreach ($bestShop as $allAir)
            <div class="col-lg-3 mt-3">
                <a href="/viewTransport/hotel/{{ $allAir->id }}">
                <div class="card">
                  <img src="{{ asset($allAir->img) }}"class="card-img-top tour_img"/>
                  <div class="card-body a_size">
                    <a href="">{{ $allAir->title }}</a>
                  </div>
                  <p class="paragrap_height">
                    {{ $allAir->price }}
                  </p>
                </div>
                </a>
              </div>
            @endforeach



          </div>
        </div>
      </section>


    <section class="py-3 shopingSection" style="padding-bottom: 50px !important;"> --}}



        {{-- @foreach ($shoppingCategory as $spcat)



        <div class="container">
          <div class="row mt-4">

              <div class="col">
                <h3 class="p_heading">{{ base64_decode($spcat->category) }} - Shopping</h3>
                <div class="btn_size2">

                    @foreach ($shoppingTag as $spi)

                            @if ($spi->category == $spcat->category)
                                <a href="" class="btn text-light btn-p">{{ $spi->brand }}</a>
                            @endif

                    @endforeach

                </div>
                <hr />
              </div>
          </div>

          <div class="row mt-4 shoppingDivId">

            @foreach ($shopping as $spp)


                @if ($spcat->category == $spp->category)

                <div class="col-md-3 shoppingDiv" onclick="location.href='single-product/{{  $spp->id }}'" style="cursor: pointer">
                    <div class="card card-body card-img-top">
                    <div class="shop_bg_image">
                        <img src="{{ asset($spp->img) }}" alt="" style="padding-left: 24px;height: 150px;width: 100%;object-fit: cover;padding: 0;border-radius: 10px;">
                        <div class="productDetails">
                            <h6> {{ $spp->title }} </h6>
                            <span> {{ $spp->price }} ريال</span>
                        </div>
                        <form action="shoppingCart" method="post">
                                @csrf
                            <input type="hidden" name="type" value="shopping">
                            <input type="hidden" name="id" value="{{ $spp->id }}">
                            <input type="hidden" name="price" value="{{ $spp->price }}">
                            <div class="col-6">
                                <button class="btn btn-primary">Buy Now</button>
                            </div>
                            <div class="col-6">
                                <button class="btn btn-info">Add to Cart</button>
                            </div>
                        </form>
                    </div>
                    </div>
                </div>

                @endif

            @endforeach

          </div>
          <center>
            <br>
            <a href="/Shop-Category" class="btn btn-primary">
                See More
            </a>
          </center>
        </div>


        @endforeach
      </section> --}}




    <section class="py-5" id="FareStarts">
        <div class="container">
            <div class="row">
            <div class="col">
                <h3 class="p_heading">Fare Starts- Travel & Tour</h3>
            </div>
            </div>
            <div class="row mt-3">

                @foreach ($package as $pk)
                    <div class="col-lg-4">
                        <a href="viewPackage/{{ $pk->id }}">
                            <div class="card card-body border-0">
                                <img  src="{{ asset($pk->img) }}"class="card-img-top tour_img" />
                                <div class="row">
                                    <div class="col-lg-7">
                                    <p class="tour_font">
                                        {{ $pk->title }}
                                        <br>
                                        <small style="font-size: 12px;margin-top: -5px;float: left;"> <i class="fa-duotone fa-location-dot"></i> {{ $pk->location }}</small>
                                    </p>
                                    </div>
                                </div>
                                <form action="cart" style="margin-top: -30px;margin-bottom: -10px;" method="post">
                                    @csrf
                                    {{-- <a href="" class="btn btn-success btn_size btn-sm">Book Now</a> --}}
                                    <input type="hidden" name="type" value="package">
                                    <input type="hidden" name="id" value="{{ $pk->id }}">
                                    <input type="hidden" name="price" value="{{ $pk->price }}">
                                    <button class="btn btn-success btn_size btn-sm">Book Now</button>
                                </form>
                            </div>
                        </a>
                    </div>
                @endforeach

                <center>
                    <br>
                    <a href="/viewAllPackage" class="btn btn-primary mb-5">See more</a>
                </center>

            </div>
        </div>
    </section>

      <section class="py-4 airSection">
        <div class="container">
          <div class="row">
            <div class="col">
              <h3 class="p_heading">Airway Booking</h3>
              <div class="btn_size2">
                @foreach ($airCity as $airC)
                    <a href="" class="btn text-light btn-p">{{ $airC->to }}</a>
                @endforeach
              </div>
              <hr />
            </div>
          </div>
          <div class="row mt-3 row_width">
            @foreach ($air as $ar)
            <div class="col-lg-3">
                <a href="viewTransport/air/{{ $ar->id }}">
                <div class="card">
                    <img src="{{ $ar->img }}"class="card-img-top tour_img"/>
                    <div class="card-body a_size">
                    <a href="">{{ $ar->name }} - {{ $ar->model}}</a>
                    </div>
                    <p class="paragrap_height" style="text-transform: capitalize;font-weight:bold;">{{ $ar->class }}</p>
                    <p class="paragrap_height" style="text-transform: capitalize;">{{ $ar->form }} to {{ $ar->to }}</p>

                    <form action="/cart" style="margin-top: 25px;margin-bottom: -10px;" method="post">
                        @csrf
                        <input type="hidden" name="type" value="air">
                        <input type="hidden" name="id" value="{{ $ar->id }}">
                        <input type="hidden" name="price" value="{{ $ar->price }}">
                        <button class="btn btn-success btn_size btn-sm">Book Now</button>
                    </form>


                </div>



            </a>
            </div>
            @endforeach

            <center>
                <br>
                <a href="/booking/air" class="btn btn-primary">See more</a>
            </center>

          </div>
        </div>
      </section>

      <section class="py-4 hotelSection">
        <div class="container">
          <div class="row">
            <div class="col">
              <h3 class="p_heading">Hotel Booking</h3>
              <div class="btn_size2">


                @foreach ($hotelCity as $hc)
                    @php
                        $ct = explode(" ",$hc->address)
                    @endphp

                    <a href="" class="btn text-light btn-p">{{ $ct[0] }}</a>
                @endforeach

              </div>
              <hr />
            </div>
          </div>
          <div class="row mt-3 row_width">

                @foreach ($hotel as $htl)
                <div class="col-lg-3">
                    <div class="card">
                        <a href="hotelFullView/{{ $htl->id }}">
                            @foreach ($hotelPic as $hg)

                                @if ($hg->galleryId == $htl->gallery_id)
                                    <img src="{{ $hg->src }}"class="card-img-top tour_img"/>
                                @endif

                            @endforeach
                        <div class="card-body a_size">
                            <a href="">{{ $htl->name }}</a>
                        </div>
                        <p class="paragrap_height">
                            {{ $htl->address }}
                        </p>
                        </a>

                        <form action="/carbooking" style="margin-top: -30px;margin-bottom: -10px;" method="post">
                            @csrf
                            <input type="hidden" name="type" value="hotel">
                            <input type="hidden" name="id" value="{{ $htl->id }}">
                            <input type="hidden" name="price" value="{{ $htl->price }}">
                            <button class="btn btn-success btn_size btn-sm"
                            style="margin-top: 20px;margin-bottom: 20px;">Book Now</button>
                        </form>

                    </div>
                  </div>
                @endforeach


                <center>
                    <br>
                    <a href="/viewAllHotel" class="btn btn-primary">See more</a>
                </center>

          </div>
        </div>
      </section>

      <section class="py-4 busSection">
        <div class="container">
          <div class="row">
            <div class="col">
              <h3 class="p_heading">Bus Booking</h3>


              <div class="btn_size2">

                @foreach ($busCity as $bc)
                        <a href="" class="btn text-light btn-p">{{ $bc->form }}</a>
                @endforeach


              </div>
              <hr />
            </div>
          </div>
          <div class="row mt-3 row_width">

            @foreach ($bus as $bs)

            <div class="col-lg-3">
                <a href="viewTransport/bus/{{ $bs->id }}">
                <div class="card">
                  <img src="{{ $bs->img }}"class="card-img-top tour_img"/>
                  <div class="card-body a_size">
                    <a href="">{{ $bs->name }} - {{ $bs->model }}</a>
                  </div>
                  <p class="paragrap_height" style="font-weight: bold;text-transform:capitalize;">{{ $bs->coach }}</p>
                  <p class="paragrap_height">{{ $bs->form }}  - {{ $bs->to }} </p>


                <form action="/busbooking" style="margin-top: -30px;margin-bottom: -10px;" method="post">
                    @csrf
                    <input type="hidden" name="type" value="bus">
                    <input type="hidden" name="id" value="{{ $bs->id }}">
                    <input type="hidden" name="price" value="{{ $bs->price }}">
                    <button class="btn btn-success btn_size btn-sm" style="margin-top: 20px;margin-bottom: 20px;">Book Now</button>
                </form>


                </div>
                </a>


            </div>
            @endforeach


            <center>
                <br>
                <a href="/booking/bus" class="btn btn-primary">See more</a>
            </center>

          </div>
        </div>
      </section>

      <section class="py-4 busSection">
        <div class="container">
          <div class="row">
            <div class="col">
              <h3 class="p_heading">Car Booking</h3>


              <div class="btn_size2">

                @foreach ($carCity as $bc)
                        <a href="" class="btn text-light btn-p">{{ $bc->to }}</a>
                @endforeach


              </div>
              <hr />
            </div>
          </div>
          <div class="row mt-3 row_width">

            @foreach ($car as $cr)

            <div class="col-lg-3">
                <a href="viewTransport/car/{{ $cr->id }}">
                    <div class="card">
                    <img src="{{ $cr->img }}"class="card-img-top tour_img"/>
                    <div class="card-body a_size">
                        <a href="">{{ $cr->name }} - {{ $cr->model }}</a>
                    </div>
                    <p class="paragrap_height" style="font-weight: bold;text-transform:capitalize;">{{ $cr->type }}</p>
                    <p class="paragrap_height">{{ $cr->form }}  - {{ $cr->to }} </p>

                    <form action="/carbooking" style="margin-top: -30px;margin-bottom: -10px;" method="post">
                        @csrf
                        <input type="hidden" name="type" value="car">
                        <input type="hidden" name="id" value="{{ $cr->id }}">
                        <input type="hidden" name="price" value="{{ $cr->price }}">
                        <button class="btn btn-success btn_size btn-sm"
                        style="margin-top: 20px;margin-bottom: 20px;">Book Now</button>
                    </form>

                    </div>
                </a>
              </div>
            @endforeach


            <center>
                <br>
                <a href="/booking/car" class="btn btn-primary">See more</a>
            </center>

          </div>
        </div>
      </section>

      <section class="py-4 serviceSection">
        <div class="container">
          <div class="row">
            <div class="col">
              <h3 class="p_heading">All Service for you</h3>
              <div class="btn_size2">

                @foreach ($AllServiceCity as $citys)
                    <a href="" class="btn text-light btn-p">
                        {{ $citys->to }}
                    </a>
                    <a href="" class="btn text-light btn-p">
                        {{ $citys->form }}
                    </a>
                @endforeach



              </div>
              <hr />
            </div>
          </div>
          <div class="row mt-3 row_width">

            @foreach ($AllServiceAir as $allAir)

                <div class="col-lg-3">
                    <a href="/viewTransport/air/{{ $allAir->id }}">
                    <div class="card">
                      <img src="{{ asset($allAir->img) }}"class="card-img-top tour_img"/>
                      <div class="card-body a_size">
                        <a href="">{{ $allAir->name }} - {{ $allAir->model }}</a>
                      </div>
                      <p class="paragrap_height">
                        {{ $allAir->form }} - to - {{ $allAir->to }}
                      </p>
                    </div>
                    </a>
                </div>
            @endforeach

            @foreach ($AllServiceBus as $allAir)

            <div class="col-lg-3">
                <a href="/viewTransport/bus/{{ $allAir->id }}">
                <div class="card">
                  <img src="{{ asset($allAir->img) }}"class="card-img-top tour_img"/>
                  <div class="card-body a_size">
                    <a href="">{{ $allAir->name }} - {{ $allAir->model }}</a>
                  </div>
                  <p class="paragrap_height">
                    {{ $allAir->form }} - to - {{ $allAir->to }}
                  </p>
                </div>
                </a>
            </div>
            @endforeach

            @foreach ($AllServiceCar as $allAir)
            <div class="col-lg-3">
                <a href="/viewTransport/car/{{ $allAir->id }}">
                <div class="card">
                  <img src="{{ asset($allAir->img) }}"class="card-img-top tour_img"/>
                  <div class="card-body a_size">
                    <a href="">{{ $allAir->name }} - {{ $allAir->model }}</a>
                  </div>
                  <p class="paragrap_height">
                    {{ $allAir->form }} - to - {{ $allAir->to }}
                  </p>
                </div>
                </a>
              </div>
            @endforeach

            @foreach ($AllServiceHotel as $allAir)
            <div class="col-lg-3">
                <a href="/viewTransport/hotel/{{ $allAir->id }}">
                <div class="card">
                  <img src="{{ asset($AllServiceHotelImg->src) }}"class="card-img-top tour_img"/>
                  <div class="card-body a_size">
                    <a href="">{{ $allAir->name }}</a>
                  </div>
                  <p class="paragrap_height">
                    {{ $allAir->address }}
                  </p>
                </div>
                </a>
              </div>
            @endforeach




          </div>
        </div>
      </section>
      <section class="py-5 nextTrip">
        <div class="container">
          <h3 class="p_heading">Idea for next trip</h3>
          <div class="row row_left">
            <div class="col-md-8">

                @foreach ($Sbanner as $sb)
                 <div class="card">
                    <img src="{{ asset($sb->img) }}"class="card-img-top tour_img img_cl_1"/ style="object-fit: cover">
                    <div class="card-body a_size">
                     <h4> <a href="" style="font-size: unset;margin-left: -20px;">{!! $sb->name !!}</a></h4>
                    </div>
                    <div style="height: 53px;overflow:hidden;">
                        {!! substr($sb->description, 0, 800) !!}...
                    </div>

                  </div>
                @endforeach

            </div>
            <div class="col-md-4">

                @foreach ($banners as $bns)
                <div class="box_sizing mt-1">
                    <div class="first_col" style="overflow: hidden">
                        <img src="{{ asset($bns->img) }}" style="width: 100%;border-radius: 10px;" class="img_col">
                    </div>
                    <div class="second_col">
                      <div class="databox">
                            <h4>
                                <b>
                                    <a href="">{{ $bns->name }}</a>
                                </b>
                            </h4>
                            <div style="margin-top: -5px;">
                                {!! substr($bns->description, 0, 50) !!}
                            </div>
                      </div>
                    </div>
                  </div>
                @endforeach



            </div>
            </div>
          </div>
        </div>
      </section>

      <section class="py-5 bannerSection">
        <div class="container bg_imgs">
            <div class="">
              <h3 class="text-center add_center">Get a Big discount</h3>
            </div>
        </div>
      </section>

      <section class="helpSection py-3" style="padding-bottom: 50px !important;">
        <div class="container">
          <div class="row mt-2">
            <h3 class="help_heading">Use Coupon for Surprising discount </h3>
          </div>
          <div class="row mt-4">

            @foreach ($coupon as $cpn)

            <div class="col-md-4">
                <div class="card card-body help_move">
                    <h3 class="help_head" style="margin: 0px">{{ $cpn->title }}</h3>
                    <h1><b>{{ $cpn->amount }}

                        @if ($cpn->type == 'persent')
                            %
                        @else
                        ريال
                        @endif

                    </b></h1>
                    <p>Use "<b>{{ $cpn->code }}</b>" this Coupon</p>
                </div>
            </div>

            @endforeach



          </div>
        </div>
      </section>


      <section class="partner" style="padding: 25px !important;">
        <div class="container">
          <div class="row partner_row">
            <h3 class="partner_head">Brand</h3>
          </div>
          <div class="row mt-4 customer-logos">
            @foreach ($brand as $bnd)
              <div class="col-md-2">
                <div class="card card-body card_radious card_sizes" data-toggle="tooltip" data-placement="top" title="{{ $bnd->name }}">
                  <center>
                    <img src="{{ $bnd->img }}" alt="" class="images_height">
                  </center>
                </div>
              </div>
            @endforeach
          </div>
        </div>
      </section>


    @include('frontend.inc.footer')

    <style>
        .popup {
            height: 100%;
            width: 100%;
            background: #613333c4;
            position: fixed;
            left: 50%;
            top: 50%;
            transform: translate(-50% , -50%);
            z-index: 99999999999;
        }
        .popupData {
            height: 100%;
            width: 100%;
            background: #52a06de8;
            position: fixed;
            left: 50%;
            top: 50%;
            transform: translate(-50% , -50%);
            z-index: 99999999999;
            border-radius: 10px;
            padding: 60px;
        }

        .popupData .col-6 {
            height: 100%;
            position: relative;
            height: 100vh;
        }
        .popupData .col-6 button {
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            width: 70%;
            background: #90f4a7;
            border-color: #90f4a7;
            font-size: 30px;
        }

        .popupData h2{
            color: #62d34d;
            font-size: 35px;
            margin-bottom: -80px;
            margin-top: 25px;
        }


        @media only screen and (max-width: 450px) {
            .shoppinBookingBth {
                min-width: 100% !important;
                height: 130px !important;
            }

            .shoppinBookingBth:first-child {
                margin-top: 65px !important;
            }
        }

    </style>
    <div class="popup">
        <div class="popupData">
            <div class="col-12">
                <h2>You are interested in ?</h2>
            </div>
            <div class="col-12">
                <div class="row">
                    <div class="col-6 shoppinBookingBth">
                        <button class="btn btn-light" onclick="window.location.href='/Shop-Category'">
                            <i class="fa-duotone fa-cart-shopping-fast"></i> <br>
                            Shopping
                        </button>
                    </div>
                    <div class="col-6 shoppinBookingBth">
                        <button class="btn btn-light" onclick="$('.popup').remove()">
                            <i class="fa-duotone fa-calendar-lines"></i> <br>
                            Booking
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script>

    <script src="frontend/js/script.js"></script>

</body>
</html>
