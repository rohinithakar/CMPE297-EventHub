  
(function(d, s, id) {
var js, fjs = d.getElementsByTagName(s)[0];
if (d.getElementById(id)) return;
js = d.createElement(s); js.id = id;
js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=682447581775162";
fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));


window.fbAsyncInit = function()
        {
            FB.init
            (
                {
                    appId   : "682447581775162",
                    status  : true,
                    cookie  : true,
                    oauth   : true
                }
            );
            
            FB.getLoginStatus(function(response) {
            	  if (response.status === 'connected') {
            	    // the user is logged in and has authenticated your
            	    // app, and response.authResponse supplies
            	    // the user's ID, a valid access token, a signed
            	    // request, and the time the access token 
            	    // and signed request each expire
            	    var uid = response.authResponse.userID;
            	    var accessToken = response.authResponse.accessToken;
            	    console.log(response);
            	    getLoginInformation();
            	  } else if (response.status === 'not_authorized') {
            	    // the user is logged in to Facebook, 
            	    // but has not authenticated your app
            		  console.log("not authorized");
            	  } else {
            	    // the user isn't logged in to Facebook.
            	  }
            	 });
        };

        function login()
        {
            FB.login
            (
                function( response )
                {
                    if ( response.authResponse )
                    {
                    	console.log(response);
                    	getLoginInformation();
                        
                    } else {
                    	console.log("in else");
                    	console.log(response);
                    }
                }
            );
        }
        
        function logout()
        {
          document.getElementById("login-user").style.display = "inline-block";  
          document.getElementById("login-user").style.visibility = "visible";   
          document.getElementById("create-user").style.display = "inline-block"; 
      	  document.getElementById("create-user").style.visibility = "visible";  
      	  
      	  document.getElementById("fblogin").style.visibility = "visible";
      	  $("#fblogin")[0].style.display = "inline-block";
    	  //document.getElementById("fblogout").style.visibility = "hidden";   	  
      	  document.getElementById("fblogout").style.display = "none"; 
        	
          document.getElementById( "profile_name" ).style.visibility = "hidden";
          document.getElementById( "profile_pic" ).style.visibility = "hidden";

            
            FB.logout(function(response) {
            	  // user is now logged out
            	});
        }
        
        function getLoginInformation(name,id) {
        	FB.api
            (
                "/me",
                function( response )
                {
                	console.log(response);
                	document.getElementById("fblogin").style.visibility = "hidden";
                	document.getElementById("fblogin").style.display = "none";
                	document.getElementById("login-user").style.display = "none";  
                	document.getElementById("create-user").style.display = "none";  
                	document.getElementById("fblogout").style.visibility = "visible"; 
                	
                	//  document.getElementById("fblogout").style.display = "block";   

                	$("#profile_name")[0].style.visibility = "visible";
                	$("#profile_pic")[0].style.visibility = "visible";
                	$("#profile_pic")[0].src = "http://graph.facebook.com/" + response.id + "/picture"
                	//document.getElementById( "profile_pic" ).style.visibility = "visible";
                	$("#profile_name")[0].innerHTML = response.name;
                	//document.getElementById( "profile_pic" ).src = "http://graph.facebook.com/" + response.id + "/picture";
                	  
                }
            );
        }
        