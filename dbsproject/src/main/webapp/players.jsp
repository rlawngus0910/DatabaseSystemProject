<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="kr.or.connect.dbsprojectDto.Player" %>
<%@ page import="kr.or.connect.dbsprojectDao.PlayerDao" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<%
	String pageNumber = "1";
	String search = "";
	if (request.getParameter("pageNumber") != null){
		pageNumber = request.getParameter("pageNumber");
	}
	List<Player> playerlist = new PlayerDao().getPlayer(pageNumber);
	if(request.getParameter("search") != null){
		search = request.getParameter("search");
	}
	//List<Player> searchPlayer = new PlayerDao().searchList(search);
%>
<head>
  <title>Soccer &mdash; Website by Colorlib</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">

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
            <a href="index.html">
              <img src="images/Premier_League-Logo.wine.png" alt="Logo">
            </a>
          </div>
          <div class="ml-auto">
            <nav class="site-navigation position-relative text-right" role="navigation">
              <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                <li class="active"><a href="index.html" class="nav-link">Home</a></li>
                <li><a href="matches.html" class="nav-link">Players</a></li>
                <li><a href="players.html" class="nav-link">Clubs</a></li>
                <li><a href="blog.html" class="nav-link">Goods</a></li>
                <li><a href="contact.html" class="nav-link">Ticketing</a></li>
                <li><a href="contact.html" class="nav-link">Matches</a></li>
              </ul>
            </nav>

            <a href="#" class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black float-right text-white"><span
                class="icon-menu h3 text-white"></span></a>
          </div>
        </div>
      </div>
    </header>

    <div class="hero overlay" style="background-image: url('images/bg_3.jpg');">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-5 mx-auto text-center">
            <h1 class="text-white">Players</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, molestias repudiandae pariatur.</p>
          </div>
        </div>
      </div>
    </div>
    
    <form class="form-search" style="margin: 35px; text-align:center;" action="players.jsp">
    	<input type="text" name="search" class="input-medium search-query" size="50" style="border-radius: 35px; padding-top:1rem; padding-bottom:1rem; padding-left:1.5rem;" placeholder="Search Player Name..."/>
    	<button type="submit" class="btn btn-primary py-3 px-4 mr-3">Search</button>
    </form>
    <div style = "padding-top:40px" class="container2">
    <table class="table table-bordered table-hover" style="text-align: center;border: 1px solid #dddddd;margin-left: auto;margin-right: auto;width: 1500px;">
      <thead>
      
        <tr>
          <th style="background-color: #fafafa; color: #000000; width:150px">Photo</th>
          <th style="background-color: #fafafa; color: #000000;">Name</th>
          <th style="background-color: #fafafa; color: #000000; width:100px">Position</th>
          <th style="background-color: #fafafa; color: #000000;">Team</th>
          <th style="background-color: #fafafa; color: #000000; width:100px">Backno</th>
          <th style="background-color: #fafafa; color: #000000;">Nation</th>
          <th style="background-color: #fafafa; color: #000000; width:150px">Birth</th>
        

      </thead>
      <tbody>
      <%
      	if(search == ""){      
      	  for(int i = 0;i < playerlist.size();i++){
      		  Player player = playerlist.get(i);
      	  
      %>
        <tr style = "color : white; font-size : 25px" >
        	<td><img src="images/PlayerPhoto/<%= player.getPHOTO() %>"/></td>
        	<td style = "vertical-align : middle"><%= player.getNAME() %></td>
        	<td style = "vertical-align : middle"><%= player.getPOSITION() %></td>
        	<td style = "vertical-align : middle"><%= player.getCLUB() %></td>
        	<td style = "vertical-align : middle"><%= player.getBACKNO() %></td>
        	<td style = "vertical-align : middle"><%= player.getNATION() %></td>
        	<td style = "vertical-align : middle"><%= player.getBIRTH() %></td>
        </tr>
      <%
      	 }
      }else{
  		  List<Player> searchPlayer = new PlayerDao().searchList(search);
  		  
  		  int pm = Integer.parseInt(pageNumber);
  		  int searchdata = (pm) * (10 * (pm)-10);
    	  for(int i = searchdata;i < searchdata + 20;i++){
    		  if(i == searchPlayer.size()) break;
      		  Player player = searchPlayer.get(i); 
      %>
        <tr style = "color : white; font-size : 25px" >
        	<td><img src="images/PlayerPhoto/<%= player.getPHOTO() %>"/></td>
        	<td style = "vertical-align : middle"><%= player.getNAME() %></td>
        	<td style = "vertical-align : middle"><%= player.getPOSITION() %></td>
        	<td style = "vertical-align : middle"><%= player.getCLUB() %></td>
        	<td style = "vertical-align : middle"><%= player.getBACKNO() %></td>
        	<td style = "vertical-align : middle"><%= player.getNATION() %></td>
        	<td style = "vertical-align : middle"><%= player.getBIRTH() %></td>
        </tr>
      <%
          }
      }
      %>
      <%if(search == ""){ %>  
        <tr>
        	<td colspan=7>
        		<ul class="pagination" style="margin: 0 auto;justify-content: center;">
        		<%
        			int startPage = (Integer.parseInt(pageNumber) / 10) * 10 + 1;
        			if(Integer.parseInt(pageNumber) % 10 == 0) startPage -= 10;
        			int targetPage = new PlayerDao().targetPage(pageNumber);
        			if(startPage != 1) {
        		%>
        				<li style="padding-right:15px;"><a href="players.jsp?pageNumber=<%= startPage - 1 %>"><span><%= "<" %></span></a>
        		<%
        			} else {
        		%>
        				<li><span class="glyphicon glyphicon-chevron-left" style="color: gray;"></span></li>
        		
        		<%
        			}
        			for(int i = startPage; i < Integer.parseInt(pageNumber) ; i++) {
        		%>
        				<li style="padding-right:15px;"><a href="players.jsp?pageNumber=<%= i %>"><%= i %></a></li>
        		<%
        			}
        		%>
        				<li style="padding-right:15px;" class="active"><a href="players.jsp?pageNumber=<%= pageNumber %>"><%= pageNumber %></a></li>
        		<%
        			for(int i = Integer.parseInt(pageNumber) + 1; i <= targetPage + Integer.parseInt(pageNumber); i++) {
        				if(i < startPage + 10) {
        		%>
        				<li style="padding-right:15px;"><a href="players.jsp?pageNumber=<%= i %>"><%= i %></a></li>
        		<%
        				}
        			}
        		    if(targetPage + Integer.parseInt(pageNumber) > startPage + 9) {
        		%>
        				<li style="padding-right:15px;"><a href="players.jsp?pageNumber=<%= startPage + 10 %>"><%= ">" %></a></li>
        		<%
        		    } else {
        		%>
        				<li><span class="glyphicon glyphicon-chevron-right"></span></li>
        		<%
        		
        		    }
        		%>
        		</ul>
        	</td>
        </tr>
        <%
        } else{
        
        %>
        <tr>
        	<td colspan=7>
        		<ul class="pagination" style="margin: 0 auto;justify-content: center;">
        		<%
        		    List<Player> searchPlayer = new PlayerDao().searchList(search);
        		    int targetPage = 0;
        			int startPage = (Integer.parseInt(pageNumber) / 10) * 10 + 1;
        			if(Integer.parseInt(pageNumber) % 10 == 0) startPage -= 10;
        			if(searchPlayer.size() % 20 == 0) {
        				targetPage = (searchPlayer.size() / 20);
        			}
        			else if(searchPlayer.size() % 20 != 0){
        				targetPage = (searchPlayer.size() / 20) + 1;
        			}
        			if(startPage != 1) {
        		%>
        				<li style="padding-right:15px;"><a href="players.jsp?search=<%=search %>&pageNumber=<%= startPage - 1 %>"><span><%= "<" %></span></a>
        		<%
        			} else {
        		%>
        				<li><span class="glyphicon glyphicon-chevron-left" style="color: gray;"></span></li>
        		
        		<%
        			}
        			for(int i = startPage; i < Integer.parseInt(pageNumber) ; i++) {
        		%>
        				<li style="padding-right:15px;"><a href="players.jsp?search=<%=search %>&pageNumber=<%= i %>"><%= i %></a></li>
        		<%
        			}
        		%>
        		    <li style="padding-right:15px;" class="active"><%= pageNumber %></li>
        		
        		<%
        			for(int i = Integer.parseInt(pageNumber) + 1; i <= targetPage; i++) {
        				if(i < startPage + 10) {
        		%>
        				<li style="padding-right:15px;"><a href="players.jsp?search=<%=search %>&pageNumber=<%= i %>"><%= i %></a></li>
        		<%
        				}
        			}
        		    if(targetPage + Integer.parseInt(pageNumber) > startPage + 9) {
        		%>
        				<li style="padding-right:15px;"><a href="players.jsp?search=<%=search %>&pageNumber=<%= startPage + 10 %>"><%= ">" %></a></li>
        		<%
        		    } else {
        		%>
        				<li><span class="glyphicon glyphicon-chevron-right"><%= ">" %></span></li>
        		<%
        		    }
        		%>
        		</ul>
        	</td>
        </tr>
        
        <%
        }
        
       	%>
      </tbody>
    </table>
  </div>

    
    <div class="container site-section">
      <div class="row">
        <div class="col-6 title-section">
          <h2 class="heading">Our Blog</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-6">
          <div class="custom-media d-flex">
            <div class="img mr-4">
              <img src="images/img_1.jpg" alt="Image" class="img-fluid">
            </div>
            <div class="text">
              <span class="meta">May 20, 2020</span>
              <h3 class="mb-4"><a href="#">Romolu to stay at Real Nadrid?</a></h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus deserunt saepe tempora dolorem.</p>
              <p><a href="#">Read more</a></p>
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="custom-media d-flex">
            <div class="img mr-4">
              <img src="images/img_3.jpg" alt="Image" class="img-fluid">
            </div>
            <div class="text">
              <span class="meta">May 20, 2020</span>
              <h3 class="mb-4"><a href="#">Romolu to stay at Real Nadrid?</a></h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus deserunt saepe tempora dolorem.</p>
              <p><a href="#">Read more</a></p>
            </div>
          </div>
        </div>
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
                </script> All rights reserved | This template is made with <i class="icon-heart"
                  aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
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
  <script src="js/jquery.mb.YTPlayer.min.js"></script>


  <script src="js/main.js"></script>

</body>

</html>