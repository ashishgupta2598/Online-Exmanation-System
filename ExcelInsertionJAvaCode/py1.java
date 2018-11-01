 
package javaapplication15;

import java.io.*;
import java.sql.*;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFSheet;

public class JavaApplication15 {

     public static void main(String args[]) throws Exception
    {
        
        
		Connection con=null;
		Statement stmt=null;
		try
		{
			//Load the driver
			Class.forName("com.mysql.jdbc.Driver");	
			System.out.println("Driver load successfully...!");
			
			//Connection establishment...

			con=DriverManager.getConnection("jdbc:mysql://localhost/studentproject2","root","ashu2598");
			System.out.println("Connection established successfully...!");

			
			stmt=con.createStatement();
                        
			System.out.println("Data successfully update into database...!");

		
		

       // TODO Auto-generated method stub
	File src=new File("F:\\2nd year project\\PyYes\\py1.xlsx");
        FileInputStream fis=new FileInputStream(src);
        XSSFWorkbook wb=new XSSFWorkbook(fis);
        
       
        XSSFSheet sheet1=wb.getSheetAt(0);
        int rowCount=sheet1.getLastRowNum();//return as it starts from 0 so use <=in for  loop
        String st[]=new String[6];
        for(int i=0;i<=rowCount;i++)
        {
            for(int j=0;j<6;j++)
            {
                  st[j]=new String();
                  st[j]=sheet1.getRow(i).getCell(j).getStringCellValue();
                 //System.out.println(data0);
                 System.out.println(st[j]);
            }
            
           String qry="Insert into py1 values('"+st[0]+"','"+st[1]+"','"+st[2]+"','"+st[3]+"','"+st[4]+"','"+st[5]+"')";
	   stmt.executeUpdate(qry);
  
        }
        wb.close();
      }
		catch (Exception e)
		{
			e.printStackTrace();
		}
    }    
    
}
