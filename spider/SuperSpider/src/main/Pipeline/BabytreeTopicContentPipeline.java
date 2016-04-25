package main.Pipeline;

import java.util.Map;

import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

public class BabytreeTopicContentPipeline  implements Pipeline{
	  @Override
	    public void process(ResultItems resultItems, Task task) {

		  BabytreeTopicContent tmp = new BabytreeTopicContent();
	        for (Map.Entry<String, Object> entry : resultItems.getAll().entrySet()) {
	  
	            String key = entry.getKey();//question answer
	            String value =   String.valueOf(entry.getValue() );
	            if(key.contains("topic_content")&& ( null == value ||"".equals(value)||value.contains("Vote"))){
	            	value = "空";
	            }
	            
	            if(key.contains("babytreevote")&& ( null == value ||"".equals(value)|| value.contains("Vote"))){
	            	value = "空";
	            }
	            while(value.indexOf("<")!= -1){
	            	value =value.replace(value.substring(value.indexOf("<"),value.indexOf(">")+1), "");
	            }
 
	            if(key.contains("topic_content")&& ( null == value ||"".equals(value)||value.contains("Vote"))){
	            	value = "空";
	            }
	            
	            if(key.contains("babytreevote")&& ( null == value ||"".equals(value)|| value.contains("Vote"))){
	            	value = "空";
	            }
	            
	            if(key.contains("title")){
	            	tmp.setTitle(value);
	            }
	            if(key.contains("topic_content")){
	            	tmp.setTopic_content(value);
	            }
	            if(key.contains("babytreevote")){
	            	tmp.setBabytreevote(value);
	            }
	           
	        }
	        try{
	       	 new BabytreeTopicContentExcelIO().createExcel(tmp);
	       }catch(Exception e){
	       		e.printStackTrace();
	       }
	    }
}
