<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List3.jsp</title>
<script type="text/javascript" src="/js/list3.js"></script>
</head>
<body>
<h1>웹 애플리케이션 관련 기술</h1>
<hr>
<header>
<label for="tech">기술 </label>
<%-- label 태그의 for 속성 : label 태그 안의 데이터를 클릭하면 바로 밑 input태그에 포커스가 맞춰진다.--%>
<input id ="tech" type="text">
<input id="front" type="radio" name="end" checked="checked">front
<input id="back" type="radio" name="end">back
<button id="btnAppend">추가</button>
</header>
<hr>
<ul>
	<li>
		<h3>FrontEnd</h3>
		<ol id="frontList">
			<li>javascript</li>
			<li>css</li>
		</ol>
	</li>
	<li>
		<h3>BackEnd</h3>
		<ol id="backList">
			<li>java</li>
			<li>python</li>
			<li>oracle</li>
			<li>jsp</li>
		</ol>
	</li>
</ul>
</body>
</html>