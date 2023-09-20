<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List5.jsp</title>
<%--내가 만든거--%>
<script type="text/javascript">
	function add(){
		let tech = document.getElementById('tech');
		let front = document.getElementById('front');
		let li = document.createElement('li');
		
		if(tech.value.trim() == ''){
			tech.value='';
			alert('입력된 값이 없습니다.');
			retrun;
		}
		
		alert('추가 되었습니다!');
		
		li.innerText=tech.value.trim();
		
		if(front.checked){
			frontList.append(li);
		}else{
			backList.append(li);
		}
		
		tech.value='';
		tech.focus();
		
		console.log(tech.value.trim());
		console.log(front.checked);
		console.log(back.checked);
		console.log(li);
	}
</script>
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
<button onclick="add()">추가</button>
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