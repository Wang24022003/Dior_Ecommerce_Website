<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <%@ include file="common.jsp" %>

    <title>Home Page</title>
</head>
<body>
<%@ include file="header.jsp" %>

<div class="video-container">
    <div class="slide-video">
        <div class="content-video">
            <h2>TOPS 2023 WOMEN'S FASHION COLLECTION</h2>
            <a href="view_category?id=10" class="btn-video">Discover the Collection</a>
        </div>
        <video class="video-dk" autoplay="autoplay" loop="loop" muted="muted">
            <source src="http://localhost:8080/eCommerceWebsite/shop/images/video-1.mp4" type="video/mp4">
        </video>
    </div>
</div>

<!-- -------------hiệu ứng --------------------------------- -->
<div id="app">
	<div id="content">
	    <div class="content-create">
		   <input type="radio" name="radio-btn-create" id="radioA" checked>
		   <input type="radio" name="radio-btn-create" id="radioH">
		   <input type="radio" name="radio-btn-create" id="radioU">
		   <div class="content-create-container aventador">
			  <div class="content-create-info">
				 <span class="content-create-info__text1">CONFIGURATOR</span>
				 <span class="content-create-info__text2">CREATE YOUR FASHION </span>
			  </div>
			  <div class="content-create-img">
				 <img src="http://localhost:8080/eCommerceWebsite/shop/img/fashion.jpg" alt="">
			  </div>
		   </div>

		   <div class="content-create-container huracan">
			  <div class="content-create-info">
				 <span class="content-create-info__text1">CONFIGURATOR</span>
				 <span class="content-create-info__text2">CREATE YOUR PERFUME </span>
			  </div>
			  <div class="content-create-img">
				 <img src="http://localhost:8080/eCommerceWebsite/shop/img/perfume.jpg" alt="">
			  </div>
		   </div>

		   <div class="content-create-container urus">
			  <div class="content-create-info">
				 <span class="content-create-info__text1">CONFIGURATOR</span>
				 <span class="content-create-info__text2">CREATE YOUR BAG </span>
			  </div>
			  <div class="content-create-img">
				 <img src="http://localhost:8080/eCommerceWebsite/shop/img/bag.jpg" alt="">
			  </div>
		   </div>

		   <div class="content-create-nav">
			  <div class="content-create-nav__logo">
				 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50.464 58.271"><g stroke-width="1.5" transform="translate(-1624 -187.923)"><path d="M50.464 43.992L25.732 58.271 1 43.992V15.434L25.732 1.155l24.732 14.279z" transform="translate(1623.5 187.345)" class="hexagon light"></path><path class="icon light" d="M0 0l7.432 5.674L14.864 0" transform="rotate(-90 935.432 -711.068)"></path></g></svg>
			  </div>
			  <div class="content-create-nav__choose">
				 <label for="radioA" class="content-create-nav__choose-name active">Fashion</label>
				 <label for="radioH" class="content-create-nav__choose-name">Perfume</label>
				 <label for="radioU" class="content-create-nav__choose-name">Bag</label>
			  </div>
		   </div>
	    </div>
	</div>
 </div>
<!-- --------------------------------------------------------------------------------- -->
<div class="divider"></div>
<section class="products text-center">
    <div class="container">
        <h8 class="mb-4">New Products</h8>
        <div class="row">
            <c:forEach items="${listNewProducts}" var="product" begin="0" end="3">
                <div class="col-sm-6 col-md-3 col-product">
                    <figure>
                        <img class="rounded-corners img-fluid" src="data:image/jpg;base64,${product.base64Image}"
                             width="280" height="280" alt="">
                        <figcaption>
                            <div class="thumb-overlay"><a href="view_product?id=${product.productId}" title="More Info">
                                <i class="fas fa-shopping-cart"></i>

                            </a></div>
                        </figcaption>
                    </figure>
                    <h7><a href="view_product?id=${product.productId}">${product.title}</a>
                        <span class="emphasis">$${product.price}</span></h7>
                    <p><span class="emphasis"><%@include file="product_rating.jsp" %></span></p>
                  
                </div>
            </c:forEach>
        </div>
    </div>
    <div class="video-container">
        <div class="slide-video">
            <div class="content-video">
                <h2>TOPS 2023 JEWELRY COLLECTION</h2>
                <a href="view_category?id=13" class="btn-video">Discover the Collection</a>
            </div>
            <video class="video-dk" autoplay="autoplay" loop="loop" muted="muted">
                <source src="http://localhost:8080/eCommerceWebsite/shop/images/video2.mp4" type="video/mp4">
            </video>
        </div>
    </div>
    
</section>
<div class="divider"></div>
<section class="products text-center">
    <div class="container">
        <h8 class="mb-4">Best Selling Products</h8>
        <div class="row">
            <c:forEach items="${listBestSellingProducts}" var="product" begin="0" end="3">
                <div class="col-sm-6 col-md-3 col-product">
                    <figure>
                        <img class="rounded-corners img-fluid" src="data:image/jpg;base64,${product.base64Image}"
                             width="280" height="280" alt="">
                        <figcaption>
                            <div class="thumb-overlay"><a href="view_product?id=${product.productId}" title="More Info">
                                <i class="fas fa-shopping-cart"></i>

                            </a></div>
                        </figcaption>
                    </figure>
                    <h7><a href="view_product?id=${product.productId}">${product.title}</a>
                        <span class="emphasis">$${product.price}</span></h7>
                    <p><span class="emphasis"><%@include file="product_rating.jsp" %></span></p>
                    
                </div>
            </c:forEach>
        </div>
    </div>
</section>
<div class="video-container">
    <div class="slide-video">
        <div class="content-video">
            <h2>TOPS 2023 MEN'S FRAGRANCE COLLECTION</h2>
            <a href="view_category?id=19" class="btn-video">Discover the Collection</a>
        </div>
        <video class="video-dk" autoplay="autoplay" loop="loop" muted="muted">
            <source src="https://cdn.shopify.com/videos/c/o/v/b9080fbf34a546f99bda6ac3f9c497fa.mp4" type="video/mp4">
        </video>
    </div>
</div>
<div class="divider"></div>
<section class="products text-center">
    <div class="container">
        <h8 class="mb-4">Favored Products</h8>
        <div class="row">
            <c:forEach items="${listFavoredProducts}" var="product" begin="0" end="3">
                <div class="col-sm-6 col-md-3 col-product">
                    <figure>
                        <img class="rounded-corners img-fluid" src="data:image/jpg;base64,${product.base64Image}"
                             width="280" height="280" alt="">
                        <figcaption>
                            <div class="thumb-overlay"><a href="view_product?id=${product.productId}" title="More Info">
                                <i class="fas fa-shopping-cart"></i>

                            </a></div>
                        </figcaption>
                    </figure>
                    <h7><a href="view_product?id=${product.productId}">${product.title}</a>
                        <span class="emphasis">$${product.price}</span>
                    </h7>
                    <p><span class="emphasis"><%@include file="product_rating.jsp" %></span></p>
                 
                </div>
            </c:forEach>
        </div>
    </div>
</section>

<section class="services">
    <h2>IN FOCUS</h2>
    <div class="grid">
        <div class="grid-item">
            <div class="card">
                <img class="card-image" src="http://localhost:8080/eCommerceWebsite/shop/images/column1.webp" alt="service img 1">
                <div class="card-content">
                    <h1>THE ART OF GIFTING</h1>
                    <p>Wherever you are, Dior Client Advisors will be delighted to assist you.</p>
                    <button class="card-btn">Contact Us</button>
                </div>
            </div>
        </div>

        <div class="grid-item">
            <div class="card">
                <img class="card-image" src="http://localhost:8080/eCommerceWebsite/shop/images/column2.webp" alt="service img 2">
                <div class="card-content">
                    <h1>CRUISE 2024 COLLECTION</h1>
                    <p>Choose the perfect gift from our specially curated selection of products.</p>
                    <button class="card-btn">Gifts for Her</button>
                    
                </div>
            </div>
        </div>

        <div class="grid-item">
            <div class="card">
                <img class="card-image" src="http://localhost:8080/eCommerceWebsite/shop/images/column3.webp" alt="service img 3">
                <div class="card-content">
                    <h1>DIORALPS</h1>
                    <p>Dior's personalization offer spans a wide range of services.</p>
                    <button class="card-btn">Explore our Collections</button>
                </div>
            </div>
        </div>

    </div>

    
</section>
<%@ include file="footer.jsp" %>

<!-- Placed at the end of the document so the pages load faster -->
<script src="shop/js/jquery-3.3.1.min.js"></script>
<script src="shop/bootstrap/js/bootstrap.min.js"></script>
<script src="shop/js/tether.min.js"></script>
<script src="shop/js/popper.min.js"></script>

<script>
    let btn = $('#btn-backtop');
    $(window).scroll(function () {
        if ($(window).scrollTop() > 300) {
            btn.addClass('show');
        } else {
            btn.removeClass('show');
        }
    });

    btn.on('click', function (e) {
        e.preventDefault();
        $('html, body').animate({
            scrollTop: 0
        }, '300');
    });
</script>
</body>
</html>