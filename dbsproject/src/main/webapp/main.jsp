<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>English Premier League</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
  
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css'>
  
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
  
  <!--로그인 폼 css-->
  <link rel="stylesheet" href="css/demo.css">

  <link rel="stylesheet" href="css/style2.css">



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
            <a href="main.jsp">
              <img src="images/Premier_League-Logo.wine.png" alt="Logo">
            </a>
          </div>
          <div class="ml-auto">
            <nav class="site-navigation position-relative text-right" role="navigation">
							<ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
								<li class="active"><a href="main.jsp" class="nav-link">Home</a></li>
								<li><a href="players.jsp" class="nav-link">Players</a></li>
								<li><a href="clubs.jsp" class="nav-link">Clubs</a></li>
								<li><a href="schedule.jsp" class="nav-link">schedule</a></li>
								<li><a href="matches.jsp" class="nav-link">results</a></li>
								<li><a href="goods.jsp" class="nav-link">Goods</a></li>
								<li><a href="cart.jsp?userID=<%=userID%>" class="nav-link">Cart</a></li>
								<li><a href="purchaselist.jsp?userID=<%=userID%>" class="nav-link">Purchase list</a></li>
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
          <div class="col-lg-5 ml-auto">
            <h1 class="text-white">English Premier League</h1>
            <p>This is a website that provides EPL information.</p>
            <%  
                if(userID == null) { 
            %>
            <p>
              <button type="button" class="btn btn-primary py-3 px-4 mr-3" data-toggle="modal" data-target="#loginModal">Login</button>
              <a href="join.jsp" class="more light">Sign up</a>
            </p>  
            <%
                }else{
            %>
            <p>
              <button type="button" class="btn btn-primary py-3 px-4 mr-3" onclick="location.href = 'logoutAction.jsp'">Logout</button>
            </p>
            <%
            	}
            %>
            
          </div>
        </div>
      </div>
    </div>

    <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header border-bottom-0">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="form-title text-center">
              <h4 class="modal-title">Login</h4>
            </div>
            <div class="d-flex flex-column text-center">
              <form id="login-form" method="post" action="http://localhost:8080/dbsproject/LoginAction">
                <div class="form-group">
                  <input type="text" class="modal-input" id="email1" name="userID" placeholder="Your ID..." required>
                </div>
                <div class="form-group">
                  <input type="password" class="modal-input" id="password1" name="userPassword" placeholder="Your password..." required>
                </div>
                <button type="submit" class="btn btn-info btn-block btn-round">Login</button>
              </form>
              <div class="modal-footer d-flex justify-content-center">
                <div class="signup-section">Not a member yet? <a href="join.jsp" class="text-info"> Sign Up</a>.<br>
                Forgot ID?<a href="#a" class="text-info"> Find ID</a>.</div>
              </div>            
            </div>
          </div>
        </div>          
      </div>
    </div>
    


    <footer class="footer-section">
      
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
    </footer>

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