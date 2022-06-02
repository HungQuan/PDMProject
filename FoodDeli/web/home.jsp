<%-- 
    Document   : home
    Created on : May 11, 2022, 9:16:35 PM
    Author     : Quan Truong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="icon" href="icon_image.jpg" type="image/icon type">
<link rel="stylesheet" href="./css/home.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body onload="myload()">
  <!--Header section start-->
  <header>
    <a href="#" class="logo"><i class="fa fa-utensils"></i>FoodDeli</a>
    <nav class="navbar">
        <a class="active" href="./home.html">Home</a>
        <a href="#" onclick="openAbout()">about</a>
        <a href="./contact.jsp" >Contact us</a>
    </nav>
    <div class="icons">
         <i class="fas fa-bars" id="menu-bars"></i>
        <i class="fas fa-search" id="search-icon"></i>
        <a href="Order.jsp" class="fas fa-shopping-cart"></a>
        <a  href="customer" class="fa fa-user"></a>
        <a href="LogoutServlet" class="fas fa-sign-in-alt"></a>
    </div>
</header>
  <!-- Header section ends-->
    <!--search form-->
    <form action="" id="search-form">
        <input type="search" placeholder="search restaurant name here..." name="" id="search-box">
        <label for="search-box" class="fas fa-search"></label>
        <i class="fas fa-times" id="close1"></i>
    </form>
    <!--Search Form ends-->
<!--Add-->
<div class="add">
    <div class="add-container">
    <img src="./banner/burger banner.jpg">
    <div class="textimg"><h2>30% off on your<br> first order</h2>
    <a href="food"><button class="ordr">Order Now</button></a></div>
    </div>
   </div>
   <!--Add ends-->
<!--Restaurants-->

<section class="barb" id="biryani">
    <h1 class="barbeque">Restaurants</h1>
    <hr class="line"> 
    <div class="box-container">
    <div class="box">
        <a href="food"><img src="./Restaurants/domino.png"></a>
        <h3>Domino Pizza </h3>
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
            <br>

        </div>
        </div>
        <div class="box">
            <a href="#"><img src="./Restaurants/mehfil.jpg"></a>
            <h3>Restaurant2_Name</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
                <br>
            </div>
            </div>
    
    </div>
</section>

<div id="about" class="about">
    <a href="#" class="closebtn" onclick="closeNav()">&times;</a>
    <div class="about-overlay">
        <h1>About us</h1>
        <p>Launched in 2021, Our technology platform connects customers,<br> 
        restaurant partners and delivery partners, serving their multiple needs. <br>
        Customers use our platform to search and discover restaurants, read and write customer 
        generated reviews and view and upload photos,<br> order food delivery, book a table and make 
        payments while dining-out at restaurants. On the other hand,<br> we provide restaurant partners 
        with industry-specific marketing tools which enable them to engage and acquire customers<br> to 
        grow their business while also providing a reliable <br>and efficient last mile delivery service. 
        We also operate a one-stop procurement solution, <br>Hyperpure, which supplies high quality ingredients 
        and kitchen products to restaurant partners.<br> We also provide our delivery partners with transparent 
        and flexible earning opportunities. </p>
    </div>
</div>
<!--Footer Section-->
<footer class="footer">
    <div class="container">
        <div class="row">
            
            <div class="footer-col">
                <ul>
                    <i class="fa fa-utensils"></i>
                    <span>FoodDeli</span>
                </ul>
    
                <div class="mail">
                    <ul>
                        <i class="fas fa-inbox"></i>
                        <span>
                            support@foodies.com
                        </span>
                    </ul>
                </div>
            </div>
            
            <div class="footer-col">
                <h4>Foodies</h4>
                <ul>
                    <li><a href="#" onclick="openAbout()">about us</a></li>
                    <li><a href="#">Our services</a></li>
                    <li><a href="#">Privacy policy</a></li>
                    <li><a href="#">Payment policy</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h4>Get help</h4>
                <ul>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">Delivery</a></li>
                    <li><a href="#">My orders</a></li>
                    <li><a href="#">Order Status</a></li>
                    <li><a href="#">Payment options</a></li>

                </ul>
                </div>
                <div class="footer-col">
                    <h4>Order Now</h4>
                    <ul>
                        <li><a href="">Restaurant_Name</a></li>
                    </ul>
                </div>
            </div>
            </div>
</footer>

    <!--Java Script-->
    <script>
        let menu = document.querySelector('#menu-bars');
        let navbar = document.querySelector('.navbar');
        
        menu.onclick = () => {
            menu.classList.toggle('fa-times');
            navbar.classList.toggle('active');
        }
        window.onscroll=() => {
            menu.classList.remove('fa-times');
            navbar.classList.remove('active');
        }
        document.querySelector('#search-icon').onclick=() => {
            document.querySelector('#search-form').classList.toggle('active');
        }
        document.querySelector('#close1').onclick=() => {
            document.querySelector('#search-form').classList.toggle('active');
        }
        document.querySelector("#close").onclick=() =>{
        document.querySelector("#co1").classList.toggle("active");
    }
    var preloader = document.getElementById("loading");
    function myload() {
        preloader.style.display="none";
    }


        const btn = document.querySelector("button");
        const post = document.querySelector(".post");
        const widget = document.querySelector(".star-widget");
        const editBtn = document.querySelector(".edit");
    
        btn.onclick = () =>{
        widget.style.display = "none";
        post.style.display = "block";
        editBtn.onclick = () =>{
            widget.style.display = "block";
            post.style.display = "none";
        }
        return false;
    }
    function openAbout(){
        document.getElementById("about").style.width = "100%";

    }
    function closeNav(){
        document.getElementById("about").style.width = "0%";
    }
    var preloader = document.getElementById("loader");
    
    function myloader(){
        preloader.style.display = "none";
    }
    function mygrocery(){
        confirm("Order Now on Whatsapp click ok to continue");
    }
    </script>
    
    <!--JavaScript ends -->

</body>
</html>
