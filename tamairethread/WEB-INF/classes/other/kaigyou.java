package kaigyou;

public class kaigyou{
	public static String Kaigyou(String text){
		String altertext;
		
		while(true){
			if(text.indexOf("\r\n")>=0){
				altertext=text.replace("\r\n","<br>");
			}else{
				altertext=text;
			}
			break;
		}
		
		return altertext;
	}
}