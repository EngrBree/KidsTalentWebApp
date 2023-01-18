let file= document.getElementById("upload");
let button=document.getElementByTagName("button");
let progress=document.querySelector("progress");
let p_i=document.querySelector(".progress-indicator");
let load =0;
let processs="";
file.oninput=()=>{
	let filename=file.files[0]
	let extension=filename.split('.').pop();
	let filesize=file.files[0].size;
	
	if(filesize<=1000000){ 
		filesize=(filesize/1000).toFixed(2) +"kb";
	}
	
	if(filesize == 1000000  || filesize<=1000000000){ 
		filesize=(filesize/100000).toFixed(2) +"mb";
	}
	if(filesize == 1000000000  || filesize<=1000000000000){ 
		filesize=(filesize/100000000).toFixed(2) +"gb";
	}
	document.querySelector('label').innerText=filename;
	document.querySelector('ex').innerText=extension;
	document.querySelector('size').innerText=filesize;
	getFile(filename);
}
let upload=()=>{
	if (load>=100){
		clearInterval(process);
		p_i.innerHTML='100%'+''+'upload Completed';
		button[0].classicList.remove('active');
	}
	else
	{
		load++;
		progress.value=load;
		p_i.innerHTML=load+'100%'+''+'Upload';
		button[1].onclick=e=>{
			e.preventDefault();
			clearInterval(process);
			document.querySelector('.pr').style.display="none";
			button[1].style.visibility="hidden";
			button[0].classList.remove('active');
			
		}
	}
	
}
function getFile(filename){
	if(filename){
		document.querySelector('.pr').style.display="block";
		load=0;
		progress.value=0;
		p_i.innerText='';
			button[0].onclick= e=>{
				e.preventDefault();
				button[0].classicList.add('active');
				button[1].style.visibility='visible'
				process=setInterval(upload,100);  
			}
	}
	
}






