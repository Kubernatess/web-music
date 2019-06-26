package controller;


import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet("/upload")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private DiskFileItemFactory factory;
	
	private ServletFileUpload upload;
	
	
	public void init(ServletConfig config) throws ServletException {
		//���������ļ�������
		factory=new DiskFileItemFactory();
		//�������Ľ�������
		upload=new ServletFileUpload(factory);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		String rootPath=request.getRealPath("/video");
		String webROOT=request.getContextPath();
		String username=(String) request.getSession().getAttribute("username");
		try {
			//����request
			List<FileItem> list=upload.parseRequest(request);
			for(FileItem fileItem:list){
				String filename=fileItem.getName();
				//��ȡ�ļ���������
				InputStream in=fileItem.getInputStream();
				//��ȡ�����
				System.out.println(rootPath+"\\"+username+"\\"+filename);
				OutputStream os=new FileOutputStream(rootPath+"\\"+username+"\\"+filename);
				int len=0;
				byte b[]=new byte[1024];
				while((len=in.read(b))!=-1){
					os.write(b,0,len);
				}
				in.close();
				os.close();	
				
			}
			System.out.println(webROOT+"/index");
			response.sendRedirect(webROOT+"/index");
		} catch (FileUploadException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
