package com.vikas.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

import com.opensymphony.xwork2.ActionSupport;

public class DownloadAction extends ActionSupport {
	private InputStream fileInputStream;
	
	private String fileName;
	     
	   
    public String getFileName() {
        return fileName;
    }

	public InputStream getFileInputStream() {
		return fileInputStream;
	}

	public String execute() throws Exception {
		fileName = "NIH Privacy Awareness Course-full.pdf";
	    fileInputStream = new FileInputStream(new File("C:\\Users\\vgourishetty\\Desktop\\NIH-CERTIFICATES\\"+fileName));
	    return SUCCESS;
	}
}
