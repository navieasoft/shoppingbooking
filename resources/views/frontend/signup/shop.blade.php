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
            width: 400px;
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
        <small style=" margin-top: -10px; width: 100% !important; float: left; margin-bottom: 10px;"><b>As a vendor</b></small>
        <p>Create an account to easily use navieasoft.com service </p>

        <form action="/joinVendor" method="post">
            @csrf
            <div class="row">
                <div class="col-md-12 mb-1">
                    <label for="exampleFormControlInput1" class="form-label">Country/Region : </label>
                    <select class="form-select" name="country" required>
                        <option value="Saudi Arabia">Saudi Arabia</option>
                        <option value="Bangladesh">Bangladesh</option>
                      </select>
                </div>

                <div class="col-md-12 mb-1">
                    <label for="exampleFormControlInput1" class="form-label">Company Name</label>
                    <input type="text" name="companyName" required class="form-control" id="exampleFormControlInput1">
                </div>

                <div class="col-md-6 mb-1">
                    <label for="exampleFormControlInput1" class="form-label">Trade Licence Number</label>
                    <input type="text" name="licence" required class="form-control" id="exampleFormControlInput1">
                </div>

                <div class="col-md-6 mb-1">
                    <label for="exampleFormControlInput1" class="form-label">Enter Your Mail</label>
                <input type="email" name="email" required class="form-control" id="exampleFormControlInput1">
                </div>
            </div>

            <div class="row">
                <div class="col-md-6 mb-1">
                    <label for="exampleFormControlInput1" class="form-label">Phone number</label>
                    <input type="number" name="phone" required class="form-control" id="exampleFormControlInput1">
                </div>

                <div class="col-md-6 mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Password</label>
                    <input type="password" name="pass" required class="form-control" id="exampleFormControlInput1">
                </div>
            </div>

            <button type="submit" class="btn btn-success btn-sm" style="width: 100%; background-color: #339448;">
                Sign Up
            </button>
        </form>



    </div>


</body>
</html>
