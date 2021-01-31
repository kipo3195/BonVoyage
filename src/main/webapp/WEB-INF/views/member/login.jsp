<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Bon Voyage -- Sign In</title>

<style>
/* input style */	
	.input-groups {
				width : 400px;
				margin: 40px auto;
				position : relative
 }
     input{
     width : 380px;
      border:none;
      border-bottom:1px solid #888;
      font-size : 20px;
      display : block;
   }
     input:focus{
     	outline : none;
     	border-bottom-width:4px;
     	border-color:#48f;
     	transition : 0.5s;
    }
     label{
     	position : absolute; 
     	color : #aaa;
     	left : 0;
     	top: 0;
     	opacity: 0; 
     	visibility:hidden; 
     	transition:0.5s; 
   }
     .label-top{
     	top:-20px;
     	opacity: 1;
     	visibility : visible;
     }
     
  /* button style */
  .login{
  margin : 7px 0 0 7px;
  background:#48f;
  color:#fff;
  border:none;
  position:relative;
  height:40px;
  font-size:1.2em;
  padding:0 1em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
}
.login:hover{
  background:#fff;
  color:#48f;
} 
.button{
  margin : 7px 0 0 7px;
  background:#93b3b7;/*#1AAB8A  #518d7d*/
  color:#fff;
  border:none;
  position:relative;
  height:40px;
  font-size:1.2em;
  padding:0 1em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
}
.button:hover{
  background:#fff;
  color:#93b3b7;
}

</style>
 <!-- Bootstrap core CSS -->
  <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
   <!-- Custom styles for this template --> 
  <link href="${pageContext.request.contextPath}/resources/css/blog-post.css" rel="stylesheet">
</head>

<body>
  <!-- Navigation -->
  <%@ include file="../common/navigation.jsp" %>
  
  <!-- Content -->

 <form style="height:550px; padding:30px;">
 	<div class="input-groups" >
 		<label for="ID" >ID</label>
 		<input type="text" id="ID" placeholder="「아이디」를 입력해주세요."/>
 	</div>
 	<div class="input-groups" >
 		<label for="pw">Password</label>
 		<input type="password" id="pw" placeholder="「비밀번호」를 입력해주세요."/>
 	</div>
 	<div class="input-groups">
 		<input class="login" type="submit" value="Sign In"/>
  		<input class="button" onclick="history.back();" type="button" value="Back"/>
 	</div>
 </form>
  
  
  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
       <p class="m-0 text-center text-white">Copyright &copy;  Website 2020</p>
    </div>
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  
</body>

<script>
/* input */
$('input').click(function(){
	  $(this).attr('placeholder',''); 
	  $(this).parent().find('label').addClass('label-top');
});

</script>

</html>