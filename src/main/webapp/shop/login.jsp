<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <%@ include file="common.jsp" %>

    <link rel="stylesheet" href="shop/cssloginre/style.css">

    <title>Customer Login</title>
</head>
<body>
<%@ include file="header.jsp" %>

<section class="collections text-center">
    <div class="main">
        <!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container1" id="container">

                <!-- <div class="form-container register-container">
                  <form action="#">
                    <h1>Register hire.</h1>
                    <input type="text" placeholder="Name">
                    <input type="email" placeholder="Email">
                    <input type="password" placeholder="Password">
                    <button>Register</button>
                    <span>or use your account</span>
                    <div class="social-container">
                      <a href="#" class="social"><i class="lni lni-facebook-fill"></i></a>
                      <a href="#" class="social"><i class="lni lni-google"></i></a>
                      <a href="#" class="social"><i class="lni lni-linkedin-original"></i></a>
                    </div>
                  </form>
                </div> -->
            
                <div class="form-container1 login-container1">
                  <form1 action="#">
                    <h2>Sign in</h2>
                    <!-- <input type="email" placeholder="Email">
                    <input type="password" placeholder="Password"> -->
                    <form method="post" action="login" class="register-form">

                        <div class="form-group">
                            <label><i
                                    class="zmdi zmdi-account material-icons-name"></i></label> <input
                                type="email" name="email" placeholder="Your email"
                                required="required" maxlength="64"/>
                        </div>

                        <div class="form-group">
                            <label><i class="zmdi zmdi-lock"></i></label> <input
                                type="password" name="password" placeholder="Your password"
                                required="required" maxlength="32"/>
                        </div>

                        <!-- <div class="form-group">
                            <input type="checkbox" name="remember-me" id="remember-me"
                                   class="agree-term"/> <label for="remember-me"
                                   class="label-agree-term"><span><span></span></span>Remember me</label>
                        </div> -->
                        <div class="content1">
                            <!-- <div class="checkbox1">
                              <input type="checkbox" name="checkbox" id="checkbox">
                              <label>Remember me</label>
                            </div> -->
                            <div class="pass-link">
                              <h6 href="#">Forgot password?</h6>
                            </div>
                        </div>
                        
                        <div class="form-group form-button">
                            <input type="submit" name="signin" id="signin"
                                   class="form-submit" value="Log in"/>

                        </div>
                  
                    </form>

                    
                    <span>or use your account</span>
                    <div class="social-container1">
                        <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social"><i class="fab fa-google"></i></a>
                        <a href="#" class="social"><i class="fab fa-instagram"></i></a>
                    </div>
                    
                  </form1>
                </div>
            
                <div class="overlay-container1">
                  <div class="overlay1">
                    <!-- <div class="overlay-panel overlay-left">
                      <h1 class="title">Hello <br> friends</h1>
                      <p>if Yout have an account, login here and have fun</p>
                      <button class="ghost" id="login">Login
                        <i class="lni lni-arrow-left login"></i>
                      </button> 
                    </div> -->
                    <div class="overlay-panel overlay-right1">
                      <h1 class="title">Hello, <br> Friend!</h1>
                      <h6>Register with your personal details to use all of site features</h6>
                      <button class="ghost1" id="register">
                        <a href="register" style="color: white; ">Register</a>
                        <i class="lni lni-arrow-right register"></i>
                    </button>
                    
                    </div>
                  </div>
                </div>
            
              </div>
        </section>
    </div>
</section>

<%@ include file="footer.jsp" %>

</body>
<!-- Placed at the end of the document so the pages load faster -->
<script src="shop/js/jquery-3.3.1.min.js"></script>
<script src="shop/bootstrap/js/bootstrap.min.js"></script>
<script src="shop/js/tether.min.js"></script>
</html>