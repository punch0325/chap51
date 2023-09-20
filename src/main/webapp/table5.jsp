<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table5.jsp</title>
<script type="text/javascript">
class Alpha{
	static color = [ 'Black',
									'Red',
								    'Green',
								    'Yellow',
								    'Blue',
								    'Magenta',
								    'Cyan',
								    'White' ]
	
	constructor(){
		this.line = parseInt(Math.random()*20+1);
		this.col = parseInt(Math.random()*40+1);
		do{
			this.fg = Alpha.color[parseInt(Math.random()*8)];
			this.bg = Alpha.color[parseInt(Math.random()*8)];
		}while(this.fg == this.bg);
		this.ch = String.fromCharCode(parseInt(Math.random()*26)+'A'.charCodeAt(0));

	}
	

	genTr(){
// 		console.log('['+this.line+','+this.col+','+this.fg+','+this.bg+','+this.ch+']');
		
		let values = [this.line,this.col,this.fg,this.bg,this.ch];

		let tr = document.createElement('tr');
		
		for (let v of values){
			let td = document.createElement('td');
			td.align = 'center';
			td.innerText = v;
						
			tr.append(td);

		}
		return tr;
	}
}


function init(){
	let dtable = document.createElement('table');
	dtable.border=1;
	dtable.style.fontFamily = 'monospace';
	
	let tbody = document.createElement('tbody');
	
	
	for(let i = 0; i < 20; i++){
		let tr = document.createElement('tr');
		for(let j = 0; j < 40; j++){
			
			let td_line = document.createElement('td');
			td_line.innerText = '✔';
			
			tr.append(td_line);
		}
		tbody.append(tr);
	}
	
	
	dtable.append(tbody);
	display.replaceWith(dtable);
		  <!-- replaceWith : 요소나 태그, 내용 등을 바꾸는 명령어 -->
	dtable.after(document.createElement('hr'));
}


window.onload = () => {
	init();
	generator();
}


function generator(){
	let table = document.querySelectorAll('table')[1];
	
	for(let i=0; i<20; i++){
		let a = new Alpha();
		table.tBodies[0].append(a.genTr());
	}
	
	table.onclick = function(e){
		let td = e.target;
			
			/* td가 아닌곳을 클릭했을때 이벤트 실행 X*/	
			if(td.tagName != 'td'.toUpperCase())
				return;

		let tr = td.parentElement;
		
		let line 	= tr.cells[0].innerText;
		let col 	= tr.cells[1].innerText;
		let fg 	= tr.cells[2].innerText;
		let bg 	= tr.cells[3].innerText;
		let ch 	= tr.cells[4].innerText;
		tr.remove();
		
		
		let dtable = document.querySelector('table');
		td = dtable.rows[line-1].cells[col-1]

		td.style.color = fg;
		td.style.background = bg;
		td.innerText = ch;
		
		setInterval(()=>{
			if(td.style.visibility == 'visible')
				td.style.visibility = 'hidden';
			else
				td.style.visibility = 'visible';
		},Math.random()*500+10)
	}
}
</script>
</head>
<body>
<h1>Table Tag Practice</h1>
<hr>
<p id = "result"></p>
<span id="display" style="font-size:15px;">X</span>
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
<!-- 		<tr align="center"> -->
<!-- 			<td >10</td> -->
<!-- 			<td>20</td> -->
<!-- 			<td>32</td> -->
<!-- 			<td>44</td> -->
<!-- 			<td>A</td> -->
<!-- 		</tr> -->
<!-- 		<tr align="center"> -->
<!-- 			<td >30</td> -->
<!-- 			<td>10</td> -->
<!-- 			<td>36</td> -->
<!-- 			<td>41</td> -->
<!-- 			<td>G</td> -->
<!-- 		</tr> -->
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