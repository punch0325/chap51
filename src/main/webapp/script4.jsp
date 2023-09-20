<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>script4.jsp</title>
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
	<li>BI❤</li>
</ol>

<script type="text/javascript">
	for(let li of lang.children){
		li.onclick = function(){
			this.style.background = 'lime';
		}
	}

	
</script>



</body>
</html>