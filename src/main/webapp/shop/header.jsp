<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<a id="btn-backtop"></a>

<section class="header text-center">
    
    <nav class="navbar navbar-expand-lg navbar-light navbar-custom">
        
        <div class="container">
            
            <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbar-1" aria-controls="navbar-1"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse pull-xs-right justify-content-end" id="navbar-1" >
                <ul class="navbar-nav mt-2 mt-md-0">
                    <li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath}/">Home
                    </a></li>
                    <li  class="nav-item active"><a class="nav-link" href="view_all">Store
                    </a></li>
                    
                    <li class="nav-item dropdown mega-menu"><a
                            class="nav-link dropdown-toggle" href="#"
                            role="button" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false">Category</a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <div class="container">
                                <div class="divider"></div>
                                <div class="row">
                                    <c:forEach var="category" items="${listCategory}">
                                        <div class="col-md-2">
                                            <a href="view_category?id=${category.categoryId}" style="color: black">
                                                <h1 class="text-uppercase">${category.name}</h1></a>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </li>
                    
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/">Dior</a>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="show_contact">
                            <i class="fas fa-envelope"></i> <!-- Sử dụng Font Awesome icon -->
                           
                        </a>
                    </li>
       
                    <li class="nav-item dropdown"><a
                            class="nav-link dropdown-toggle" href="#"
                            role="button" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false"> <i class="fas fa-solid fa-user"></i>
                    </a>
                    
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <c:if test="${loggedCustomer == null}">
                                <a href="login" class="dropdown-item">Login</a>
                                <div class="dropdown-divider"></div>
                                <a href="register" class="dropdown-item">Register</a>
                            </c:if>

                            <c:if test="${loggedCustomer != null}">
                                <a href="view_profile" class="dropdown-item">Welcome,
                                        ${loggedCustomer.fullName}</a>
                                <div class="dropdown-divider"></div>
                                <a href="view_order" class="dropdown-item">My Orders</a>
                                <div class="dropdown-divider"></div>
                                <a href="logout" class="dropdown-item">Logout</a>
                            </c:if>
                        </div>
                    </li>

                    <c:set var="cart" value="${sessionScope['cart']}"/>

                    <li  class="nav-item dropdown" >

                        <a href="view_cart" class="nav-link dropdown-toggle" href="#"
                           role="button" data-toggle="dropdown" aria-haspopup="true"
                           aria-expanded="false"><i class="fas fa-shopping-cart" ></i> <span
                                class="badge badge-pill badge-primary">${cart.totalItems}</span></a>
                        <div class="dropdown-menu dropdown-menu-right dropdown-cart"
                             aria-labelledby="navbarDropdown">
                            <h6>${cart.totalItems}
                                Items <span class="emphasis">${cart.totalItems}</span>
                            </h6>
                            <div class="dropdown-divider"></div>
                            <ul class="shopping-cart-items">
                                <c:forEach items="${cart.items}" var="item">
                                    <li class="row">
                                        <div class="col-3">
                                            <img src="data:image/jpg;base64,${item.key.base64Image}" width="60" alt="">
                                        </div>
                                        <div class="col-9">
                                            <h6>
                                                <a href="#">${item.key.title}</a>
                                            </h6>
                                            <span class="text-muted">${item.value}</span> <span
                                                class="emphasis">$${item.key.price}</span>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                           
                              
                            <button class="btn2">
                                <div class="default-btn">
                                  <svg class="css-i6dzq" stroke-linejoin="round" stroke-linecap="round" fill="none" stroke-width="2" stroke="#FFF" height="20" width="20" viewBox="0 0 24 24"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle r="3" cy="12" cx="12"></circle></svg>
                                  <span>View Cart</span>
                                </div>
                                <div class="hover-btn">
                                  <svg class="css-i6dzq1" stroke-linejoin="round" stroke-linecap="round" fill="none" stroke-width="2" stroke="#ffd300" height="20" width="20" viewBox="0 0 24 24"><circle r="1" cy="21" cx="9"></circle><circle r="1" cy="21" cx="20"></circle><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
                                  <span><a href="view_cart">Your Shopping Cart</a></span>
                                </div>
                            </button>

                            <!-- <a href="view_cart" class="btn btn-lg btn-full-width btn-primary"
                               style="margin: 0;">View Cart</a> -->
                             
                        </div>
                    </li>
                    <li class="nav-item">
                        <button id="searchButton"><i class="fas fa-search"></i></button>
                        <div id="fullscreenSearch" class="fullscreen-search">      
                            <form action="search" method="post">
                                <div class="search-content">
                                    <!-- <span class="close" id="closeSearch">&times;</span>          -->
                                    
                                    <div class="search-icon-header-close">
                                        <span class="close1" id="closeSearch">&times; CLOSE SEARCH</span>   
                                       
                                    </div>
                                    <div class="search-icon-header-brand" style="color:#fff;">DIOR</div>
                                    <div class="search-icon-header-tittle" style="color:#fff;">SEARCH IN THE WEBSITE</div>
                                   
                                    <div class="search-icon-header-input">
                                        <form action="search" method="post">
                                        <input type="text" name="keyword" placeholder="Search on Dior.com">   
                                        <div class="search-icon-heade-input-btn"><span>SEARCH</span> </div>                        
                                        <!-- <i class="search-icon-header fas fa-search "></i>   -->
                                    </form>
                                </div>                                  
                            </div>
                            </form>
                        </div>
                    </li>
                </div>           
            </ul>
        </div> 
    </div>
</nav>
</section>

<script>
    document.addEventListener('DOMContentLoaded', function () {
         var searchButton = document.getElementById('searchButton');
         var fullscreenSearch = document.getElementById('fullscreenSearch');
         var closeSearch = document.getElementById('closeSearch');
     
         searchButton.addEventListener('click', function () {
             fullscreenSearch.style.display = 'flex';
         });
     
         closeSearch.addEventListener('click', function () {
             fullscreenSearch.style.display = 'none';
         });
     });
     $(document).ready(function() {
        var header = $(".header");

        $(window).scroll(function() {
            var scroll = $(window).scrollTop();

            // Thay đổi màu nền và màu chữ khi cuộn
            if (scroll > 100) {
               
                header.css({
                    "background-color": "rgba(255, 255, 255, 1)",
                    "color": "#000"
                });
            } else {
               
                header.css({
                    "background-color": "rgba(255, 255, 255, 0)",
                    "color": "#fff"
                });
            }
        });
    });
   </script>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
