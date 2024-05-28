<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="en">
<head>
    <%@ include file="common.jsp" %>

    <link rel="stylesheet" href="shop/css/style.css">

    <title>All Products</title>
</head>
<body>
<%@ include file="header.jsp" %>
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
			  <!-- <div class="content-create-nav__logo">
				 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50.464 58.271"><g stroke-width="1.5" transform="translate(-1624 -187.923)"><path d="M50.464 43.992L25.732 58.271 1 43.992V15.434L25.732 1.155l24.732 14.279z" transform="translate(1623.5 187.345)" class="hexagon light"></path><path class="icon light" d="M0 0l7.432 5.674L14.864 0" transform="rotate(-90 935.432 -711.068)"></path></g></svg>
			  </div> -->
			  <div class="content-create-nav__choose">
				 <label for="radioA" class="content-create-nav__choose-name active">Fashion</label>
				 <label for="radioH" class="content-create-nav__choose-name">Perfume</label>
				 <label for="radioU" class="content-create-nav__choose-name">Bag</label>
			  </div>
		   </div>
	    </div>
	</div>
 </div>

<div class="container">
    <div class="row">
        
        <div class="col-md-4 col-lg-3 sidebar-filter">
            <h3 class="mt-5 mb-5">
                <span class="primary-color"></span> Showing Products
            </h3>

            <p class="text-uppercase"><a style="color: #444342" href="view_all">Shop All</a></p>

            <p class="text-uppercase">Categories</p>

            <c:forEach items="${listCategories}" var="category">
                <div class="filter-checkbox">
                    <a id="${category.name}" style="color: #444342"
                       href="view_category?id=${category.categoryId}">${category.name}</a>
                </div>
            </c:forEach>

            <p class="text-uppercase">Rating</p>

            <div class="filter-checkbox">
                <a href="view_all?sort=${'4.5'}" style="color: #444342">
                    <c:forTokens items="${'on,on,on,on,half'}" delims="," var="star">
                        <%@ include file="rating_stars.jsp" %>
                    </c:forTokens>
                    &nbsp;4.5 & up (${rating4_5})
                </a>
            </div>
            <div class="filter-checkbox">
                <a href="view_all?sort=${'4.0'}" style="color: #444342">
                    <c:forTokens items="${'on,on,on,on,off'}" delims="," var="star">
                        <%@ include file="rating_stars.jsp" %>
                    </c:forTokens>
                    &nbsp;4.0 & up (${rating4})
                </a>
            </div>
            <div class="filter-checkbox">
                <a href="view_all?sort=${'3.5'}" style="color: #444342">
                    <c:forTokens items="${'on,on,on,half,off'}" delims="," var="star">
                        <%@ include file="rating_stars.jsp" %>
                    </c:forTokens>
                    &nbsp;3.5 & up (${rating3_5})
                </a>
            </div>
            <div class="filter-checkbox">
                <a href="view_all?sort=${'3.0'}" style="color: #444342">
                    <c:forTokens items="${'on,on,on,off,off'}" delims="," var="star">
                        <%@ include file="rating_stars.jsp" %>
                    </c:forTokens>
                    &nbsp;3.0 & up (${rating3})
                </a>
            </div>
        </div>

        <div class="col-md-8 col-lg-9">
            <section class="products">
                <div class="container">
                    <div class="row sorting mb-5">
                        <div class="col-12">
                            <div class="dropdown float-left">
                                <label class="mr-2">Sort by:</label> <a
                                    class="btn btn-lg btn-white dropdown-toggle"
                                    data-toggle="dropdown" role="button" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">Relevance <span
                                    class="caret"></span></a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item"
                                       href="view_all?sort=${'price_desc'}">Price
                                        Descending</a>
                                    <a class="dropdown-item"
                                       href="view_all?sort=${'price_asc'}">Price
                                        Ascending</a>
                                    <a class="dropdown-item"
                                       href="view_all?sort=${'newest'}">Newest</a>
                                    <a class="dropdown-item"
                                       href="view_all?sort=${'best_selling'}">Best
                                        Selling</a>
                                    <a class="dropdown-item"
                                       href="view_all?sort=${'most_favored'}">Most
                                        Favored</a>
                                </div>
                            </div>

                            <div class="btn-group float-right ml-3">
                                <c:forEach begin="1" end="${numberOfPages}" var="i">
                                    <a id="${i}" style="color: #444342"
                                       href="view_all?sort=${sort}&page=${i}">&nbsp${i}&nbsp</a>
                                </c:forEach>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <c:forEach items="${listProducts}" var="product"
                                   begin="${numBegin}" end="${numEnd}">
                            <div class="col-md-6 col-lg-4 col-product list">
                                <figure>
                                    <img class="rounded-corners img-fluid"
                                         src="data:image/jpg;base64,${product.base64Image}" alt="">
                                    <figcaption>
                                        <div class="thumb-overlay">
                                            <a href="view_product?id=${product.productId}"
                                               title="More Info"> <i class="fas fa-search-plus"></i>
                                            </a>
                                        </div>
                                    </figcaption>
                                </figure>
                                <h7 class="mb-1">
                                    <a href="view_product?id=${product.productId}" style="margin-right: 3px;">${product.title}</a>
                                    <span class="emphasis">$${product.price}</span>

                                </h7>
                                <div>
                                    <%@ include file="product_rating.jsp" %>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
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
                    <!-- <button class="card-btn">Gifts for Him</button> -->
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
<script src="shop/js/list.min.js"></script>
<script src="shop/js/jquery-3.1.1.min.js"></script>
<script src="shop/bootstrap/js/bootstrap.min.js"></script>
<script src="shop/js/tether.min.js"></script>
<script>
    document.getElementById('${category.name}').style.color = "#c2ab87";
</script>
<script>
    document.getElementById('${pageId}').style.color = "#c2ab87";
</script>
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
