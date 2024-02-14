//get the input
var confirm = keyboard_check_pressed(confirm_key);

//Type out the text
text_progress = min(text_progress + text_speed, text_length)
	
//are we finish typing or not
if (text_progress == text_length){
	
	if(confirm){
		next();
	
	}
	

}
else if (confirm){
	text_progress = text_length;
	

}

