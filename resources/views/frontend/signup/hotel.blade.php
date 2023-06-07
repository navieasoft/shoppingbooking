<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Signup</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            background-color: #9edbb0;
        }
        .box {
            height: auto;
            width: 450px;
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            box-shadow: 0px 1px 8px 1px #b199998a;
            border-radius: 5px;
            padding: 15px;
            background: #9edbb0; !important;
            color: #fff !important;
        }
        .box{
            background-color: #63a872;
        }
        .box a {
            text-decoration: none;

        }
    </style>
</head>
<body>


    <div class="box">
        <h2><b>Sign Up</b></h2>
        <small style=" margin-top: -10px; width: 100% !important; float: left; margin-bottom: 10px;"><b>As a Hotel</b></small>
        <p>Create an account to easily use navieasoft.com service </p>

        <form action="/joinAir" method="post">
            @csrf
            <div class="row">
                <div class="col-md-12 mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Country/Region : </label>
                    <select class="form-select">
                        <option>Saudi Arabia</option>
                        <option>Bangladesh</option>
                      </select>
                </div>
                <div class="col-md-12 mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Enter your Licence </label>
                    <input type="text" name="companyName" class="form-control" id="exampleFormControlInput1">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Enter your Name </label>
                    <input type="text" name="companyName" class="form-control" id="exampleFormControlInput1">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Enter your phone number</label>
                    <input type="number" name="phone" class="form-control" id="exampleFormControlInput1">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Enter your email</label>
                    <input type="email" name="email" class="form-control" id="exampleFormControlInput1">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Enter your password</label>
                    <input type="password" name="pass" class="form-control" id="exampleFormControlInput1">
                </div>
            </div>



            <button class="btn btn-success btn-sm" style="width: 100%; background-color: #339448;">
                Sign Up
            </button>
        </form>



    </div>


</body>
</html>
