// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

#macro TEXT new TextAction 
function DialogueAction() constructor{
	act = function() {}
}

function TextAction(_text) : DialogueAction() constructor{
	text = _text;
	
	act = function(textbox){
		textbox.setText(text);
	
	}


}

