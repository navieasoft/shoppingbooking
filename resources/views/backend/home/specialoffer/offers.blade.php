<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    @include('inc.css')
    <title>Offers</title>
  </head>

  <body>
    @include('inc.left')
    @include('inc.nav')
    @include('inc.right')


        <div class="br-mainpanel">

            <div class="bodyTitle">
                <i class="fa-duotone fa-house-chimney"></i>
                <span>Special offer</span>
            </div>

            <div class="card">
                <div class="col-12">
                    <div class="col-6">
                        <input type="text" class="form-control" placeholder="search" id="searchInput" onkeyup="myFunction()">
                    </div>
                    <div class="col-6">
                        <a href="/addspecialOffer" class="btn btn-primary" style="float: right;">Add Special offer</a>
                    </div>
                </div>
<br>
<br>
                <div class="col-12">
                    <table class="table" id="DataTable">
                        <tr>
                            <th scope="col">SL</th>
                            <th scope="col">Title</th>
                            <th scope="col">Image</th>
                            <th scope="col">Priority</th>
                            <th scope="col">Action</th>
                        </tr>


                        @foreach ($specialoffer as $key=>$s)
                            <tr>
                                <td>{{ $key+1 }}</td>

                                <td>
                                    {{ $s->title }}
                                </td>

                                <td>
                                    <img src="{{ $s->img}}" alt="" style="width: 100px">
                                </td>

                                <td>
                                    {{ $s->priority }}
                                </td>

                                <td>
                                    <form action="editOffers" method="post" style="float:left">
                                        @csrf
                                        <input type="hidden" name="offerId" value="{{ $s->id }}">
                                        <button class="btn btn-light"><i class="fa-duotone fa-edit"></i></button>
                                    </form>

                                        <span style="float: left;font-size: 20px;font-weight: 300;margin-top: 5px;">|</span>

                                    <form action="deleteOffers" method="post" style="float:left">
                                        @csrf
                                        <input type="hidden" name="offerId" value="{{ $s->id }}">
                                        <button class="btn btn-light"><i class="fa-duotone fa-trash"></i></button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach


                    </table>
                </div>
            </div>
        </div>
    @include('inc.js')
<script>
    function myFunction() {
    var input, filter, table, tr, td, i, txtValue;
    input = document.getElementById("searchInput");
    filter = input.value.toUpperCase();
    table = document.getElementById("DataTable");
    tr = table.getElementsByTagName("tr");
    for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[2];
        console.log(td);
        if (td) {
        txtValue = td.textContent || td.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            tr[i].style.display = "";
        } else {
            tr[i].style.display = "none";
        }
        }
    }
    }
</script>

  </body>
</html>
