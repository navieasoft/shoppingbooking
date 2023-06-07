<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    @include('inc.css')
    <title>Add new Product</title>
    <style>
        .col-md-6 , .col-md-12{
            margin-bottom: 20px;
        }
    </style>
  </head>

  <body>
    @include('inc.left')
    @include('inc.nav')
    @include('inc.right')


    <div class="br-mainpanel">
        <div class="bodyTitle">
            <i class="fa-duotone fa-boxes-packing"></i>
            Add New Category
        </div>

        <div class="card p-4">

            <form action="{{ route('uploadProductCategory') }}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="row">

                    <div class="col-md-12">
                        <label for="">Product Category Name</label>
                        <input required type="text" class="form-control" name="name">
                    </div>

                    <div class="col-md-12">
                        <center>
                            <button class="btn btn-primary btn-sm">Add Now</button>
                        </center>
                    </div>
                </div>
            </form>

        </div>
    </div>


    @include('inc.js')
  </body>
</html>
