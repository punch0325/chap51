

class Alpha{
   static color = [   'Pink',
									'Red',
								    'Green',
								    'Yellow',
								    'Blue',
								    'Magenta',
								    'Cyan',
								    'White' ]
	constructor(){
		this.line = 10;
		this.col = 20;
		do{
			this.fg = Alpha.color[parseInt(Math.random()*8)];
			this.bg = Alpha.color[parseInt(Math.random()*8)];
		}while(this.fg == this.bg);
		this.ch = String.fromCharCode(parseInt(Math.random()*26)+'A'.charCodeAt(0));
		
		this.direction = parseInt(Math.random()*4);
		
		this.show();
		
		this.tid = setInterval(()=> this.move(), Math.random()*500+10);
		
	}
	
	show(){
		let td = cmd.rows[this.line-1].cells[this.col-1];
		td.style.color = this.fg;
		td.style.background = this.bg;
		td.innerText = this.ch;
	}
	
	hide(){
		let td = cmd.rows[this.line-1].cells[this.col-1];
		td.style.color = 'black';
		td.style.background = 'black';
		td.innerText = '#';
	}
	
	move(){
//		console.log("move.."+this.ch);	
		this.hide();
		
		switch(this.direction){
			case 0:
				this.line--; 
				break;
			case 1: 
				this.line++;
				break;
			case 2:
				this.col--; 
				break;
			case 3: 
				this.col++;
				break;
		}
		
		if(this.line < 1 || this.line >20 || this.col < 1 || this.col >40 ){
			clearInterval(this.tid);
			return;
		}
		
		
		this.show();
	}
}


window.onload = ()=>{
	count.innerText= 0;
	cmd.before(document.createElement('hr'));
	
	setInterval(()=>{
		new Alpha()
		let cnt = count.innerText;
		cnt++;
		count.innerText=cnt;
	},100);
	

}	