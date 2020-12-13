<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.or.connect.dbsprojectDto.Cart"%>
<%@ page import="kr.or.connect.dbsprojectDao.CartDao"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.List"%>
<jsp:useBean id="cart" class="kr.or.connect.dbsprojectDto.Cart" scope="page"/>
<jsp:setProperty name="cart" property="USER"/>
<!DOCTYPE html>
<html>
<head>
<title>English Premier League</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" href="css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">

<link rel="stylesheet" href="css/jquery.fancybox.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">

<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/style.css">



</head>

<body>
<%
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String) session.getAttribute("userID");
	}
	
	else if(userID == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인이 필요합니다.')");
		script.println("history.back()");
		script.println("</script>");
	}

%>

	<div class="site-wrap">

		<div class="site-mobile-menu site-navbar-target">
			<div class="site-mobile-menu-header">
				<div class="site-mobile-menu-close">
					<span class="icon-close2 js-menu-toggle"></span>
				</div>
			</div>
			<div class="site-mobile-menu-body"></div>
		</div>


		<header class="site-navbar py-4" role="banner">

			<div class="container">
				<div class="d-flex align-items-center">
					<div class="site-logo">
						<a href="main.jsp"> <img
							src="images/Premier_League-Logo.wine.png" alt="Logo">
						</a>
					</div>
					<div class="ml-auto">
						<nav class="site-navigation position-relative text-right"
							role="navigation">
							<ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
								<li><a href="main.jsp" class="nav-link">Home</a></li>
								<li><a href="players.jsp" class="nav-link">Players</a></li>
								<li><a href="clubs.jsp" class="nav-link">Clubs</a></li>
								<li><a href="schedule.jsp" class="nav-link">schedule</a></li>
								<li><a href="matches.jsp" class="nav-link">results</a></li>
								<li><a href="goods.jsp" class="nav-link">Goods</a></li>
								<li class="active"><a href="cart.jsp?<%=userID %>" class="nav-link">Cart</a></li>
								<li><a href="purchaselist.jsp?userID=<%=userID %>" class="nav-link">Purchase list</a></li>
							</ul>
						</nav>

						<a href="#"
							class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black float-right text-white"><span
							class="icon-menu h3 text-white"></span></a>
					</div>
				</div>
			</div>
		</header>

		<div class="hero overlay" style="background-image: url('images/bg_3.jpg');">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-5 mx-auto text-center">
            <h1 class="text-white">Cart</h1>
            <p>Your Cart</p>
          </div>
        </div>
      </div>
    </div>
	<div style = "background-color : white; padding-top: 10px;" class="container2">
			<p style = "font-size : 30px; margin-left:200px;">Shopping Cart</p>
			
			<table class="table table-bordered table-hover"
				style="text-align: center; border: 3px solid #dddddd; margin-top: 20px; margin-left: auto; margin-right: auto; width: 1500px;">
				<thead>
					<tr>
						<th style="background-color: #fafafa; color: #000000; width :150px ">Image</th>
						<th style="background-color: #fafafa; color: #000000; width :150px">Name</th>
						<th style="background-color: #fafafa; color: #000000; width: 100px">Price</th>
						<th style="background-color: #fafafa; color: #000000; width: 50px">Quantity</th>
						<th style="background-color: #fafafa; color: #000000; width: 100px">Total Price</th>
						<th style="background-color: #fafafa; color: #000000; width: 20px">Delete</th>
					</tr>
					<tbody>
					<%
					CartDao dao = new CartDao();
					String ID = request.getParameter("userID");
					List<Cart> cartlist = dao.getCart(ID);
					int subtotal = 0;
					for(int i=0;i<cartlist.size();i++){
						Cart carts = cartlist.get(i);
					%>
					<tr>
					<th><img src="images/goods/<%=carts.getImg() %>"></th>
					<th style = "vertical-align : middle"><%=carts.getName() %></th>
					<th style = "vertical-align : middle"><%=carts.getPrice() %></th>
					<th style = "vertical-align : middle"><button type="button" class="btn btn-primary py-2 px-2 mr-2"  onclick="location.href = 'http://localhost:8080/dbsproject/MinusAmountAction?userID=<%=userID %>&cartID=<%=carts.getCARTID() %>&amount=<%=carts.getAmount()%>'">-</button>
					<%=carts.getAmount() %>
					<button type="button" class="btn btn-primary py-2 px-2 mr-2" style="margin-left:0.5rem;"onclick="location.href = 'http://localhost:8080/dbsproject/AddAmountAction?userID=<%=userID %>&cartID=<%=carts.getCARTID() %>&amount=<%=carts.getAmount()%>'">+</button></th>
					<th style = "vertical-align : middle"><%=carts.getAmount() * carts.getPrice() %></th>
					<th style = "vertical-align : middle"><button type="button" class="btn btn-primary py-2 px-2 mr-2" onclick="location.href = 'http://localhost:8080/dbsproject/CartToBuyAction?userID=<%=userID %>&cartID=<%=carts.getCARTID() %>'">Buy</button>
					    <button type="button" class="btn btn-primary py-2 px-2 mr-2" onclick="location.href = 'http://localhost:8080/dbsproject/DeleteGoodsAction?userID=<%=userID %>&cartID=<%=carts.getCARTID() %>'">Delete</button></th>
					</tr>
					<%
						subtotal += carts.getAmount() * carts.getPrice();
					}
					%>
					</tbody>
			</table>
			<p style = "text-align:right; padding-right:200px;">Subtotal : <%=subtotal %> </p>
			
			<div style = "text-align: center; margin-top: 50px; padding-bottom: 30px; margin-left : auto; margin-right : auto;"id="button">
			<button type="button" class="btn btn-primary py-2 px-2 mr-2" onclick="location.href = 'http://localhost:8080/dbsproject/BuyAllCartAction?userID=<%=userID %>'">Buy All</button>
			<button type="button" class="btn btn-primary py-2 px-2 mr-2" onclick="location.href = 'goods.jsp'">return to shop</button>
			<button type="button" class="btn btn-primary py-2 px-2 mr-2" onclick="location.href = 'http://localhost:8080/dbsproject/DeleteAllGoodsAction?userID=<%=userID %>'">Delete All</button>
			</div>
		</div>



		<footer class="footer-section">
			<div class="container">
				<div class="row">
					<div class="col-lg-3">
						<div class="widget mb-3">
							<h3>News</h3>
							<ul class="list-unstyled links">
								<li><a href="#">All</a></li>
								<li><a href="#">Club News</a></li>
								<li><a href="#">Media Center</a></li>
								<li><a href="#">Video</a></li>
								<li><a href="#">RSS</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="widget mb-3">
							<h3>Tickets</h3>
							<ul class="list-unstyled links">
								<li><a href="#">Online Ticket</a></li>
								<li><a href="#">Payment and Prices</a></li>
								<li><a href="#">Contact &amp; Booking</a></li>
								<li><a href="#">Tickets</a></li>
								<li><a href="#">Coupon</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="widget mb-3">
							<h3>Matches</h3>
							<ul class="list-unstyled links">
								<li><a href="#">Standings</a></li>
								<li><a href="#">World Cup</a></li>
								<li><a href="#">La Lega</a></li>
								<li><a href="#">Hyper Cup</a></li>
								<li><a href="#">World League</a></li>
							</ul>
						</div>
					</div>

					<div class="col-lg-3">
						<div class="widget mb-3">
							<h3>Social</h3>
							<ul class="list-unstyled links">
								<li><a href="#">Twitter</a></li>
								<li><a href="#">Facebook</a></li>
								<li><a href="#">Instagram</a></li>
								<li><a href="#">Youtube</a></li>
							</ul>
						</div>
					</div>

				</div>

				<div class="row text-center">
					<div class="col-md-12">
						<div class=" pt-5">
							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | This template is made with <i
									class="icon-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
					</div>

				</div>
			</div>
		</footer>



	</div>
	<!-- .site-wrap -->

	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/jquery.countdown.min.js"></script>
	<script src="js/bootstrap-datepicker.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.fancybox.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/jquery.mb.YTClub.min.js"></script>


	<script src="js/main.js"></script>

</body>

</html>