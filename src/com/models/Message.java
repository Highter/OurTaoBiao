package com.models;

import java.io.Serializable;

public class Message implements Serializable{
	private int messageId;//¡Ù—‘id
	private String type;//¡Ù—‘¿‡–Õ
	private String subject;//¡Ù—‘÷˜Ã‚
	private String context;//¡Ù—‘ƒ⁄»›
	private User user;
	
	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getMessageId() {
		return messageId;
	}
	public void setMessageId(int messageId) {
		this.messageId = messageId;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Message [messageId=" + messageId + ", type=" + type
				+ ", subject=" + subject + ", context=" + context + ", user="
				+ user + "]";
	}
	
}
