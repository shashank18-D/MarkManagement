package servlet;

import dao.MarkDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteMark")
public class DeleteMarkServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private MarkDAO markDAO;

    public void init() {
        markDAO = new MarkDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int studentID = Integer.parseInt(request.getParameter("studentID"));
        markDAO.deleteMark(studentID);
        response.sendRedirect("markdisplay.jsp");
    }
}
