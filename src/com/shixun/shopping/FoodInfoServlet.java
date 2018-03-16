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

@WebServlet("/FoodInfoServlet")
public class FoodInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8");
    	String food_id = request.getParameter("food_id");
    	String sql="select * from foods where id=?";
    	ArrayList<HashMap<String,Object>> list =SqlUtil.executeQuery(sql, food_id);
    	HashMap food_info=null;
    	if(list!=null&&list.size()>0){
    		food_info=list.get(0);
    	}
    	response.setCharacterEncoding("utf-8");
    	response.setContentType("application/json");
    	Gson gson=new Gson();
    	String json=gson.toJson(food_info);
    	PrintWriter out=response.getWriter();
    	out.print(json);
    	out.close();
    }
}
