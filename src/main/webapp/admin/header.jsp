<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="preloader">
    <div class="loader">
        <div class="loader__figure"></div>
        <p class="loader__label">Admin Dior</p>
    </div>
    
</div>
<!-- ============================================================== -->
<!-- Main wrapper - style you can find in pages.scss -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- Topbar header - style you can find in pages.scss -->
<!-- ============================================================== -->

<div class="content" >
    <!-- Navbar -->
    <nav>
        <i class='bx bx-menu'></i>
        <form action="#">
            <div class="form-input">
                <input type="search" placeholder="Search...">
                <button class="search-btn" type="submit"><i class="fa fa-search"></i></button>
            </div>
        </form>
        <input type="checkbox" id="theme-toggle" hidden>
        <label for="theme-toggle" class="theme-toggle"></label>
        <a href="#" class="notif">
            <i class="fa fa-bell"></i>

            <span class="count">12</span>
        </a>
        <a href="#" class="profile"><img
            src="images/users/1.jpg" alt="user" class=""/> <span
            class="hidden-md-down">${sessionScope.userEmail} &nbsp;</span>
            <!-- <img src="images/logo.png"> -->
        </a>
        
    </nav>
</div>


<!-- ============================================================== -->
<!-- End Topbar header -->

<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- Left Sidebar - style you can find in sidebar.scss -->
<!-- ============================================================== -->