package definedJSTL;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import org.apache.ibatis.session.SqlSession;

import mapper.AudioMapper;
import pojo.Audio;
import utils.MyBatisUtils;

public class fetchList extends SimpleTagSupport{
	private PageContext pc;
	private SqlSession openSession;
	public void setJspContext(JspContext pc) {
		this.pc=(PageContext) pc;
	}
	public void doTag() throws JspException, IOException{
		openSession = MyBatisUtils.getSqlSessionFactory();
		String path=pc.getServletContext().getContextPath();
		AudioMapper mapper=openSession.getMapper(AudioMapper.class);
		List<Audio> audios = mapper.getAllAudioInfo();
		for(Audio audio:audios){
			pc.getOut().print("<a href=\'"+path+"/play?audioName="+audio.getAudioName()+"\' target=\'_blank\' class='list-group-item'>");
			pc.getOut().print(audio.getAudioName());
			pc.getOut().print("</a>");
		}
	}
}
