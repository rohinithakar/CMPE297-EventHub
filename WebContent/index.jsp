<!-- HomePage -->

<!DOCTYPE html>
<html lang="en" class="no-js demo-1">
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>EventHub</title>
	<meta name="description" content="EventHub - Event Planning Made Simple" />
	<meta name="keywords" content="event planning, birthday party, wedding planning, new year party" />
	<meta name="author" content="Codrops" />
	
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script> 
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
	<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script> 
	
	<link rel="shortcut icon" href="../favicon.ico">
	<link rel="stylesheet" type="text/css" href="css/default.css" />
	<link rel="stylesheet" type="text/css" href="css/bookblock.css" />

	<link rel="stylesheet" type="text/css" href="css/demo1.css" />
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<script src="js/modernizr.custom.js"></script> 

	<script src="js/jquerypp.custom.js"></script>
	<script src="js/jquery.bookblock.js"></script>
	<script src="js/slidercode.js"></script>

	<script src="js/registration.js"></script>
	<script src="js/login.js"></script>
	<script src="//connect.facebook.net/en_US/all.js"></script>
	<script src="js/fb.js"></script>
	<script src="js/forgotPassword.js"></script>


</head>
<body>

	<div id="wsb-canvas-template-page" class="wsb-canvas-page page"style="height: 1050px; margin: auto; width: 1019px; background-color: #ffffff; position: relative; margin-top: 0px">

		<div id="d_header">
			<div id="heading">
			
			<div class="left">
				<span class="s_heading">EventHub</span><br>
				<span class="s_heading" style="font-size: 14px; float:left">Birthday &#9679; Wedding &#9679; Christmas</span>
			</div>
			
		<div class="right">
				<div style="display:inline-block; vertical-align:top; margin-left:200pxx;">
				<a href="index.jsp" id="home" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" style="font-size: 14px; color: #561243;" data-inline="true">
				<span class="ui-button-text">Home</span>
				</a>
				<% Integer userId = (Integer)session.getAttribute("userId"); %>
				
				<a id="viewSummary" href="SummaryPage.jsp" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" 
				style="font-size:14px;color: #561243;<%if(userId == null){ %>display:none; <% } %>" data-inline="true"; ><span class="ui-button-text">MyEvents</span></a>
				
				<a id="login-user" style="font-size: 14px; color: #561243; <%if( userId != null){ %>display:none; <% } %>" data-inline="true";>Login</a>
				<a id="logout-user" href="logOut.jsp" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" 
				style="font-size:14px;color: #561243;<%if(userId == null){ %>display:none; <% } %>" data-inline="true"; ><span class="ui-button-text">LogOut</span></a>
				<a id="create-user" style="font-size: 14px; color: #561243; <%if(userId != null){ %>display:none; <% } %>" data-inline="true">Register</a>
				<span id = "fblogin" style="data-inline:true; <%if(userId != null){ %>display:none; <% } %>">
  				<a href="javascript:login();"> <img src="img/fb-login.png"></a>
   				</span>
				</div>
				<div style="font-size=12px;"><span><%if(userId != null){ %>Welcome! <% } %> </span></div>
				
   				
  			    <div id = "fblogout" style="display:inline-block;visibility:hidden;">
  			    <img style="data-inline:true;" id="profile_pic"/>
  			    <div style="display:inline-block;">
  			    <span id="profile_name" style="data-inline:true;font-size:12px;visibility:hidden;"></span><br/>
  			    <a href="javascript:logout();"><img src="img/facebook_logout_button.png"></a> 
 				</div> 			    	    
  			    </div>
  			   
  			</div>
  			      
				
			</div>
		</div>
		<br>
		<div class="container">
			<div class="main clearfix">
				<div class="bb-custom-wrapper">
				
					<!--<nav>
						<a id="bb-nav-first" href="#" class="bb-custom-icon bb-custom-icon-first">First page</a>
						<a id="bb-nav-prev" href="#" class="bb-custom-icon bb-custom-icon-arrow-left">Previous</a>
						<a id="bb-nav-next" href="#" class="bb-custom-icon bb-custom-icon-arrow-right">Next</a>
						<a id="bb-nav-last" href="#" class="bb-custom-icon bb-custom-icon-last">Last page</a>
					</nav> -->
					
					<div id="bb-bookblock" class="bb-bookblock">
						<div class="bb-item">
							<img src="images/demo1/1.jpg" class="bookflip-image" alt="image01"/>
						</div>
						<div class="bb-item">
							<img src="images/demo1/2.jpg" class="bookflip-image" alt="image02"/>
						</div>
						<div class="bb-item">
							<img src="images/demo1/3.jpg" class="bookflip-image" alt="image03"/>
						</div>
						<div class="bb-item">
							<img src="images/demo1/4.jpg" class="bookflip-image" alt="image04"/>
						</div>
						<div class="bb-item">
							<img src="images/demo1/5.jpg" class="bookflip-image" alt="image05"/>
						</div>
					</div>
					
				</div>
			</div>

			<!-- /container -->
			<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script> -->
			<script src="js/jquerypp.custom.js"></script>
			<script src="js/jquery.bookblock.js"></script>
			<script>
			var Page = (function() {
				
				var config = {
					$bookBlock : $( '#bb-bookblock' ),
					$navNext : $( '#bb-nav-next' ),
					$navPrev : $( '#bb-nav-prev' ),
					$navFirst : $( '#bb-nav-first' ),
					$navLast : $( '#bb-nav-last' )
				},
				init = function() {
					config.$bookBlock.bookblock( {
						speed : 1000,
						shadowSides : 0.8,
						shadowFlip : 0.7,
						autoplay: true,
						shadows:true
					} );
					initEvents();
				},
				initEvents = function() {

					var $slides = config.$bookBlock.children();

						// add navigation events
						config.$navNext.on( 'click touchstart', function() {
							config.$bookBlock.bookblock( 'next' );
							return false;
						} );

						config.$navPrev.on( 'click touchstart', function() {
							config.$bookBlock.bookblock( 'prev' );
							return false;
						} );

						config.$navFirst.on( 'click touchstart', function() {
							config.$bookBlock.bookblock( 'first' );
							return false;
						} );

						config.$navLast.on( 'click touchstart', function() {
							config.$bookBlock.bookblock( 'last' );
							return false;
						} );
						
						// add swipe events
						$slides.on( {
							'swipeleft' : function( event ) {
								config.$bookBlock.bookblock( 'next' );
								return false;
							},
							'swiperight' : function( event ) {
								config.$bookBlock.bookblock( 'prev' );
								return false;
							}
						} );

						// add keyboard events
						$( document ).keydown( function(e) {
							var keyCode = e.keyCode || e.which,
							arrow = {
								left : 37,
								up : 38,
								right : 39,
								down : 40
							};

							switch (keyCode) {
								case arrow.left:
								config.$bookBlock.bookblock( 'prev' );
								break;
								case arrow.right:
								config.$bookBlock.bookblock( 'next' );
								break;
							}
						} );
					};

					return { init : init };

				})();
				</script>
				<script>
				Page.init();
				</script>

			<div data-type="element" style="text-align: center;">
				<div class="txt" style="font-color: #41b6ba;">
					<h3>&hearts; Event Planning Made Simple &hearts;</h3>
					<br>
					<p>
						EventHub is your one stop shop to plan all important events of
						your life! We provide list of things to be taken care of before
						each important day of your life,so that you can enjoy and cherish
						the day with your loved ones instead of worrying about task list.
						Click on links below to get started!!<br> Can't find what
						your are looking for?? Let us know and we will work on improving
						our services.
					</p>


				</div>
			</div>
			<br>

			<div data-type="element" style="position: absolute; left: 43px; z-index: 18; height: 94px; width: 300px; background: transparent; border: none;">
				<div class="img_theme" style="width: 300px; height: 94px; overflow: hidden; position: relative;">
					<img src="//nebula.wsimg.com/bcabd1c22038744143a961ea3559655f?AccessKeyId=D7C618D47C3AAD45453A&amp;disposition=0" alt="" style="width: 300px; height: 94px;">
				</div>
			</div>

			<div data-type="element" style="position: absolute; left: 43px; z-index: 18; height: 150px; width: 300px; background: transparent; border: none;">
				<div class="img_theme" style="width: 300px; height: 150px; overflow: hidden; position: relative;">
					<img src="//nebula.wsimg.com/bcabd1c22038744143a961ea3559655f?AccessKeyId=D7C618D47C3AAD45453A&amp;disposition=0"alt="" style="width: 300px; height: 150px;">
					<div class="text">
						<h3>
							<a href="birthday.html">Birthday</a>
						</h3>
						<span>Birthdays are fun :) Leave that worry of party planning aside and cherish it with your family and friends!</span>
					</div>
				</div>
			</div>

			<div data-type="element" style="position: absolute; left: 362px; z-index: 19; height: 150px; width: 300px; background: transparent; border: none;">
				<div class="img_theme"style="width: 300px; height: 150px; overflow: hidden; position: relative;">
					<img src="img/thumbBckgrnd.jpeg" alt="" style="width: 300px; height: 150px;" />
					<div class="text">
						<h3>
							<a href="wedding.html">Wedding</a>
						</h3>
						<span>Make your wedding memorable with perfect event planning. It starts here.</span>
					</div>
				</div>
			</div>




			<div data-type="element" style="position: absolute; left: 692px; z-index: 20; height: 150px; width: 300px; background: transparent; border: none;">
				<div class="img_theme" style="width: 300px; height: 150px; overflow: hidden; position: relative;">
					<img src="//nebula.wsimg.com/a95593e4159f4438bdaa6882b72ee99a?AccessKeyId=D7C618D47C3AAD45453A&amp;disposition=0" alt="" style="width: 300px; height: 150px;">
					<div class="text">
						<h3>
							<a href="newYear.html" style="left:100px;">New Year</a><br>
						</h3>
						<span>Look to us to plan your New Year and Christmas event. Welcome new year in style!</span>
					</div>
				</div>
			</div>
			
			<!-- End of Container -->
		</div>

		<div class="d_footer">
			<span class="copyright">© 2013 EventHub Inc. All Rights Reserved.</span>
		</div>
		
		
		
		<!-- start of button code -->
		  
			<div id="dialog-form" title="Register">
		<p class="validateTips">All form fields are required.</p>

		<form>
			<fieldset  style="display:inline;">
				<p id="error1" style="font-size:12px;"></p>
				<label for="fname">First Name</label>
				<input type="text"  name="name"  id="fname" class="text ui-widget-content ui-corner-all" style="font-size: 12px;"/><br>
				<label for="lname">Last Name</label>
				<input type="text"  name="lname"  id="lname" class="text ui-widget-content ui-corner-all" style="font-size: 12px;" /><br>
				<label for="email_reg">Email</label>
				<input type="text"  name="email_reg"  id="email_reg"  class="text ui-widget-content ui-corner-all" style="font-size: 12px;" /><br>
				<label for="password">Password</label>
				<input type="password" name="password" id="password_reg" class="text ui-widget-content ui-corner-all" style="font-size: 12px;"/>
				<label for="question">Question</label>
				<input type="text" name="question" id="question" class="text ui-widget-content ui-corner-all" style="font-size: 12px;"/>
				<label for="answer">Answer</label>
				<input type="text" name="answer" id="answer" class="text ui-widget-content ui-corner-all" style="font-size: 12px;"/>
			</fieldset>
		</form>
	</div> 
	
	  <div id="dialog-form1" title="Login">
		<p class="validateTips">All form fields are required.</p>

		<form id="login_form">
			<fieldset style="display:inline;">
				<p id="errorMessage" style="font-size:12px;"></p>
				<label for="email_login">Email</label> <input type="text" name="email_login" id="email_login" style="font-size:12px;" class="text ui-widget-content ui-corner-all" /><br>
				<label for="password_login">Password</label> <input type="password" name="password_login" id="password_login" style="font-size:12px;" class="text ui-widget-content ui-corner-all"/> <br>
				<a href='javascript:forgotPassword();' id="forgotPwd" style="font-size: 12px;"data-inline="true">
				<span>Forgot Password?</span>
				</a> 
			</fieldset>
		</form>
	</div> 
	
	<!-- end of button code -->

	</div>

</body>


</html>