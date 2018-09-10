package com.niit.controller;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.List;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.FontSelector;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.niit.model.CartItem;
import com.niit.model.OrderDetail;
import com.niit.model.UserDetail;
 

public class OrderPDF {


   public static void create(OrderDetail order,List<CartItem> itemList,UserDetail user)
   {
	   
	   String s1="User Name";
	   FontSelector selector1 = new FontSelector();
	   Font f1 = FontFactory.getFont(FontFactory.TIMES_ROMAN, 12);
	   f1.setColor(BaseColor.BLUE);
	   selector1.addFont(f1);
	   Phrase ph = selector1.process(s1);
	   String s2="Email id";
	   String s3="Phone Number";
	   

	  try {
		  Document document = new Document();
          PdfPTable ordertable = new PdfPTable(new float[] { 2, 5, 4, 2 });
          PdfPTable personaltable = new PdfPTable(new float[] { 2, 3, 2 });
          PdfPTable producttable = new PdfPTable(new float[] { 5, 3, 2,2 });
          
          personaltable.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
		  personaltable.addCell(selector1.process(s1));
		  personaltable.addCell("Email ID");
		  personaltable.addCell("Phone Number ");
		  
		  personaltable.setHeaderRows(1);
		  
		  PdfPCell[] cells1 = personaltable.getRow(0).getCells(); 
		  for (int j=0;j<cells1.length;j++){
		  	 cells1[j].setBackgroundColor(BaseColor.GRAY);
		     }
		  personaltable.addCell(user.getUsername()+"");
		  personaltable.addCell(user.getEmailId()+"");
		  personaltable.addCell(user.getMobileNo()+"");
		  
          ordertable.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
	      ordertable.addCell("Order ID");
	      ordertable.addCell("Order Date");
	      ordertable.addCell("Shippin Address");
	      ordertable.addCell("Total Amount");
	      
	      ordertable.setHeaderRows(1);
		     
	      PdfPCell[] cells = ordertable.getRow(0).getCells(); 
		  for (int j=0;j<cells.length;j++){
	    	 cells[j].setBackgroundColor(BaseColor.GRAY);
	     }
		  ordertable.addCell(""+order.getOrderId());
		  ordertable.addCell(""+order.getOrderDate());
		  ordertable.addCell(""+order.getShippingAddress());
		  ordertable.addCell(""+order.getTotalAmount());
	         
		  
		  
		  producttable.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
		  producttable.addCell("Product Description");
		  producttable.addCell("Product Name");
		  producttable.addCell("Product Price");
		  producttable.addCell("Supllier ID");
		  
		  producttable.setHeaderRows(1);
		  
		  PdfPCell[] cells2 = producttable.getRow(0).getCells();
		  for (int j=0;j<cells2.length;j++){
			  	 cells2[j].setBackgroundColor(BaseColor.GRAY);
			     }
		  
		  for(CartItem cart:itemList) 
		   {
		  producttable.addCell(cart.getProduct().getProdDesc()+"");
		  producttable.addCell(cart.getProduct().getProductName()+"");
		  producttable.addCell(cart.getProduct().getPrice()+"");
		  producttable.addCell(cart.getProduct().getSupplierId()+"");
		     }
		  
		  PdfWriter.getInstance(document, new FileOutputStream("C:\\Users\\IBM\\eclipse-workspace\\InteriorFront\\src\\main\\webapp\\resources\\Files\\"+user.getUsername()+".pdf"));
		  document.open();
		  Paragraph p = new Paragraph("Your Order Summary");
		  p.setAlignment(Element.ALIGN_CENTER);
		  document.add(p);
		  document.add(personaltable);
		  document.add(ordertable);
		  document.add(producttable);
		  
		  
		  document.close();
		  System.out.println("Done");

	     	   }
	   catch(FileNotFoundException e)
	   {
	         e.printStackTrace();
	   }
	   catch (DocumentException e)
	      {
	         e.printStackTrace();
	      } 
      
    }
}

