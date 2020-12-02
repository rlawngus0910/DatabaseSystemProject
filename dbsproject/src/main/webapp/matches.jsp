<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="EUC-KR"%>
<%@ page import="kr.or.connect.dbsprojectDto.Matchresult"%>
<%@ page import="kr.or.connect.dbsprojectDao.MatchresultDao"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Date"%>

<!DOCTYPE html>
<html>
<%
	List<Matchresult> matchlist = new MatchresultDao().getMatchresult();
%>
<head>
<title>Soccer &mdash; Website by Colorlib</title>
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
						<a href="index.html"> <img
							src="images/Premier_League-Logo.wine.png" alt="Logo">
						</a>
					</div>
					<div class="ml-auto">
						<nav class="site-navigation position-relative text-right"
							role="navigation">
							<ul
								class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
								<li class="active"><a href="index.html" class="nav-link">Home</a></li>
								<li><a href="Players.html" class="nav-link">Players</a></li>
								<li><a href="Matchresults.html" class="nav-link">Matchresults</a></li>
								<li><a href="Goods.html" class="nav-link">Goods</a></li>
								<li><a href="Ticketing.html" class="nav-link">Ticketing</a></li>
								<li><a href="Matches.html" class="nav-link">Matches</a></li>
							</ul>
						</nav>

						<a href="#"
							class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black float-right text-white"><span
							class="icon-menu h3 text-white"></span></a>
					</div>
				</div>
			</div>
		</header>

		<div class="hero overlay"
			style="background-image: url('images/bg_3.jpg');">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-5 mx-auto text-center">
						<h1 class="text-white">RESULT</h1>
						<p>Introduce EPL matchresults.</p>
					</div>
				</div>
			</div>
		</div>



		<table class="table table-borderless">
			<thead>
				<tr>
				</tr>
			</thead>
			<tbody style="padding-left:100px; padding-right:100px;">
				<%
			for (int i = 0; i < matchlist.size() - 1; i++) {
			Matchresult matchresult = matchlist.get(i);
			Matchresult tempresult = matchlist.get(i+1);%>

				<% if(!matchresult.getDATE().equals(tempresult.getDATE())&&i!=1){
			%>

				<tr style="text-align: center; color : Snow; font-weight : bold; font-size : x-large">
					<td></td>
					<td><%=matchresult.getDATE()%></td>
					<td></td>
				</tr>
				<%
					
				}
			else if(i==0){
		%>
				<tr style="text-align: center;  color : Snow; font-weight : bold; font-size : x-large">
					<td></td>
					<td><%=matchresult.getDATE()%></td>
					<td></td>
				</tr>
				<%
					
				}
			
			
			if(matchresult.getHOMESCORE()>matchresult.getAWAYSCORE()){
			%>

				<tr style="text-align: center; ">
					<td style="color : RoyalBlue; font-weight : bold; "><%=matchresult.getHOMECLUB()%></td>
					<td style="color : white;">vs</td>
					<td><%=matchresult.getAWAYCLUB()%></td>
				</tr>
				<tr style="text-align: center;">
					<td style="color : RoyalBlue; font-weight : bold;"><%=matchresult.getHOMESCORE()%></td>
					<td></td>
					<td><%=matchresult.getAWAYSCORE()%></td>
				</tr>
				<%
					
				}
			else if(matchresult.getHOMESCORE()<matchresult.getAWAYSCORE()){
		%>
				<tr style="text-align: center; ">
					<td ><%=matchresult.getHOMECLUB()%></td>
					<td style="color : white;">vs</td>
					<td style="color : RoyalBlue; font-weight : bold;"><%=matchresult.getAWAYCLUB()%></td>
				</tr>
				<tr style="text-align: center; ">
					<td><%=matchresult.getHOMESCORE()%></td>
					<td></td>
					<td style="color : RoyalBlue; font-weight : bold;"><%=matchresult.getAWAYSCORE()%></td>
				</tr>
				<%
					
				}
			else{
		%>
		<tr style="text-align: center;  color : PaleGreen ;">
					<td><%=matchresult.getHOMECLUB()%></td>
					<td style="color : white;">vs</td>
					<td><%=matchresult.getAWAYCLUB()%></td>
				</tr>
				<tr style="text-align: center; color : PaleGreen;">
					<td><%=matchresult.getHOMESCORE()%></td>
					<td></td>
					<td><%=matchresult.getAWAYSCORE()%></td>
				</tr>
				<%
			}
				%>
		



				<%
				}
		%>

			</tbody>

		</table>






		<footer clas s="footer-section">
			<div class="container">
				<div class="row">
					<div class="col-lg-3">
						<div class="widget mb-3">
							<h3>News</h3>
							<ul class="list-unstyled links">
								<li><a href="#">All</a></li>
								<li><a href="#">Matchresult News</a></li>
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
	<script src="js/jquery.mb.YTMatchresult.min.js"></script>


	<script src="js/main.js"></script>

</body>

</html>