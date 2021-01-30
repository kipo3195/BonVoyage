<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<html>
<head>
<style>

.mainPage{
	background: url(resources/image/mainPage/MainPage.jpg);
	position:relative;
	height: 1200px;
	width: 1050px;
}
.mainPage a{
	position: absolute;
	
	border-radius: 50%;
	background: rgba(0,0,0,0.1);
	text-indent: -9999em;
}
.seoul{
	width:60px;
	height: 60px;
	right:635px;	
	bottom:839px;
}
.jeju{
	width:80px;
	height:60px;
	left:195px;
	top:1050px;
}
.jeju:hover{

}
.busan{
	width:85px;
	height:50px;
	top:800px;
	left:700px;
}



</style>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <!-- Bootstrap core CSS -->
  <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath}/resources/css/blog-post.css" rel="stylesheet">
</head>

<body>
	<nav>
		<%@ include file="common/navigation.jsp" %>
	</nav>

	<div class="mainPage">
				<a href="voyage/jeju" class="jeju">제주</a>
				<a href="#" class="busan">부산</a>
				<a href="#" class="seoul">서울</a>
	</div>
	


<script>
</script>
</body>
</html>

