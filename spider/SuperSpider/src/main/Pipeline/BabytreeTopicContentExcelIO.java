package main.Pipeline;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;

import jxl.CellType;
import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;

public class BabytreeTopicContentExcelIO {
	   public void createExcel(BabytreeTopicContent tmp) throws WriteException,IOException,BiffException{
		    Date now = new Date();
		     
		    DateFormat d1 = DateFormat.getDateInstance(); //默认语言（汉语）下的默认风格（MEDIUM风格，比如：2008-6-16 20:54:53）
		    String str1 = d1.format(now).replace("-", "");
		    DateFormat d2 = DateFormat.getDateTimeInstance(); 
		    String str2 = d2.format(now).replace("-", ""); 
		    
	    	String file_path = "D:\\babyTree\\"+str1+".xls";
	    	String folder_path ="D:\\babyTree";
	    	File file = new File(file_path);
	    	File folder = new File(folder_path);
	    	if  (!folder.exists()  && !folder.isDirectory())  {
	    		  System.out.println("文件夹不存在"); 
	    		  folder.mkdir();  
	    	}   
	    	
	        WritableWorkbook wbook ;
	        WritableSheet sheet1;
	        int length1;
	    	if(!file.exists()){	        
		        wbook = Workbook.createWorkbook(file);
		         sheet1 = wbook.createSheet(str1,0);
		         length1 = sheet1.getRows();
	    	}else{
		    	FileInputStream fis = new FileInputStream(file); 
		    	Workbook book =  Workbook.getWorkbook(file);
		        Sheet sheet = book.getSheet(0);
		        int length = sheet.getRows();
		        
		         wbook = Workbook.createWorkbook(file,book);
		         sheet1 = wbook.getSheet(0);
		         length1 = sheet1.getRows();
	    		
	    	}


	        int beginIndex = 0;
	      	if(!"".equals(tmp.getTitle())){
	         	if(length1>0 && sheet1.getCell(0,length1-1).getType() == CellType.EMPTY ){
	        		beginIndex = length1-1;
	        	}else if(length1>0 && sheet1.getCell(0,length1).getType() == CellType.EMPTY ){
	        		beginIndex = length1;
	        	}
	            Label title = new Label(0,beginIndex,tmp.getTitle());
	            sheet1.addCell(title);
	    	}
	      	if(!"".equals(tmp.getTopic_content())){
	         	if(length1>0 && sheet1.getCell(1,length1-1).getType() == CellType.EMPTY ){
	        		beginIndex = length1-1;
	        	}else if(length1>0 && sheet1.getCell(1,length1).getType() == CellType.EMPTY ){
	        		beginIndex = length1;
	        	}
	            Label topic_content = new Label(1,beginIndex,tmp.getTopic_content());
	            sheet1.addCell(topic_content);
	    	}
	      	if(!"".equals(tmp.getBabytreevote())){
	         	if(length1>0 && sheet1.getCell(2,length1-1).getType() == CellType.EMPTY ){
	        		beginIndex = length1-1;
	        	}else if(length1>0 && sheet1.getCell(2,length1).getType() == CellType.EMPTY ){
	        		beginIndex = length1;
	        	}
	            Label babytreevote = new Label(2,beginIndex,tmp.getBabytreevote());
	            sheet1.addCell(babytreevote);
	    	}
	        //把创建的内容写入到输出流中，并关闭输出流
	        wbook.write();
	        wbook.close();
	    }   
}
