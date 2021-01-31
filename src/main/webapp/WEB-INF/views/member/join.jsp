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

  <title>Bon Voyage -- Sign Up</title>

<style>
/* input style */	
	.input-groups {
				width : 400px;
				margin: 40px auto;
				position : relative; /*기준*/
 }
     input{
     width : 380px;
      border:none;
      border-bottom:1px solid #888;
      font-size : 20px;
          /*inline → block으로 바꾸면 글자가 내려옴*/
      display : block;
   }
     input:focus{
     	outline : none;
     	border-bottom-width:4px;
     	border-color:#48f;
     	transition : 0.5s;
    }
     label{
     	position : absolute; /*label이 input 바로 위에 위치*/
     	color : #aaa;
     	left : 0;
     	top: 0;
     	opacity: 0; /*글자 안보이게만 */
     	visibility:hidden; /*화면에 안보이게 해줌. 클릭하면 label을 재빨리 위로 올리고 visible로 바꿈*/
     	transition:0.5s; /*3개가 한꺼번에 실행*/
   }
     .label-top{
     	top:-20px;
     	opacity: 1;
     	visibility : visible;
     }
     
  /* button style */
  .join{
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
.join:hover{
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

 <form onsubmit="submitJoinForm(this); return false;"
  			action="#" method="POST"  
  			style="height:550px; padding:30px;">
 	<div class="input-groups" >
 		<label for="ID" >ID</label>
 		<input type="text" id="ID" placeholder="「아이디」를 입력해주세요."
 		         autofocus="autofocus"/>
 	</div>
 	<div class="input-groups" >
 		<label for="pw">Password</label>
 		<input type="password" id="pw" placeholder="「비밀번호」를 입력해주세요."/>
 	</div>
 	<div class="input-groups" >
 		<label for="rePw">Confirm Password</label>
 		<input type="password" id="rePw" placeholder="「비밀번호 확인」을 입력해주세요."/>
 	</div>
 	<div class="input-groups" >
 		<label for="name">Name</label>
 		<input type="text" id="name" placeholder="「이름」을 입력해주세요"/>
 	</div>
 	<div class="input-groups">
 		<input class="join" type="submit" value="Sign Up"/>
  		<input class="button" onclick="history.back();" type="button" value="Back"/>
 	</div>
 </form>
  
  
  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
       <p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
    </div>
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  
</body>

<script>
/* input
	input을 클릭하면 placeholder가 없어지는.
	a.attr(b,c) -> a요소의 b라는 값을 c로 바꿈. (값을 바꿈)
*/
$('input').click(function(){
	  $(this).attr('placeholder',''); //그 요소만 가져오니깐 this -> 클릭을 할때 빈칸으로 바꿈
/*  input을 클릭하면 label에다가 .label-top이 들어오겠끔
	  input에서 부모로갔다가 label찾기 prev를 사용해도 되지만 그러면 사이에 아무것도 못 들어옴
*/
	  $(this).parent().find('label').addClass('label-top');
});
	
// 기능	
	
	function submitJoinForm(form){
		form.ID.value = form.ID.value.trim();
		if (form.ID.value.length == 0) {
			alert('아이디를 꼭 입력해주세요 :)');
			form.ID.focus();
			return false;
		}
		
		if(form.ID.value.length < 4) {
			alert('아이디를 4자 이상 입력해주세요!');
			form.ID.focus();
			return false;
		}
		
		form.pw.value = form.pw.value.trim();
		if (form.pw.value.length == 0) {
			alert('비밀번호를 꼭 입력해주세요 :)');
			form.pw.focus();
			return false;
		}
		form.rePw.value = form.rePw.value.trim();
		if (form.rePw.value.length == 0) {
			alert('비밀번호 확인을 꼭 입력해주세요 :)');
			form.rePw.focus();
			return false;
		}
		if(form.pw.value != form.rePw.value){
			 alert('비밀번호가 일치하지않습니다. 다시 확인 해주세요 :)');
				form.pw.focus();
				return false;
		}		
		form.name.value = form.name.value.trim();
		if (form.name.value.length == 0) {
			alert('이름을 꼭 입력해주세요 :)');
			form.name.focus();
			return false;
		}
	     
		form.submit();
	}
</script>

</html>