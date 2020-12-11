<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.or.connect.dbsprojectDto.Purchaselist"%>
<%@ page import="kr.or.connect.dbsprojectDao.PurchaselistDao"%>
<%@ page import="kr.or.connect.dbsprojectDto.Ticketing"%>
<%@ page import="kr.or.connect.dbsprojectDao.TicketingDao"%>
<%@ page import="java.util.List"%>
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
							<ul
								class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
								<li><a href="main.jsp" class="nav-link">Home</a></li>
								<li><a href="players.jsp" class="nav-link">Players</a></li>
								<li><a href="clubs.jsp" class="nav-link">Clubs</a></li>
								<li><a href="schedule.jsp" class="nav-link">schedule</a></li>
								<li><a href="matches.jsp" class="nav-link">results</a></li>
								<li><a href="goods.jsp" class="nav-link">Goods</a></li>
								<li><a href="cart.jsp?userID=<%=userID%>" class="nav-link">Cart</a></li>
								<li class="active"><a href="purchaselist.jsp?userID=<%=userID%>" class="nav-link">Purchase list</a></li>
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
            <h1 class="text-white">Purchase list</h1>
            <p>Your Purchaselist</p>
          </div>
        </div>
      </div>
    </div>

		<div style = "background-color : white; padding-top: 10px;" class="container2">
			<p style = "font-size : 30px; margin-left:200px;">Purchase list</p>
			
			<table class="table table-bordered table-hover"
				style="text-align: center; border: 3px solid #dddddd; margin-top: 20px; margin-left: auto; margin-right: auto; width: 1500px;">
				<thead>
					<tr>
						<th style="background-color: #fafafa; color: #000000; width :150px ">Image</th>
						<th style="background-color: #fafafa; color: #000000; width :150px">Name</th>
						<th style="background-color: #fafafa; color: #000000; width: 100px">Price</th>
						<th style="background-color: #fafafa; color: #000000; width: 50px">Quantity</th>
						<th style="background-color: #fafafa; color: #000000; width: 100px">Total Price</th>
					</tr>
					<tbody>
					<%
					PurchaselistDao dao = new PurchaselistDao();
					String ID = request.getParameter("userID");
					List<Purchaselist> plist = dao.getPurchaselist(ID);
					int subtotal = 0;
					for(int i=0;i<plist.size();i++){
						Purchaselist purchase = plist.get(i);
					%>
					<tr>
						<th><img src="images/goods/<%=purchase.getImg() %>"></th>
						<th style = "vertical-align : middle"><%=purchase.getName() %></th>
						<th style = "vertical-align : middle"><%=purchase.getPrice() %></th>
						<th style = "vertical-align : middle"><%=purchase.getAmount() %></th>
						<th style = "vertical-align : middle"><%=purchase.getAmount() * purchase.getPrice() %></th>
					</tr>
					<%
						subtotal += purchase.getAmount() * purchase.getPrice();
					}
					%>
					</tbody>
			</table>
			<p style = "text-align:right; padding-right:300px;">Subtotal : <%=subtotal %> </p>
			
			<p style = "font-size : 30px; margin-left:200px;">Ticketing list</p>
			<table class="table table-bordered table-hover"
				style="text-align: center; border: 3px solid #dddddd; margin-top: 20px; margin-left: auto; margin-right: auto; width: 1500px;">
				<thead>
					<tr>
						<th style="background-color: #fafafa; color: #000000; width :150px">Hometeam</th>
						<th style="background-color: #fafafa; color: #000000; width: 20px"> </th>
						<th style="background-color: #fafafa; color: #000000; width: 150px">Awayteam</th>
						<th style="background-color: #fafafa; color: #000000; width: 100px">Date</th>
						<th style="background-color: #fafafa; color: #000000; width: 100px">Time</th>
						
					</tr>
					<tbody>
					<%
					TicketingDao dao1 = new TicketingDao();
					List<Ticketing> tlist = dao1.getTicketinglist(ID);
					for(int i=0;i<tlist.size();i++){
						Ticketing ticketing = tlist.get(i);
					%>
					<tr>
						<th style = "vertical-align : middle"><%=ticketing.getHOMETEAM() %></th>
						<th>vs</th>
						<th style = "vertical-align : middle"><%=ticketing.getAWAYTEAM() %></th>
						<th style = "vertical-align : middle"><%=ticketing.getDATE() %></th>
						<th style = "vertical-align : middle"><%=ticketing.getTIME() %></th>
					</tr>
					<%
					}
					%>
					</tbody>
			</table>
			
			<div style = "text-align: center; margin-top: 50px; padding-bottom: 30px; margin-left : auto; margin-right : auto;"id="button">
			<button onclick = "location.href = 'goods.jsp'" type="button" class="btn btn-primary py-2 px-2 mr-2" >return to shop</button>
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