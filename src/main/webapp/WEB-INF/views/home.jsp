<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<html>
<head>
<style>


	.main{
			min-width: 900px;
			min-height: 800px;
			margin:0px auto;
			text-align: center;
			z-index: 1;
			position: relative;
	}
	.main #Seoul{
		position: absolute;
		top:88%;
		left:26%;
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

	<div class="main">
			<img src ="resources/image/mainPage/MainPage.jpg" width="900px" height="800">
			<div id="Seoul">
				<a href="#">제주</a>
			</div>
	</div>
	


<script>
</script>
</body>
</html>

