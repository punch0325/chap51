

class Technology{
	cinconstructor(){
		
	}
	
	static btnAppend_click(e){
		if(tech.value.trim() == ''){
			tech.value='';
			retrun;
		}
		
		let li = document.createElement('li')
		li.innerText=tech.value.trim();
		
		if(front.checked)
			frontList.append(li)
		else
			backList.append(li)
			
		tech.value='';
		tech.focus();
		
	}
	
	static list_click(e){
		console.log("list remove...")
		let li = e.target;
		li.remove();
	}
	
	static tech_keyup(e){
	    if(e.key == 'Enter'){
	        Technology.btnAppend_click()
	    }    
		
	}
}



window.onload=function(){
	btnAppend.onclick = Technology.btnAppend_click;
	
	frontList.onclick = Technology.list_click;
	
	backList.onclick = Technology.list_click;
	
	tech.onkeyup = Technology.tech_keyup;
}