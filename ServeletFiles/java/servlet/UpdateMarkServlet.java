package servlet;

import dao.MarkDAO;
import model.StudentMark;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;

@WebServlet("/updateMark")
public class UpdateMarkServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private MarkDAO markDAO;

    public void init() {
        markDAO = new MarkDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int studentID = Integer.parseInt(request.getParameter("studentID"));
        String studentName = request.getParameter("studentName");
        String subject = request.getParameter("subject");
        int marks = Integer.parseInt(request.getParameter("marks"));
        Date examDate = Date.valueOf(request.getParameter("examDate"));

        StudentMark mark = new StudentMark(studentID, studentName, subject, marks, examDate);
        markDAO.updateMark(mark);
        response.sendRedirect("markdisplay.jsp");
    }
}
