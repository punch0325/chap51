<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table3.jsp</title>
<script type="text/javascript">
function genTr(){
	let line = parseInt(Math.random()*20+1);
	let col = parseInt(Math.random()*40+1);
	let fg = parseInt(Math.random()*8+30);
	let bg = parseInt(Math.random()*8+40);
	let ch = String.fromCharCode(parseInt(Math.random()*26)+'A'.charCodeAt(0));
	console.log('['+line+','+col+','+fg+','+bg+','+ch+']');
	
	let alpha = [line,col,fg,bg,ch];
	let tr = document.createElement('tr');
	
	for(let v of alpha){
		let td = document.createElement('td');
		td.innerText = v
		td.align = 'center';
		tr.append(td);
	}
	return tr;
}


window.onload = function(){
	for(let i=0; i<10; i++){
		document.querySelector('table').tBodies[0].append(genTr());
	}
}
</script>
</head>
<body>
<h1>Table Tag Practice</h1>
<hr>
<p id = "result"></p>
<table border="1" style="width:500px;" align="center">
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
			<td>32</td>
			<td>44</td>
			<td>A</td>
		</tr>
		<tr align="center">
			<td >30</td>
			<td>10</td>
			<td>36</td>
			<td>41</td>
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