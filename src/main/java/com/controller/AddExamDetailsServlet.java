package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import com.Dao.ExamDetailsDao;
import com.pojo.ExamDetailsPojo;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/addExamDetails")
public class AddExamDetailsServlet extends HttpServlet {
	//method for adding exam
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		int examId=Integer.parseInt(req.getParameter("examId"));
		String examName=req.getParameter("examName");
		String examType=req.getParameter("examType");
		String difficultyLevel=req.getParameter("difficultyLevel");
		int durationMinutes=Integer.parseInt(req.getParameter("durationMinutes"));
		
		ExamDetailsPojo edp=new ExamDetailsPojo(examId,examName,examType,difficultyLevel,durationMinutes);
		ExamDetailsDao ed=new ExamDetailsDao();
		try {
			boolean flag=ed.addExam(edp);
			if(flag) {
				HttpSession session=req.getSession();
				session.setAttribute("addExamResult","Exam added successfully");
				res.sendRedirect("ExamDetails.jsp");
			}
			else {
				HttpSession session=req.getSession();
				session.setAttribute("addExamResult","Couldn't add exam");
				res.sendRedirect("ExamDetails.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}
