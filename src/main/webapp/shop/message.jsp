<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%@ include file="common.jsp" %>
    <link rel="stylesheet" href="shop/cssloginre/style.css">
    <link rel="stylesheet" href="../shop/cssloginre/email.css">
    <script type="text/javascript" src="../shop/js/email.js"></script>
    <title>Online Website</title>
</head>
<body>
<%@ include file="header.jsp" %>

<section class="collections text-center ">
    <div class="main">
        <!-- Sign up form -->
        <section class="signup" style="display: flex; justify-content: space-between; align-items: center;">
                    <div class="register-form">
                        <div id="flip-card">
                            <div id="flip-card-inner">
                                <div id="flip-card-front">
                                    <div id="stamp">
                                        <img src="https://i.ibb.co/RQFFVJC/Paper-map-bro.png" />
                                        <!-- Stock image hosted on imgbb -->
                                    </div>
                                    <div id="Name">Customer</div>
                                </div>
                                <div id="flip-card-back">
                                <div class="lid" id="one">
                                    <p id="companyName">Dior Store</p>
                                </div>
                                <div class="lid" id="two"></div>
                                <div id="envelope"></div>
                                <div id="letter">
                                    <img width="85%" height="auto" src="http://localhost:8080/eCommerceWebsite/shop/assets/frame3.png" />
                                    <p id="message">
             <span
              style="
                margin: 20px;
                font-size: 25px;
                font-style: italic;
                font-family: 'Times New Roman', Times, serif;
                font-weight: 10;
                margin-left: auto;
                margin-right: auto;
              "">
              THANK YOU
            </span>
            <br />
            <br />


            Dear Valued Customer,
            <br />
            <br />
 
            First and foremost, the leadership team and all employees at Dior would like to express our sincere and heartfelt gratitude to you.<br />
            <br />
       
            We appreciate the trust and companionship you have bestowed upon Dior during the past period. Your order has been confirmed and will be delivered to you in the next few days.<br/>
            <br />
         
            In conclusion, Dior sincerely thanks you for your support.
            <br />
           
            cherish
          </p>
        </div>
      </div>
    </div>
  </div>
                    </div>
                    <div class="signup-image">
                        <figure>
                            <img class="small-gif" src="http://localhost:8080/eCommerceWebsite//shop/images/CA.gif" alt="GIF Nhỏ">
                        </figure>

                        <a href="${pageContext.request.contextPath}/" class="continue-shopping-btn1">
                            Continue Shopping
                            <span class="icon">🛒</span>
                          </a>
                

                    </div>

        </section>
    </div>
</section>
<%@ include file="footer.jsp" %>
<script>
    setTimeout(() => {
        setTimeout(() => {
          const card = document.getElementById("flip-card-inner");
          card.style.transform = "rotateY(180deg)";
        }, 1500);
      }, 1000);
      
      setTimeout(() => {
        setTimeout(openEnvelope, 1000);
      }, 2000);
      
      function openEnvelope() {
        setInterval(() => {
          document.getElementById("one").style.transform = "rotate(180deg)";
          document.getElementById("companyName").style.display = "none";
        }, 2000);
      
        setTimeout(letterUp, 2000);
      }
      
      function letterUp() {
        const letter = document.getElementById("letter");
        const one = document.getElementById("one");
        // const envelope = document.getElementById("envelope");
      
        one.style.zIndex = 1;
        //envelop
        letter.style.zIndex = 2;
        let i = 0;
        let id = null;
        clearInterval(id);
      
        id = setInterval(() => {
          if (i == 500) {
            clearInterval(id);
          } else {
            letter.style.top = -i + "px";
            i++;
          }
        }, 5);
      
        setTimeout(letterDown, 3000);
      }
      
      function letterDown() {
        const letter = document.getElementById("letter");
        const card = document.getElementById("flip-card");
      
        letter.style.top = -500 + "px";
        letter.style.zIndex = 4;
      
        let i = 0;
        let id = null;
        clearInterval(id);
      
        id = setInterval(() => {
          if (i == 100) {
            // lastPos = -i;
            clearInterval(id);
          } else {
            letter.style.top = -400 + i * 5 + "px";
            letter.style.transform = "rotate(" + -i / 18 + "deg)";
      
            card.style.transform = "rotate(" + i / 18 + "deg)";
      
            i++;
          }
        }, 10);
      
        setTimeout(() => {
          const popUp = document.getElementById("popUp");
          popUp.style.display = "block";
          popUp.style.zIndex = 5;
        }, 2000);
      }
      
</script>
</body>
</html>













