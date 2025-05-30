<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="model.StudentMark" %>
<%@ page import="dao.MarkDAO" %>
<%
    MarkDAO markDAO = new MarkDAO();
    List<StudentMark> marksList = markDAO.displayMarks();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Display Student Marks</title>
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
            background: #1e1e1e; /* dark panel */
            box-shadow: 0 0 15px rgba(255,87,34,0.3); /* subtle orange glow */
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #444; /* dark border */
            color: #FFAB91; /* light orange text */
            font-weight: 600;
        }

        th {
            background-color: #FF7043; /* lighter orange header */
            color: white;
            text-transform: uppercase;
            font-size: 14px;
        }

        tr:hover {
            background-color: #4E342E; /* dark brown hover */
        }

        a {
            display: block;
            text-align: center;
            margin: 20px auto;
            color: #FF5722; /* orange link */
            font-weight: bold;
            text-decoration: none;
            font-size: 16px;
        }

        a:hover {
            text-decoration: underline;
            color: #E64A19; /* darker orange on hover */
        }
    </style>
</head>
<body>
    <h1>Student Marks</h1>
    <table>
        <tr>
            <th>Student ID</th>
            <th>Student Name</th>
            <th>Subject</th>
            <th>Marks</th>
            <th>Exam Date</th>
        </tr>
        <%
            for (StudentMark mark : marksList) {
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
    <a href="index.jsp">Back to Home</a>
</body>
</html>
