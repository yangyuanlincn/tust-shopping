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
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	request.setCharacterEncoding("utf-8");
    	String username=request.getParameter("username");
    	String password=request.getParameter("password");
    	System.out.println(username);
    	System.out.println(password);
    	String sql="select * from user where user_account_name=?";
    	ArrayList<HashMap<String,Object>> list=SqlUtil.executeQuery(sql, username);
    	HashMap user=new HashMap();
    	String get=(String) list.get(0).get("user_account_password");
    	if(!get.equals(password)){
    			System.out.println(get);
    			user.put("return_info", "用户名或密码错误!");
    			user.put("code", 2);//2表示用户名或密码错误
    	}else{
    		user.put("return_info", "登陆成功！");
    		user.put("code", 3);//3表示验证成功
    	}
    	Gson gson=new Gson();
    	String json=gson.toJson(user);
    	response.setCharacterEncoding("utf-8");
    	response.setContentType("application/json");
    	PrintWriter out=response.getWriter();
    	out.print(json);
    	out.close();
    }
}
