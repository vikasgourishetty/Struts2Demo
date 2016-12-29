package com.vikas.action;

import com.opensymphony.xwork2.ActionSupport;

public class HiddenAction extends ActionSupport {
	private String url;

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
		
	public String prepare() {
		String str = this.url;
		return SUCCESS;
	}
	
}
