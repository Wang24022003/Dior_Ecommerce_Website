<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%@ include file="common.jsp" %>

    <link rel="stylesheet" href="shop/css/style.css">

    <script type="text/javascript" src="shop/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="shop/js/jquery.validate.min.js"></script>

    <script src="shop/bootstrap/js/bootstrap.min.js"></script>
    <script src="shop/js/tether.min.js"></script>

    <title>Your Shopping Cart</title>
</head>

<body>
<%@ include file="header.jsp" %>
<style>
    #cartForm {
        max-width: 800px; /* Set the maximum width of the form */
        margin: 0 auto; /* Center the form horizontally */
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add a subtle box shadow */
        padding: 20px; /* Add some padding inside the form */
        border-radius: 10px; /* Add border-radius for rounded corners */
        margin-left: 10px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px; /* Add margin at the top of the table */
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add a subtle box shadow to the table */
        border-radius: 10px; /* Add border-radius for rounded corners */
    }

    th, td {
        padding: 15px; /* Add padding to table cells for better spacing */
        text-align: left;
    }

    th {
        background-color: #f2f2f2; /* Add a background color to table header */
    }

    img {
        max-width: 100px; /* Set a maximum width for the product images */
        height: auto; /* Maintain the aspect ratio of the images */
        border-radius: 5px; /* Add border-radius for rounded corners */
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.2); /* Add a subtle box shadow to the images */
    }

    .total-section {
        max-width: 400px; /* Set the maximum width of the total section */
        margin: 0 auto; /* Center the total section horizontally */
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add a subtle box shadow */
        padding: 20px; /* Add some padding inside the total section */
        border-radius: 10px; /* Add border-radius for rounded corners */
        margin-top: -180px;
    }

    .total-section h4 {
        margin-bottom: 10px; /* Add some bottom margin to the h4 element */
    }

    .total-section h1 {
        color: #007bff; /* Set the color of the total amount */
        margin-top: 0; /* Remove the default top margin of h1 */
    }
</style>
<section class="cart text-center">
    <div class="container">
        

        <c:set var="cart" value="${sessionScope['cart']}"/>

        <div class="row" style="margin-top: 6rem;">
            <div class="col-12 text-center">
                <h2 class="mt-5 mb-2">Your Shopping Cart</h2>

                <c:if test="${cart.totalItems == 0}">
                    <p class="mb-5">There's no items in your cart</p>
                </c:if>
                <c:if test="${cart.totalItems > 0}">
                    <p class="mb-5"><span class="primary-color">${cart.totalItems}</span> Items in your cart</p>
                </c:if>

                <c:if test="${message != null}">
                    <div align="center">
                        <p class="mb-5">${message}</p>
                    </div>
                </c:if>

            
                <c:if test="${cart.totalItems > 0}">
                    <form action="update_cart" method="post" id="cartForm">
                        <table class="table table-condensed">
                            <thead>
                            <tr>
                                <th style="width: 5%">No</th>
                                <th style="width: 50%">Product</th>
                                <th style="width: 10%">Quantity</th>
                                <th style="width: 10%">Price</th>
                                <th style="width: 10%">Subtotal</th>
                                <th style="width: 15%">
                                    <a href="clear_cart" type="button" id="clearCart">Clear All</a>
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${cart.items}" var="item" varStatus="status">
                                <tr>
                                    <td>${status.index + 1}</td>
                                    <td data-th="Product">
                                        <div class="row">
                                            <div class="col-md-3 text-left">
                                                <img src="data:image/jpg;base64,${item.key.base64Image}"
                                                     class="img-fluid" alt="">
                                            </div>
                                            <div class="col-md-9 text-left mt-sm-2">
                                                <h4>${item.key.title}</h4>
                                            </div>
                                        </div>
                                    </td>

                                    <td data-th="Quantity">
                                        <input type="hidden" name="productId" value="${item.key.productId}"/>
                                        <input type="number" name="quantity${status.index + 1}" value="${item.value}"
                                               class="form-control text-center" value="1" min="1" required="required"/>
                                    </td>

                                    <td data-th="Price">$${item.key.price}</td>

                                    <td>$${item.value * item.key.price}</td>

                                    <td class="actions" data-th="">
                                        <div class="text_center">
                                            <button type="submit" class="btn btn-white btn-md mb-2">
                                                <i class="fas fa-sync"></i>
                                            </button>
                                            <a type="button" class="btn btn-white btn-md mb-2"
                                               href="remove_from_cart?product_id=${item.key.productId}"><i
                                                    class="fas fa-trash"></i></a>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </form>
                </c:if>
                <div class="float-right text-right total-section">
                    <h4>Total:</h4>
                    <h1>$${cart.totalAmount}</h1>
                    <p>(Excluding Delivery)</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 mb-3 mb-m-1 text-md-left">
                <a href="${pageContext.request.contextPath}/" style="color: #007bff;"><i class="fas fa-arrow-left mr-2"></i> Continue Shopping</a>
            </div>
            
            <div class="btnCO">
                <a href="checkout" style="color: white" >Checkout</a>
            </div>
        </div>
    </div>

</section>

<%@ include file="footer.jsp" %>
</body>
<script type="text/javascript">
    $(document).ready(function () {
        $("#clearCart").click(function () {
            window.location = 'clear_cart';
        });

        $("#cartForm").validate({
            rules: {
                <c:forEach items="${cart.items}" var="item" varStatus="status">
                quantity${status.index + 1}: {
                    required: true, number: true, min: 1
                }
                </c:forEach>
            },
            messages: {
                <c:forEach items="${cart.items}" var="item" varStatus="status">
                quantity${status.index + 1}: {
                    required: "Please enter quantity.",
                    number: "Must be a number.",
                    min: "Must be greater than 0."
                }
                </c:forEach>
            }
        });
    });
</script>
</html>