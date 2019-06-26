package pojo;

import java.sql.Time;
import java.sql.Timestamp;

public class Audio {
	private String author;
	private String audioName;
	private Timestamp uploadDate;
	private String praiseNumber;
	private String duration;
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getAudioName() {
		return audioName;
	}
	public void setAudioName(String audioName) {
		this.audioName = audioName;
	}
	public Timestamp getUploadDate() {
		return uploadDate;
	}
	public void setUploadDate(Timestamp uploadDate) {
		this.uploadDate = uploadDate;
	}
	public String getPraiseNumber() {
		return praiseNumber;
	}
	public void setPraiseNumber(String praiseNumber) {
		this.praiseNumber = praiseNumber;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	
}
