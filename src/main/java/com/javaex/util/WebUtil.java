package com.javaex.util;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WebUtil {

	// filed
	
	// constructor
	
	// g, s
	
	// method toString
	
	// method normal
	
		// forward
		public static void forward(HttpServletRequest request, HttpServletResponse response, String path) throws ServletException, IOException {
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);	// request가  response를 앞으로 부를 이름, response가 가져갈 목록의 이름
		}
	
		// redirect
		public static void redirect(HttpServletRequest request, HttpServletResponse response, String url) throws IOException {
			response.sendRedirect(url);
		}
		
}
