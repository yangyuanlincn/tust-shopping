package com.shixun.shopping;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

/**
 * Servlet implementation class ListServlet
 */
@WebServlet("/List2Servlet")
public class List2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8");
    	String sql="select  * from foods_hot";
		ArrayList<HashMap<String,Object>>   list = SqlUtil.executeQuery(sql,null);
		Gson gson=new Gson();
		String  json =gson.toJson(list);
		//设置中文
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		PrintWriter out=response.getWriter();
		out.print(json);
		out.close();
    }

}
