<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>script2.jsp</title>
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


</body>
<script type="text/javascript">
	/*<ol>태그 이벤트(부모)*/
	lang.onclick = function(e){
		console.log(this);
	}

	/*<li>태그 이벤트(자식)*/
	for(let li of lang.children){
		li.onclick = function(){
			console.log(this.innerText);
		}
	}
	
	/*<body>태그 이벤트*/
	document.body,onclick = function(){
		console.log("body click..")
	}
	

</script>

<%-- 
	[event bubble]
		: 				
 --%>
</html>