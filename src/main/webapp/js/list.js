
function btnAppend_click(e){
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
	
function List_click(e){
	let li = e.target;
	li.remove();
}	

 function tech_keyup(e) {
    if(e.key == 'Enter'){
        btnAppend_click()
    }    
}
	
window.onload=function(){
	btnAppend.onclick = btnAppend_click;
	
	frontList.onclick = List_click;
	
	backList.onclick = List_click;
	
	tech.onkeyup = tech_keyup;
}