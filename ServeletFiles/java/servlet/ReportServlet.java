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

@WebServlet("/report")
public class ReportServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private MarkDAO markDAO;

    public void init() {
        markDAO = new MarkDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reportType = request.getParameter("reportType");
        List<StudentMark> reportList = null;

        System.out.println("Report type received: " + reportType); // Add this

        if ("aboveMarks".equals(reportType)) {
            int value = Integer.parseInt(request.getParameter("value"));
            System.out.println("Value entered: " + value); // Add this
            reportList = markDAO.getMarksAbove(value);
        } else if ("bySubject".equals(reportType)) {
            String subject = request.getParameter("subject");
            System.out.println("Subject entered: " + subject); // Add this
            reportList = markDAO.getMarksBySubject(subject);
        } else if ("topN".equals(reportType)) {
            int n = Integer.parseInt(request.getParameter("n"));
            System.out.println("Top N entered: " + n); // Add this
            reportList = markDAO.getTopNStudents(n);
        }

        System.out.println("Records found: " + (reportList != null ? reportList.size() : "null")); // Add this

        request.setAttribute("reportList", reportList);
        request.getRequestDispatcher("report_result.jsp").forward(request, response);
    }
}