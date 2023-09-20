<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>script3.jsp</title>
<style type="text/css">
	ol{
		border: 3px solid red;
	}
	li{
		border: 3px solid blue;
	}
</style>
</head>
<body>
<ol id="lang">
	<li>KIM</li>
	<li>EUN</li>
	<li>BI</li>
</ol>

<script type="text/javascript">
	lang.onclick = function(e){
		console.log(this);
		let li = e.target // target 속성 : 맨처음에 이벤트가 발생한 객체를 확인
		li.style.background = 'yellow';
	}
	
</script>



</body>
</html>