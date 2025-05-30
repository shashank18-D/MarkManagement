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

@WebServlet("/addMark")
public class AddMarkServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private MarkDAO markDAO;

    public void init() {
        markDAO = new MarkDAO();
        System.out.println("AddMarkServlet initialized");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Debugging print statements
            String studentIDStr = request.getParameter("studentID");
            String studentName = request.getParameter("studentName");
            String subject = request.getParameter("subject");
            String marksStr = request.getParameter("marks");
            String examDateStr = request.getParameter("examDate");

            System.out.println("Received studentID: " + studentIDStr);
            System.out.println("Received examDate: " + examDateStr);

            // Parse and validate inputs
            int studentID = Integer.parseInt(studentIDStr);
            int marks = Integer.parseInt(marksStr);
            Date examDate = Date.valueOf(examDateStr); // Must be yyyy-MM-dd format

            // Create and persist student mark
            StudentMark mark = new StudentMark(studentID, studentName, subject, marks, examDate);
            markDAO.addMark(mark);

            // Redirect to mark display page
            response.sendRedirect("markdisplay.jsp");

        } catch (Exception e) {
            e.printStackTrace(); // Log to server console
            // Optional: store the error message in request scope
            request.setAttribute("errorMessage", "Error while adding mark: " + e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
