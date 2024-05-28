<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <%@ include file="common.jsp" %>

    <link rel="stylesheet" href="shop/cssloginre/style.css">
    
    <title>Customer Profile - Online Store</title>
</head>
<body>
<%@ include file="header.jsp" %>

<section class="collections text-center ">
    <div class="main">
        <section class="signup">
            <div class="container_sign">
                <div class="signup-content">
                    <div class="signup-form">
                        <h6 class="form-title">Welcome, ${loggedCustomer.fullName}</h6>

                        <table class="form-group" style="border: 0">
                            <tr>
                                <td><b>Email Address:</b></td>
                                <td>${loggedCustomer.email}</td>
                            </tr>
                            <tr>
                                <td><b>First Name:</b></td>
                                <td>${loggedCustomer.firstName}</td>
                            </tr>
                            <tr>
                                <td><b>Last Name:</b></td>
                                <td>${loggedCustomer.lastName}</td>
                            </tr>
                            <tr>
                                <td><b>Phone Number:</b></td>
                                <td>${loggedCustomer.phone}</td>
                            </tr>
                            <tr>
                                <td><b>Address Line 1:</b></td>
                                <td>${loggedCustomer.addressLine1}</td>
                            </tr>
                            
                            <tr>
                                <td><b>City:</b></td>
                                <td>${loggedCustomer.city}</td>
                            </tr>
                            
                            <tr>
                                <td><b>Country:</b></td>
                                <td>${loggedCustomer.countryName}</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            
                            
                            
                        </table>
                        <button class="btn">
                            <div class="wrapper">
                                <!-- <tr>
                                    <td colspan="2" align="center"><a href="edit_profile">Edit My Profile</a></td>
                                </tr> -->
                                <p class="text"><a href="edit_profile">Edit My Profile</a> </p>
                        
                                <div class="flower flower1">
                                    <div class="petal one"></div>
                                    <div class="petal two"></div>
                                    <div class="petal three"></div>
                                    <div class="petal four"></div>
                                </div>
                                <div class="flower flower2">
                                    <div class="petal one"></div>
                                    <div class="petal two"></div>
                                    <div class="petal three"></div>
                                    <div class="petal four"></div>
                                </div>
                                <div class="flower flower3">
                                    <div class="petal one"></div>
                                    <div class="petal two"></div>
                                    <div class="petal three"></div>
                                    <div class="petal four"></div>
                                </div>
                                <div class="flower flower4">
                                    <div class="petal one"></div>
                                    <div class="petal two"></div>
                                    <div class="petal three"></div>
                                    <div class="petal four"></div>
                                </div>
                                <div class="flower flower5">
                                    <div class="petal one"></div>
                                    <div class="petal two"></div>
                                    <div class="petal three"></div>
                                    <div class="petal four"></div>
                                </div>
                                <div class="flower flower6">
                                    <div class="petal one"></div>
                                    <div class="petal two"></div>
                                    <div class="petal three"></div>
                                    <div class="petal four"></div>
                                </div>
                            </div>
                        </button>
                    </div>

                    <div class="signup-image">
                        <figure>
                            <img src="shop/images/logo-store.webp" alt="">
                        </figure>

                        <button class="btn2">
                            <div class="default-btn">
                              <svg class="css-i6dzq" stroke-linejoin="round" stroke-linecap="round" fill="none" stroke-width="2" stroke="#FFF" height="20" width="20" viewBox="0 0 24 24"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle r="3" cy="12" cx="12"></circle></svg>
                              <span>Quick View</span>
                            </div>
                            <div class="hover-btn">
                              <svg class="css-i6dzq1" stroke-linejoin="round" stroke-linecap="round" fill="none" stroke-width="2" stroke="#ffd300" height="20" width="20" viewBox="0 0 24 24"><circle r="1" cy="21" cx="9"></circle><circle r="1" cy="21" cx="20"></circle><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
                              <span><a href="${pageContext.request.contextPath}/">Shop now</a></span>
                            </div>
                        </button>
                        <!-- <button class="btn2">
                            <div class="default-btn">
                              <svg class="css-i6dzq" stroke-linejoin="round" stroke-linecap="round" fill="none" stroke-width="2" stroke="#FFF" height="20" width="20" viewBox="0 0 24 24"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle r="3" cy="12" cx="12"></circle></svg>
                              <span>Quick View</span>
                            </div>
                            <div class="hover-btn">
                              <svg class="css-i6dzq1" stroke-linejoin="round" stroke-linecap="round" fill="none" stroke-width="2" stroke="#ffd300" height="20" width="20" viewBox="0 0 24 24"><circle r="1" cy="21" cx="9"></circle><circle r="1" cy="21" cx="20"></circle><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
                              <span><a href="${pageContext.request.contextPath}/">Shop now</a></span>
                            </div>
                        </button> -->

                          
                        
                       
                    </div>
                </div>
            </div>
        </section>
    </div>
</section>

<%@ include file="footer.jsp" %>
</body>
</html>