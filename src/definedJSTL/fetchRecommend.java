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

public class fetchRecommend extends SimpleTagSupport{
	private PageContext pc;
	private SqlSession openSession;
	public void setJspContext(JspContext pc) {
		this.pc=(PageContext) pc;
	}
	public void doTag() throws JspException, IOException {
		openSession = MyBatisUtils.getSqlSessionFactory();
		String path=pc.getServletContext().getContextPath();
		AudioMapper mapper=openSession.getMapper(AudioMapper.class);
		List<Audio> audios = mapper.getAllAudioInfo();
		for(Audio audio:audios){
			pc.getOut().print("<div class='col-xs-6 col-md-3'>");
			pc.getOut().print("<a href=\'"+path+"/play?audioName="+audio.getAudioName()+"\' target=\'_blank\' class='thumbnail'>");
			pc.getOut().print("<img src=\'"+path+"/images/"+audio.getAudioName()+".jpg'>");
			pc.getOut().print("</a></div>");
		}
	}
}
