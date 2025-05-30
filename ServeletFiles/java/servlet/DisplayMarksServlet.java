package servlet;

import dao.MarkDAO;
import model.StudentMark;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/displayMarks")
public class DisplayMarksServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private MarkDAO markDAO;

    public void init() {
        markDAO = new MarkDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<StudentMark> marksList = markDAO.displayMarks();
        request.setAttribute("marksList", marksList);
        request.getRequestDispatcher("markdisplay.jsp").forward(request, response);
    }
}
