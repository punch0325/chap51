<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>image.jsp</title>
<script type="text/javascript">
	window.onload=function(){
		let img = document.querySelector('img');
		let cat1 = document.querySelectorAll('button')[0];
		let cat2 = document.querySelectorAll('button')[1];
		
		cat1.onclick=function(){
			img.src = 'img/cat3.jpg'
			img.style.visibility = 'visible'
		}
		
		cat2.onclick=function(){
			img.src = 'img/cat2.jpg'
			img.style.visibility = 'visible'
		}
	}
</script>
</head>
<body>
<h1>Image Tag</h1>
<hr>

<button>고앵1</button>
<button>고앵2</button>

<br>
<br>

<div style="height:410px;">
<img style="visibility:hidden;" alt="이미지가 없습니다." src="img/cat3.jpg" width="300"> <br>
<!-- img 태그에 width 속성을 주면 가로세로 비율을 알아서 맞춰서 width값을 반영한다.  -->
<img style="visibility:hidden;" alt="이미지가 없습니다." src="img/cat1.jpg" width="300"> <br>																				
</div>
<img alt="이미지가 없습니다." src="img/cat4.jpg">
</body>
</html>