package main.Pipeline;



import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import jxl.CellType;
import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;

public class BabytreeExcelIO {
    public void createExcel(BabytreeQuestionAndAnswer tmp) throws WriteException,IOException,BiffException{
    	String path = "D:\\1.xls";
    	File file = new File(path);
    	
    	FileInputStream fis = new FileInputStream(file); 

    	if(file.exists()){
    	System.out.println(" file.exists is "+file.exists());
    	}else{
    	System.out.println(" file.exists is "+file.exists());

    	}

    	Workbook book =  Workbook.getWorkbook(file);
        Sheet sheet = book.getSheet(0);
        int length = sheet.getRows();
        
        WritableWorkbook wbook = Workbook.createWorkbook(file,book);
        WritableSheet sheet1 = wbook.getSheet(0);
        int length1 = sheet1.getRows();

        int beginIndex = 0;
      	if(!"".equals(tmp.getAnswer())){

         	if(length1>0 && sheet1.getCell(1,length1-1).getType() == CellType.EMPTY ){
        		beginIndex = length1-1;
        	}else if(length1>0 && sheet1.getCell(1,length1).getType() == CellType.EMPTY ){
        		beginIndex = length1;
        	}
         	
            Label answer = new Label(1,beginIndex,tmp.getAnswer());
            sheet1.addCell(answer);
    	}
      	if(!"".equals(tmp.getQuestion())){

         	if(length1>0 && sheet1.getCell(0,length1-1).getType() == CellType.EMPTY ){
        		beginIndex = length1-1;
        	}else if(length1>0 && sheet1.getCell(0,length1).getType() == CellType.EMPTY ){
        		beginIndex = length1;
        	}
            Label question = new Label(0,beginIndex,tmp.getQuestion());
            sheet1.addCell(question);
    	}
        //把创建的内容写入到输出流中，并关闭输出流
        wbook.write();
        wbook.close();
    }   
}