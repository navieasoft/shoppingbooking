<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    @include('inc.css')
    <title>Manage Product</title>
  </head>

  <body>
    @include('inc.left')
    @include('inc.nav')
    @include('inc.right')



    <div class="br-mainpanel">
        <div class="bodyTitle">
            <i class="fa-duotone fa-boxes-packing"></i>
            Manage Product Category
        </div>

        <div class="card p-4">

            <div class="row">
                <div class="col-md-6">
                    <input type="text" id="search" class="form-control" placeholder="Search">
                </div>
                <div class="col-md-6">
                    <a href="/addCategory" class="btn btn-primary btn-sm float-right">
                        <i class="fa-regular fa-plus"></i> Add  </a>
                </div>
            </div>

            <table class="table table-striped">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Category Name</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody>
                    @foreach ($shoppingCateogry as $sc)
                        <tr>
                            <td> {{ $sc->id }} </td>
                            <td> {{ base64_decode($sc->category) }} </td>
                            <td> <a href="deleteProductCategory/{{ $sc->id }}"><i class="fa-duotone fa-trash-can"></i></a> </td>
                        </tr>
                    @endforeach
                </tbody>
              </table>
        </div>
    </div>

    @include('inc.js')
  </body>
</html>
