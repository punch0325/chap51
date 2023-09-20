<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>alpha.jsp</title>
<style type="text/css">
	.surface{
		border:5px solid hotpink;
		border-collapse:collapse;
		fontfamily:monospace;
	}
</style>
<script type="text/javascript" src="/js/alpha.js"></script>
</head>
<body>
<h1>Alpha Move</h1>
<hr>
<span><i>count : </i><i id="count"></i></span>
<table id="cmd"class="surface">
	<tbody>
		<c:forEach var="i" begin="0" end="19">
			<tr>
				<c:forEach var="j" begin="0" end="39">
					<td style="color:black; background: black;">#</td>
				</c:forEach>
			</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>