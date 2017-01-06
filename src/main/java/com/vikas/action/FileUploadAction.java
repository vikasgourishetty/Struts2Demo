package com.vikas.action;

import java.io.File;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;

public class FileUploadAction extends ActionSupport {

	private File file; //SIngle file
	private String fileFileName;
	private String fileContentType;
	
	private String jsonString;
	
	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}
	
	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	public String getJsonString() {
		/*if(StringUtils.isEmpty(jsonString)) {
			jsonString = "asa";
		}*/
		return jsonString;
	}

	public void setJsonString(String jsonString) {
		this.jsonString = jsonString;
	}

	@Override
	public String execute() throws Exception {
		System.out.println("File :"+getFile());
		System.out.println("File Name is:"+getFileFileName());
		System.out.println("File ContentType is:"+getFileContentType());
		
		String fileName = getFileFileName();
		
	    // Attempt to fix the error in uploading the file
	    final String FILE_UPLOAD_SUCCESS = "";
	   /* HttpServletResponse response = ServletActionContext.getResponse();
	    response.setContentType("text/plain");
	    response.getWriter().write(FILE_UPLOAD_SUCCESS);*/	    
	    
	    Gson gson = new Gson();
	    
	    setJsonString("json-error");
	    
		return SUCCESS;
	}
	
}
