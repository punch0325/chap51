<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table.jsp</title>
<script type="text/javascript">
window.onload=function(e){
	let table = document.querySelector('table');
	
	table.onclick = function(e){
		let td = e.target;
		let tr = td.parentElement;
		let str =`
			sectionRowIndex = \${tr.sectionRowIndex} <br>
			rowIndex = \${tr.rowIndex}									<br>
			cellIndex = \${td.cellIndex} 								<br>
		`
		result.innerHTML = str;
			
	}
}
</script>
</head>
<body>
<h1>Table Tag Practice</h1>
<hr>
<p id = "result"></p>
<table border="1" style="width:500px;">
	<thead>
		<tr>
			<th>line</th>
			<th>col</th>
			<th>fg</th>
			<th>bg</th>
			<th>ch</th>
		</tr>
	</thead>
	<tbody>
		<tr align="center">
			<td >10</td>
			<td>20</td>
			<td>White</td>
			<td>Red</td>
			<td>A</td>
		</tr>
		<tr align="center">
			<td >30</td>
			<td>10</td>
			<td>Blue</td>
			<td>Black</td>
			<td>G</td>
		</tr>
	</tbody>
	<tfoot>
		<tr>
			<th>line</th>
			<th>col</th>
			<th>fg</th>
			<th>bg</th>
			<th>ch</th>
		</tr>	
	</tfoot>
</table>
</body>
</html>