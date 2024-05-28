<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <%@ include file="common.jsp" %>

    <title>Check out - Dior</title>
</head>
<body>
<%@ include file="header.jsp" %>
<section class="cart text-center">
    <div class="container">
        <c:if test="${message != null}">
            <div align="center">
                <h4>${message}</h4>
            </div>
        </c:if>

        <c:set var="cart" value="${sessionScope['cart']}"/>

        <c:if test="${cart.totalItems == 0}">
            <h2>There's no items in your cart</h2>
        </c:if>
        
        <c:if test="${cart.totalItems > 0}">
            <div class="row">
                <div class="col-12 text-center order-details">
                    <h2 class="mt-6 mb-2">Review Your Order Detail </h2>
                    <table class="table table-condensed">
                        <tr>
                            <th style="width: 5%">No</th>
                            <th style="width: 50%">Product</th>
                            <th style="width: 15%">Price</th>
                            <th style="width: 15%">Quantity</th>
                            <th style="width: 15%">Subtotal</th>
                        </tr>

                        <c:forEach items="${cart.items}" var="item" varStatus="status">
                            <tr>
                                <td>${status.index + 1}</td>
                                <td>
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
                                <td>$${item.key.price}</td>
                                <td>${item.value}
                                </td>
                                <td>$${item.value * item.key.price}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <div class="float-right text-right">
                        <h4>${cart.totalQuantity} product(s)</h4>
                        <h4>Subtotal: $${cart.totalAmount}</h4>
                        <h4>Tax: $${tax}</h4>
                        <h4>Shipping Fee: $${shippingFee}</h4>
                        <h3>TOTAL: $${total}</h3>
                        <div class="row">
                            <div class="col-sm-6 mb-3 mb-m-1 text-md-left">
                                <a href=""><i class="fas fa-arrow-left mr-2"></i>Continue Shopping</a>
                            </div>
                            <div class="btnEC">
                                <a href="view_cart" style="color:white">Edit cart</a>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            <div class="divider"></div>

            <form action="place_order" method="post">
                <div class="row">
                    <div class="col-12 text-center order-details">
                        <h2 class="mt-5 mb-2">Your Shipping Information</h2>
                        <div class="text-left">
                            <table align="center">
                                <tr>
                                    <td>First Name:</td>
                                    <td><input type="text" name="recipientFirstName" value="${loggedCustomer.firstName}"
                                               required="required" maxlength="32" style="margin-bottom: -15px;"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Last Name:</td>
                                    <td><input type="text" name="recipientLastName" value="${loggedCustomer.lastName}"
                                               required="required" maxlength="32" style="margin-bottom: -15px;"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Phone:</td>
                                    <td><input type="number" name="recipientPhone" value="${loggedCustomer.phone}"
                                               required="required" maxlength="16" style="margin-bottom: -15px;"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Address Line 1:</td>
                                    <td><input type="text" name="recipientAddressLine1"
                                               value="${loggedCustomer.addressLine1}"
                                               required="required" maxlength="128" style="margin-bottom: -15px;"/>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>City:</td>
                                    <td><input type="text" name="recipientCity" value="${loggedCustomer.city}"
                                               required="required"
                                               maxlength="32" style="margin-bottom: -15px;">
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>Country:</td>
                                    <td>
                                        <select name="recipientCountry" class="btn btn-lg btn-white dropdown-toggle">
                                            <c:forEach items="${mapCountries}" var="country">
                                                <option value="${country.value}"
                                                        <c:if test="${loggedCustomer.country eq country.value}">selected="selected"</c:if>>${country.key}</option>
                                            </c:forEach>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Payment method:
                                    </td>
                                    <td>
                                        <select name="paymentMethod" class="btn btn-lg btn-white dropdown-toggle">
                                            <option value="Cash On Delivery">Cash On Delivery</option>
                                            <option value="PayPal">PayPal or Credit card</option>
                                        </select>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="products1 text-center container">
                            <div class="d-flex justify-content-center">
                                <button class="btn btn-lg btn-outline-primary" type="submit">Place Order</button>
                                <span class="mx-2"></span> <!-- Add some space between buttons -->
                                <a class="btn btn-lg btn-outline-primary" href="${pageContext.request.contextPath}/">Continue Shopping</a>
                            </div>
                        </div>
                        
                    </div>

                    
                </div>
            </form>
        </c:if>
    </div>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>