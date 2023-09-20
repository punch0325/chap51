<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>heading.jsp</title>
<script type="text/javascript">
	function change(e){
		let value1 = document.querySelectorAll('i')[0];
		let value2 = document.querySelectorAll('i')[2];
		document.body.style.fontSize = e.target.value+'px';
		value1.innerText = e.target.value;
		value2.innerText = e.target.value;
	}
</script>
</head>
<body>
<header style="font-size:15px;">
	<input type="range" min="1" max="100" oninput="change(event)">
	<span >
		<i></i><i><sup>px</sup></i> <!-- sup 태그 : 위 첨자 -->
		<i></i><i><sub>px</sub></i> <!-- sub 태그 : 아래 첨자 -->
	</span>
</header>
<hr>
<h1>Heading1 <sup>💦</sup></h1>
<h2><b>Heading2</b></h2>
<h3><ins>Heading3</ins></h3>
<h4><del>Heading4</del></h4>
<h5>Heading5 <sub>✔</sub></h5>


</body>
</html>