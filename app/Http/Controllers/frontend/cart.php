<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Session;

use Illuminate\Support\Facades\DB;

use Illuminate\Support\Facades\View;

class cart extends Controller
{
    public function add(Request $req)
    {

        if (empty(session()->get('userId'))) {
            return redirect()->back()->with('message', 'Oops you have to login first !');
        }

        $existingItem = DB::table('cart')
        ->where('type' , $req->type)
        ->where('productid' , $req->id)
        ->where('userId' , session()->get('userId'))
        ->get();



        if (count($existingItem) == 0) {

            $addvendor = DB::table('cart')->insert([
                'userId' => session()->get('userId'),
                'productid' => $req->id,
                'type' => $req->type,
                'quantity' => '1',
                'price' => $req->price,
                'discount' => '',
            ]);

            return redirect()->back()->with('message', 'Add Successfully !');

        }else {
            return redirect()->back()->with('message', 'Already Added On Cart !');
        }
    }


    public function shoppingCart(Request $req) {

        if (empty(session()->get('userId'))) {
            return redirect()->back()->with('message', 'Oops you have to login first !');
        }


        $existingItem = DB::table('cart')
        ->where('type' , $req->type)
        ->where('productid' , $req->id)
        ->where('userId' , session()->get('userId'))
        ->get();


        if (count($existingItem) == 0) {

            $addvendor = DB::table('cart')->insert([
                'userId' => session()->get('userId'),
                'productid' => $req->id,
                'type' => $req->type,
                'quantity' => '1',
                'price' => $req->price,
                'discount' => '',
            ]);

            return redirect()->back()->with('message', 'Add Successfully !');

        }else {
            return redirect()->back()->with('message', 'Already Added On Cart !');
        }


    }

    public function shoppingCartSingleProduct(Request $req) {

        if (empty(session()->get('userId'))) {
            return redirect()->back()->with('message', 'Oops you have to login first !');
        }


        $existingItem = DB::table('cart')
        ->where('type' , $req->type)
        ->where('productid' , $req->id)
        ->where('userId' , session()->get('userId'))
        ->get();


        if (count($existingItem) == 0) {

            $addvendor = DB::table('cart')->insert([
                'userId' => session()->get('userId'),
                'productid' => $req->id,
                'type' => $req->type,
                'quantity' => $req->quantity,
                'price' => $req->price,
                'discount' => '',
            ]);

            return redirect()->back()->with('message', 'Add Successfully !');

        }else {
            return redirect()->back()->with('message', 'Already Added On Cart !');
        }


    }





    public function addBusBooking(Request $req)
    {


        if (empty(session()->get('userId'))) {
            return redirect()->back()->with('message', 'Oops you have to login first !');
        }


        $existingItem = DB::table('cart')
        ->where('type' , $req->type)
        ->where('productid' , $req->id)
        ->where('userId' , session()->get('userId'))
        ->get();

        if (count($existingItem) == 0) {

            $addvendor = DB::table('cart')->insert([
                'userId' => session()->get('userId'),
                'productid' => $req->id,
                'type' => $req->type,
                'quantity' => '1',
                'price' => $req->price,
                'discount' => '',
            ]);

            return redirect()->back()->with('message', 'Add Successfully !');

        }else {
            return redirect()->back()->with('message', 'Already Added On Cart !');
        }

    }





    public function addair(Request $req)
    {

        if (empty(session()->get('userId'))) {
            return redirect()->back()->with('message', 'Oops you have to login first !');
        }

        $existingItem = DB::table('cart')
        ->where('type' , $req->type)
        ->where('productid' , $req->id)
        ->where('userId' , session()->get('userId'))
        ->get();

        if (count($existingItem) == 0) {

            $addvendor = DB::table('cart')->insert([
                'userId' => session()->get('userId'),
                'productid' => $req->id,
                'type' => $req->type,
                'quantity' => '1',
                'price' => $req->price,
                'discount' => '',
            ]);

            return redirect()->back()->with('message', 'Add Successfully !');

        }else {
            return redirect()->back()->with('message', 'Already Added On Cart !');
        }
    }



    public function carbooking(Request $req)
    {

        if (empty(session()->get('userId'))) {
            return redirect()->back()->with('message', 'Oops you have to login first !');
        }

        $existingItem = DB::table('cart')
        ->where('type' , $req->type)
        ->where('productid' , $req->id)
        ->where('userId' , session()->get('userId'))
        ->get();

        if (count($existingItem) == 0) {

            $addvendor = DB::table('cart')->insert([
                'userId' => session()->get('userId'),
                'productid' => $req->id,
                'type' => $req->type,
                'quantity' => '1',
                'price' => $req->price,
                'discount' => '',
            ]);

            return redirect()->back()->with('message', 'Add Successfully !');

        }else {
            return redirect()->back()->with('message', 'Already Added On Cart !');
        }
    }


    public function viewCart(){

        $cart = DB::table('cart')
        ->where('userId' , session()->get('userId'))
        ->get();

        $air = DB::table('air')->get(['name' , 'id']);
        $bus = DB::table('bus')->get(['name' , 'id']);
        $car = DB::table('car')->get(['name' , 'id']);
        $hotel = DB::table('hotel')->get(['name' , 'id']);
        $shopping = DB::table('shopping')->get(['title' , 'id']);


        $package = DB::table('package')->get(['title' , 'id']);
        return view("frontend.cart.cartView" , compact('cart' , 'air' , 'car' , 'bus' , 'package' , 'hotel' , 'shopping'));

    }

}
