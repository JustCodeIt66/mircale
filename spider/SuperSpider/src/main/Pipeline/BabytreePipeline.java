package main.Pipeline;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;



/**
 * Write results in console.<br>
 * Usually used in test.
 *
 * @author code4crafter@gmail.com <br>
 * @since 0.1.0
 */
public class BabytreePipeline implements Pipeline {

    @Override
    public void process(ResultItems resultItems, Task task) {
       // System.out.println("get page: " + resultItems.getRequest().getUrl());
    	//List<BabytreeQuestionAndAnswer> list = new ArrayList<BabytreeQuestionAndAnswer>();
    	
     	BabytreeQuestionAndAnswer tmp = new BabytreeQuestionAndAnswer();
        for (Map.Entry<String, Object> entry : resultItems.getAll().entrySet()) {
  
            String key = entry.getKey();//question answer
            String value =   String.valueOf(entry.getValue() )
            		.replace("<div class=\"answer-text\" itemprop=\"content\" id=\"best_answer_content\">", "")
            		.replace("</div>", "")
            		.replace("<h1 itemprop=\"title\"><i class=\"mark\"></i>","")
            		.replace("</h1>","")
            		.replace("</a>", "")
            		.replace("<divclass=\"answer-text\"itemprop=\"content\">","")
            		.replaceAll("\\s*|\r|\n|\t", "");		
            while(value.indexOf("<a")!= -1){
            	value =value.replace(value.substring(value.indexOf("<a"),value.indexOf(">")+1), "");
            }
            
            if(key.contains("question")){
            	tmp.setQuestion(value);
            }
            if(key.contains("answer")){
            	tmp.setAnswer(value);
            	//list.add(tmp);
            	//tmp = new BabytreeQuestionAndAnswer ();	
            }
            System.out.println(key + ":\t" + value);
        }
        try{
       	 new BabytreeExcelIO().createExcel(tmp);
       }catch(Exception e){
       		e.printStackTrace();
       }
    }
}
