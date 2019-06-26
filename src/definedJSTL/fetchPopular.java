package definedJSTL;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import org.apache.ibatis.session.SqlSession;

import pojo.Audio;
import mapper.UserMapper;
import mapper.AudioMapper;
import utils.MyBatisUtils;

public class fetchPopular extends SimpleTagSupport{
	private PageContext pc;
	private SqlSession openSession;
	public void setJspContext(JspContext pc) {
		this.pc=(PageContext) pc;
	}
	public void doTag() throws JspException, IOException {
		openSession = MyBatisUtils.getSqlSessionFactory();
		String path=pc.getServletContext().getContextPath();
		AudioMapper mapper=openSession.getMapper(AudioMapper.class);
		List<Audio> audios = mapper.getAllVideoInfo();
		for(Audio audio:audios){
			pc.getOut().print("<div class=\'col-xs-6 col-md-4\'>");
			//传递参数videoName到display页面,使display页面显示特定内容
			pc.getOut().print("<a href=\'"+path+"/display?author="+audio.getAuthor()+"&videoName="+audio.getAudioName()+"\' target=\'_blank\' class=\'thumbnail\'>");
			pc.getOut().print("<video src=\'"+path+"/video/"+audio.getAuthor()+"/"+audio.getAudioName()+".mp4\'>");
			pc.getOut().print("Your browser does not support the video tag.");
			pc.getOut().print("</video>");
			pc.getOut().print("<div class=\'caption\'>");
			pc.getOut().print("<h3>"+audio.getAudioName()+"</h3>");
			pc.getOut().print("</div></a></div>");
		}
	}
}
