package com.entities;
import java.util.Date;
import java.util.Random;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "notes")
public class Note 
{
@Id
private int id ;
private String content;
private String title;
private Date date;
public Note() {
	super();
	// TODO Auto-generated constructor stub
}
public Note(String content, String title, Date date) {
	super();
	this.id = new Random().nextInt(100000);
	this.content = content;
	this.title = title;
	this.date = date;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public Date getDate() {
	return date;
}
public void setDate(Date date) {
	this.date = date;
}


}
