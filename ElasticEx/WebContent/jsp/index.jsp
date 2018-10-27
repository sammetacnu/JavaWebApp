<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">


function checkLoginState() {
  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });
}

FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
});

 
window.fbAsyncInit = function() {
  FB.init({
    appId      : '2100983769933156',
    cookie     : true,
    xfbml      : true,
    version    : '{api-version}'
  });
    
  FB.AppEvents.logPageView();   
    
};

(function(d, s, id){
   var js, fjs = d.getElementsByTagName(s)[0];
   if (d.getElementById(id)) {return;}
   js = d.createElement(s); js.id = id;
   js.src = "https://connect.facebook.net/en_US/sdk.js";
   fjs.parentNode.insertBefore(js, fjs);
 }(document, 'script', 'facebook-jssdk'));
</script>
 
 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Samms Dev Center</title>
</head>
<body>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.1&appId=2100983769933156&autoLogAppEvents=1';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<b>This Home page will call the page from Simple Storage Service bucket.</b>
 <br><br><br><br><br>
 <p>
 
 
 
  <b>
 <a href="<%=request.getContextPath()%>/Test">Call the Servel</a>
 </b>
 <br><br><br><br><br>
 <h2>Login with FaceBook ID:</h2>
 
 <button name="LoginwithFB" id="loginIdB" onclick="checkLoginState();">Login</button>
<div class="fb-login-button" data-max-rows="1" data-size="large" data-button-type="continue_with" data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false"></div>
</p>
</body>
</html>