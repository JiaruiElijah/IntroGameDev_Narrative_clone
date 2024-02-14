function startDialogue(topic){
	if (instance_exists(obj_textbox))
		return;
		
	var inst = instance_create_depth(x, y, -999, obj_textbox);
	inst.setTopic(topic);

}

// 修改 startDialogue 函数来设置对话框的目标和偏移
//function startDialogue(topic, targetInstance) {
 //   if (!instance_exists(obj_textbox)) {
   //     var inst = instance_create_depth(targetInstance.x, targetInstance.y, -999, obj_textbox);
   //     inst.setTopic(topic);
   //     inst.target = targetInstance; // 设置对话框跟随的目标实例
   //     inst.offsetX = 0; // 根据需要设置偏移量
  //      inst.offsetY = -50; // 例如，使对话框显示在目标对象的上方
 //   }
//}





function type(x, y, text, progress, width){
	var draw_x = 0;
	var draw_y = 0;
	
	for (var i = 1; i<=progress; i++){
		
		var char = string_char_at(text, i);
		
		
		if(char == "\n"){
			draw_x = 0;
			draw_y += string_height("A");
		}
		
		else if(char == " "){
			draw_x += string_width(char);
			
			var word_width = 0;
			for(var j = i+1; j <= string_length(text); j++){
				var word_char = string_char_at(text, j);
				
				// if we reach the end of the word, stop chechking
				if(word_char == "/n" || word_char == " ")
					break;
					
				word_width+=string_width(word_char);
				
				if(draw_x + word_width > width){
					draw_x = 0;
					draw_y += string_height("A");
					break;
				
				}
			
			
			}
		
		
		}
		
		else{
		//draw the letter
			draw_text(x + draw_x, y + draw_y, char);
			draw_x += string_width(char);
		
		}

	
	}
	
	
}