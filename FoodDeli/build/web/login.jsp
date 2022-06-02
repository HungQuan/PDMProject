<%-- 
    Document   : login
    Created on : May 11, 2022, 9:09:11 PM
    Author     : Quan Truong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login/Register</title>
        <link rel="stylesheet" href="./css/login.css">
        <link rel="icon" href="./icon_image.jpg" type="image/icon type">
    </head>
<body>
   <input type ="hidden" id ="status" value="<%= request.getAttribute("status") %>">
  <div class="container">
      <div class="loginbg">
          <div class="box signin">
              <h2>Already Have an Account ?</h2>
              <button class="signinbtn">Sign in</button>
          </div>
          <div class="box signup">
            <h2>Don't Have an Account ?</h2>
            <button class="signupbtn">Sign up</button>
          </div>
      </div>
      <div class="formbx">
        <div class="form signinform">
            <form method="post" action = "Login" 
                  class="register-form" id="Login-form">
                <h2>Sign In And Eat !!!</h2>
                <h3>Sign In</h3>
                email: <input type="text" name="email" placeholder="email">
                password: <input type="password" name="password" placeholder="password">
                <input type="submit" value="Login">
                <a href="#" class="forgot">Forgot password?</a>
            </form>
        </div>
        <div class="form signupform">
            <form method="post" action="register" class="register-form" id="register-form">
                <input type="text" name="fullname" placeholder="Enter Your FullName">
                <input type="text" name="username" placeholder="Enter Your UserName">
                <input type="text" name="email" placeholder="Email">
                <input type="text" name="address" placeholder="Address">
                <input type="password" name="password" placeholder="Password">
                <input type="password" name="password" placeholder="Confirm password">
                <input type="submit" name="signup" id="signup"class="form-submit" value="Register" />
            </form>
        </div>
      </div>
      </div>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css">
<script type="text/javascript">
    var status = document.getElementById("status").value; 
    if(status == "success"){
        swal("Congrats","Account created successfully","success"); 
    }
    if(status == "failed"){
        swal("Failed","Wrong email or password","failed"); 
    }
    const signinbtn = document.querySelector('.signinbtn');
    const signupbtn = document.querySelector('.signupbtn');
    const formbx = document.querySelector('.formbx'); 
    const body = document.querySelector('body')

    signupbtn.onclick = function(){
        formbx.classList.add('active')
        body.classList.add('active')
    }
    signinbtn.onclick = function(){
        formbx.classList.remove('active')
        body.classList.remove('active')
    }
</script>
</body>
