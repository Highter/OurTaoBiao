package com.actions.lyj;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import util.PageController;

import com.dao.lyj.message.MessageManager;
import com.opensymphony.xwork2.ActionSupport;

public class MessageAction extends ActionSupport implements  ServletRequestAware {
	
	private HttpServletRequest request;
	private HttpSession session;
	private ServletContext application;
	private MessageManager mm;
	private String id;
	

	public String init()
	{
		System.out.println("初始化操作！！！");
		this.setMessage(0, 10);
		return "SUCCESS";
	}
	public String nextPage()
	{
		System.out.println("nextPage");
	
		PageController pc = (PageController) session.getAttribute("lyj_messagePageControl");
		pc.setCurrentPage(pc.getNextPage());
		int start  = pc.getPageStartRow();
		int size = pc.getPageSize();
		this.setMessage(start, size);
		return "SUCCESS";
	}
	public String prePage()
	{
		System.out.println("prePage");

		PageController pc = (PageController) session.getAttribute("lyj_messagePageControl");
		pc.setCurrentPage(pc.getPreviousPage());
		int start = pc.getPageStartRow();
		int size  = pc.getPageSize();
		this.setMessage(start, size);
		return "SUCCESS";
	}
	public String fristPage()
	{
		System.out.println("fristPage");
		PageController pc = (PageController) session.getAttribute("lyj_messagePageControl");
		pc.setCurrentPage(0);
		int start = 0;
		int size = pc.getPageSize();
		setMessage(start, size);
		return "SUCCESS";
	}
	public String finalPage()
	{
		System.out.println("finalPage");
		PageController pc = (PageController) session.getAttribute("lyj_messagePageControl");
		pc.setCurrentPage(pc.getTotalPages());
		int start = pc.getPageStartRow();
		int size = pc.getPageSize();
		this.setMessage(start, size);
		
		return "SUCCESS";
	}
	public String delete()
	{
		System.out.println("delete");
		mm.delete(Integer.parseInt(id));
		PageController temp = (PageController) session.getAttribute("lyj_messagePageControl");
		PageController pc = new PageController(temp.getTotalRowsAmount()-1, temp.getCurrentPage(), temp.getPageSize());
		session.setAttribute("lyj_messagePageControl", pc);
		int start = pc.getPageStartRow();
		int size = pc.getPageSize();
		this.setMessage(start, size);
		System.out.println("删除的id"+id);
		return "SUCCESS";
	}
	public void setMessage(int start,int size)
	{
		List messages = mm.findPage(start, size);
		System.out.println(messages);
		session.setAttribute("lyj_MessagePage", messages);
		
	}
	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		this.session = request.getSession();
		this.application = session.getServletContext();
		
		long counter = mm.getCounter();
		int intcounter = (int)counter;
		
		if(session.getAttribute("lyj_messagePageControl")==null)
		{
			session.setAttribute("lyj_messagePageControl", new PageController(intcounter, 0, 10));
		}
		
	}
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public MessageManager getMm() {
		return mm;
	}

	public void setMm(MessageManager mm) {
		this.mm = mm;
	}
}
