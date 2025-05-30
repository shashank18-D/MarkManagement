<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="model.StudentMark" %>
<%
    List<StudentMark> reportList = (List<StudentMark>) request.getAttribute("reportList");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Report Results</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #121212; /* dark background */
            color: #f1f1f1;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            background-color: #FF5722; /* orange header */
            color: white;
            padding: 20px;
            margin: 0;
            font-weight: bold;
            letter-spacing: 1px;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 30px auto;
            background-color: #1e1e1e; /* dark table background */
            box-shadow: 0 0 15px rgba(255, 87, 34, 0.3);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            border: 1px solid #444;
            padding: 12px;
            text-align: center;
            color: #ffccbc;
        }

        th {
            background-color: #FF7043; /* lighter orange */
            color: white;
            text-transform: uppercase;
            font-weight: 600;
            font-size: 14px;
        }

        tr:hover {
            background-color: #4E342E; /* dark brown hover */
        }

        a {
            display: inline-block;
            margin: 20px;
            text-decoration: none;
            color: #FF5722;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
            color: #E64A19;
        }

        p {
            text-align: center;
            margin-top: 30px;
            color: #bdbdbd;
            font-style: italic;
        }
    </style>
</head>
<body>
    <h1>Report Results</h1>

    <%-- DEBUG: Print list size (remove in production) --%>
    <p>
        <% if (reportList == null) { %>
            reportList is <strong>null</strong>.
        <% } else { %>
            reportList contains <strong><%= reportList.size() %></strong> records.
        <% } %>
    </p>

    <%
        if (reportList == null || reportList.isEmpty()) {
    %>
        <p>No results found.</p>
    <%
        } else {
    %>
        <table>
            <tr>
                <th>Student ID</th>
                <th>Student Name</th>
                <th>Subject</th>
                <th>Marks</th>
                <th>Exam Date</th>
            </tr>
            <%
                for (StudentMark mark : reportList) {
            %>
            <tr>
                <td><%= mark.getStudentID() %></td>
                <td><%= mark.getStudentName() %></td>
                <td><%= mark.getSubject() %></td>
                <td><%= mark.getMarks() %></td>
                <td><%= mark.getExamDate() %></td>
            </tr>
            <%
                }
            %>
        </table>
    <%
        }
    %>

    <div style="text-align: center;">
        <a href="reports.jsp">Back to Reports</a> |
        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>
