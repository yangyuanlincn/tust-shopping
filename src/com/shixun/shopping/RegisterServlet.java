package com.shixun.shopping;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8");
    	String username=request.getParameter("username");
    	String password=request.getParameter("password");
    	String phone=request.getParameter("phone");
    	String email=request.getParameter("email");
    	String sql="insert into user(user_account_name,user_account_password,user_account_phone,user_account_email) values(?,?,?,?)";
    	System.out.println(SqlUtil.getConnection());
    	HashMap map=new HashMap();
    	int row=SqlUtil.executeUpdate(sql, username,password,phone,email);
    	System.out.println(row);
    	if(row>=1){
    		map.put("code", 1);//1表示更新成功
    		map.put("return_info", "注册成功");
    	}else{
    		map.put("code", 0);//0表示更新失败
    		map.put("return_info","注册失败");
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    		
    	}
    	response.setCharacterEncoding("utf-8");
    	response.setContentType("application/json");
    	Gson gson=new Gson();
    	String json=gson.toJson(map);
    	PrintWriter out = response.getWriter();
    	out.print(json);
    	out.close();
    }
}
