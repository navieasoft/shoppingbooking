<style>
.header .searchbox {
    width: 100%;
    height: 50px;
    background: #2a8c50 !important;
    padding: 10px;
    border-radius: 50px;
    -webkit-border-radius: 50px;
    -moz-border-radius: 50px;
    -ms-border-radius: 50px;
    -o-border-radius: 50px;
    position: relative;
    margin-top: 70px;
}


.header .searchbox .col-md-4:first-child img {
    width: 100px;
    margin: 0 auto;
    display: block;
}

.header .searchbox .col-md-4 ul {
    padding: 0px;
}

.header .searchbox .col-md-4 ul li{
    float: left;
    list-style: none;
    margin: 0px 10px;
}

.header .searchbox .col-md-4 ul li a {
    color: #00aeef;
    text-decoration: none;
    transition: .3s linear;
    -webkit-transition: .3s linear;
    -moz-transition: .3s linear;
    -ms-transition: .3s linear;
    -o-transition: .3s linear;
}

.header .searchbox .col-md-4 ul li a:hover {
    color: #6921f5;
    transition: .3s linear;
    -webkit-transition: .3s linear;
    -moz-transition: .3s linear;
    -ms-transition: .3s linear;
    -o-transition: .3s linear;
}


.header .searchbox .col-md-4 .dropdown button {
    background: none;
    border: none;
    outline: none;
}

.header .searchbox .col-md-4 .dropdown button:first-child {
    padding: 0px !important;
}

.header .searchbox .col-md-4 .dropdown button img {
    height: 20px;
    width: 20px;
    object-fit: cover;
}

.searchbox .col-md-4:nth-child(2) a{
    color: #fff !important;
}

.searchbox .col-md-4:nth-child(2) a:hover {
    color: #6921f5 !important;
}

.header .searchbox .bas {
    padding: 5px 15px;
    border-radius: 50px;
    background: none;
    font-size: 14px !important;
    color: #f3fcff !important;
}

.header .searchbox .bas:hover {
    color: #c643ab !important;
}

.dropdown-menu li {
    width: 100%;
    float: left;
}

.header .searchbox .bas {
    padding: 5px 15px;
    border-radius: 50px;
    background: none;
    border: 2px solid #00aeef;
    color: #00aeef;
}


.header .searchbox .sign {
    padding: 5px 15px;
    border-radius: 50px;
    background: #00AEEF;
    border: 2px solid #00AEEF;
    color: #fff !important;
}







footer {
    background: #2a8c50;
    padding: 50px;
    padding-bottom: 10px;
    color: #fff;
}

footer .col-md-4 {
    padding: 50px;
}

footer .col-md-4 img {
    width: 100%;
    margin-top: -38px;
    margin-left: -50px;
}

footer .col-md-2 ul {
    padding: 0px;
}

footer .col-md-2 ul li {
    list-style: none;
}

footer .col-md-2 h5 {
    font-weight: bold;
}

footer .col-md-2 ul li a {
    text-decoration: none;
    color: #fff;
}

footer .col-md-2 ul li a:hover{
    color: #000;
}

footer center {
    margin-top: 15px !important
}




@media only screen and (max-width: 1300px) {
    .searchbox .col-md-4:first-child {
     width: 150px !important;
     margin-left: -25px !important;
    }
    .searchbox .col-md-4:last-child {
     width: 400px !important;
     position: absolute;
     right: 10px;
    }

    .searchbox .col-md-4:nth-child(2) {
     width: 400px;
    }
 }


 @media only screen and (max-width: 1000px) {
     .container {
         min-width: 100%;
     }
 }


 @media only screen and (max-width: 900px) {
     .searchbox {
         margin-top: 35px;
     }

     .searchbox .col-md-4:last-child {
        position: absolute;
        top: -45px;
        right: -168px;
    }

    .dropdown-toggle
    {
        margin-top: -5px !important;
    }

    .header .searchbox .col-md-4 .dropdown button img {
        display: none !important;
    }

     .searchbox .col-md-4:nth-child(2) {
         position: absolute;
         right: 0;
     }

     .bas {
         border-color: #fff !important;
         color: #fff !important;
     }

 }

 @media only screen and (max-width: 800px) {
     footer .col-md-2 {
         width: 50%;
     }
 }




@media only screen and (max-width: 450px) {

    .header .searchbox .col-md-4 ul li a {
        font-size: 12px;
        margin-top: 4px;
        float: left;
    }

    .searchbox .col-md-4:nth-child(2) {
        position: absolute;
        right: -85px;
    }

    footer .col-md-2 {
        width: 100%;
    }
}

footer .accept .col-md-6 {
    width: 100% !important;
}

@media only screen and (max-width: 1000px){
    footer .col-md-4 img {
        height: auto;
        width: 240px;
        margin-left: -120px;
    }

    footer .container {
        margin-right: 0px !important;
    }

    footer ul li {
        font-size: 18px;
        list-style: none;
    }

    footer .accept .col-md-6 {
        width: 50% !important;
    }
}




section:nth-child(odd) {
    background: #f4efef !important;
}

section:nth-child(even) {
    background: #fbe4e4 !important;
}

body {
    background: #fbe4e4 !important;
}

footer ul {
    padding: 0px;
}

footer ul li {
	font-size: 13px;
	list-style: none;
}

footer ul li a {
    color: #fff;
}

footer ul li a:hover{
    color: #9acbff;
}

.col-md-4:last-child .sign {
    font-size: 10px !important;
}



.dropdown-menu a {
	color: blue !important;
	font-size: 15px !important;
	padding: 10px 0px;
	margin: -5px 0;
	float: left;
}

.dropdown-menu a:hover {
    color: #2a8c50 !important;
}


footer .accept .col-md-6:last-child h4 {
    width:100%; text-align:right;margin-left: -92px;float: left;
}

footer .accept .col-md-6:last-child img {
    width: 250px;float:right
}

.copyrightSection .col-md-6:last-child {
    text-align: right;padding-right: 45px;font-weight:900;
}


.header {
    margin-top: 15px;
}

 a {
    text-decoration: none !important;
}

@media only screen and (max-width: 1000px) {
    footer .col-md-4 img {
        height: auto;
        width: 240px;
    }
}

@media only screen and (max-width: 900px) {
    footer .container {
        margin: 0px !important;
    }

    footer .accept .col-md-6 {
        width: 50% !important;
    }


    footer .accept .col-md-6 img {
        width: 80%;
    }

    footer .accept .col-md-6:last-child img {
        width: 200px;
        float: left;
        margin-left: 82px;
    }

}

@media only screen and (max-width: 800px) {
    footer .accept .col-md-6 {
        width: 100% !important;
        text-align: center;
        margin-bottom: 20px;
    }

    footer .accept .col-md-6:last-child h4 {
        width: 100%;
        text-align: center;
        margin-left: 0;
        float: left;
    }

    footer .accept .col-md-6:last-child img {
        width: 200px;
        margin: 0 auto;
        display: block;
        float: unset;
    }
}

@media only screen and (max-width: 750px) {
    .copyrightSection .col-md-6 {
        width: 100%;
        text-align: center;
    }
    .copyrightSection .col-md-6:last-child {
        text-align: center;
        padding: 0px;
    }

    footer .col-md-3 {
        text-align: center;
    }

    .col-md-4 img {
        margin: 0 auto !important;
        display: block !important;
        margin-top: -60px !important;
        margin-bottom: 20px !important;
    }
}
@media only screen and (max-width: 600px) {
    .serviceSection .card {
        height: 260px;
    }

    .shoppingDivId .card {
        height: 270px;
    }

    .tour_img {
        height: 160px;
        object-fit: cover;
    }

    .row{
        padding-left: 0px !important;
    }
}


@media only screen and (max-width: 550px) {
    .col-md-6 {
        min-width: 100% !important;
    }
}
@media only screen and (max-width: 470px) {
    .shoppingDivId {
        height: 1180px;
        overflow: hidden;
    }

    footer .col-md-4 img {
        height: auto;
        width: 100%;
    }
}



@media only screen and (max-width: 430px) {

    .box_sizing img {
        width: 100%;
        border-radius: 10px;
        height: 260px !important;
    }

    .col-md-3 , .col-lg-3 , .col-lg-4 {
        width: 100% !important;
    }

    .serviceSection .card {
        height: 300px;
    }

    .tour_img {
        height: 200px;
        object-fit: cover;
    }

    .shop_bg_image img{
        height: 230px !important;
    }

    .shoppingDivId .card {
        height: 360px;
    }

    .shoppingDivId {
        height: 1540px;
        overflow: hidden;
    }

    .shop_bg_image .col-6 {
        padding: 10px;
    }


    .shop_bg_image form button {
        width: 100%;
        font-size: 15px !important;
    }

}


@media (max-width: 640px) {
  .nav_fixed {
    text-align: center;
    font-size: 80px;
  }
}
@media only screen and (min-width: 320px) and (max-width: 766px) {
    .nav_fixed{
      font-size: 25px;
    }
}


@media only screen and (max-width: 900px) {
     .searchbox {
         margin-top: 35px;
     }

     .searchbox .col-md-4:last-child {
         position: absolute;
         top: -45px;
     }

     .searchbox .col-md-4:nth-child(2) {
         position: absolute;
         right: 0;
     }

     .bg_image .slide {
        height: auto;
        margin-top: -135px;
    }

    .bg_image {
        height: auto;
    }
    .bg_image .slide img {
        height: 350px;
    }

 }


</style>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
