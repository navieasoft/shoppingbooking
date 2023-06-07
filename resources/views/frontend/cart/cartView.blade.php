@extends('frontend.master')

@section('title', 'Cart View')
<link rel="stylesheet" href="{{ asset('frontend/css/style.css') }}">

<style>

    th {
        background-color: #99a4ff !important;
    }

    tr:nth-child(odd) {
    background-color: #ceecff;
    }

   tr:nth-child(even) {
    background-color: #fdc0c9;
    }

    #discount{
        margin-top: -30px;
        margin-bottom: 5px;
        background: #2a8c50;
        color: #fff;
        padding: 10px;
        border-radius: 5px;
        width: calc(100% - 28px);
        margin-left: 13px;
        visibility: hidden;
    }
</style>

@section('content')

<div class="bodyContaint">
    <div class="container">
        <div class="row">
            <div class ="col-md-12">
                <div class = "card mb-5">
                    <div class="card-header" style="margin-bottom: 23px;">
                        <h1>Cart Item</h1>
                    </div>
                    <div class ="card-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Product</th>
                                    <th>Quantity</th>
                                    <th>Price</th>
                                </tr>
                            <thead>
                            <tbody>

                                @php
                                    $price = 0;
                                @endphp

                            @foreach ($cart as $id=>$crts)
                                <tr>
                                    <td>{{ $id+1 }}</td>

                                    @if ($crts->type == 'bus')

                                           @foreach($bus as $buses)

                                                @if($buses->id == $crts->productid)

                                                    <td>{{ $buses->name }}</td>

                                                @endif

                                           @endforeach
                                    @endif

                                    @if ($crts->type == 'air')

                                            @foreach($air as $airs)

                                                @if($airs->id == $crts->productid)

                                                    <td>{{ $airs->name }}</td>

                                                @endif

                                            @endforeach
                                    @endif

                                    @if ($crts->type == 'car')

                                            @foreach($car as $cars)

                                                @if($cars->id == $crts->productid)

                                                    <td>{{ $cars->name }}</td>

                                                @endif

                                            @endforeach

                                    @endif

                                    @if ($crts->type == 'hotel')

                                            @foreach($hotel as $hotels)

                                                @if($hotels->id == $crts->productid)

                                                    <td>{{ $hotels->name }}</td>

                                                @endif

                                            @endforeach

                                    @endif

                                    @if ($crts->type == 'shopping')

                                            @foreach($shopping as $shop)

                                                @if($shop->id == $crts->productid)

                                                    <td>{{ $shop->title }}</td>

                                                @endif

                                            @endforeach

                                    @endif

                                    @if ($crts->type == 'package')

                                            @foreach($package as $packages)

                                                @if($packages->id == $crts->productid)

                                                    <td>{{ $packages->title }}</td>

                                                @endif

                                            @endforeach

                                    @endif

                                    <td>{{$crts->quantity}}</td>
                                    <td>{{$crts->price}}</td>

                                    @php
                                        $price = $price + $crts->price;
                                    @endphp

                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="col-12">
                       <div class="row" style="margin-left: -150px;margin-top: -20px;margin-bottom: 5px;background: #2a8c50;color: #fff;padding: 10px;border-radius: 5px;margin-top: -20px;margin-bottom: 5px;background: #2a8c50;color: #fff;padding: 10px;border-radius: 5px;width: calc(100% - 28px);margin-left: 13px;">
                            <div class="col-10"><h3>Price :</h3></div>
                            <div class="col-2">
                              <h3 style="margin-left: -78px;">{{  $price  }}</h3>
                            </div>
                       </div>


                       <div class="row mt-3 mb-5" style="background: #2a8c50;padding: 10px;width: calc(100% - 30px);margin-left: 15px;border-radius: 5px;">
                            <div class="col-2 px-4">
                                <h6 style="font-size: 19px;margin-top: 10px;color: #fff;"><b>Use Coupon : </b></h6>
                            </div>
                            <div class="col-8">
                                <input type="text" class="form-control" id="couponText">
                            </div>
                            <div class="col-2">
                                <button class="btn btn-info w-100" id="UseCoupon">Use Now</button>
                            </div>
                       </div>

                       <div class="row" id="discount">
                            <div class="col-10"><h3>Discount Price :</h3></div>
                            <div class="col-2">
                                <h3 style="margin-left: -78px;">{{  $price  }}</h3>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
    $('#UseCoupon').on('click' , function(){

        if ($('#couponText').val().length === 0) {
            alert('empty');
            $('#discount').css('visibility' , 'hidden');
        }else{

            $('#discount').css('visibility' , 'visible');
        }


    });
</script>


@stop
