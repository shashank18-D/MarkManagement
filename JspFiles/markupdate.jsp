<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Student Marks</title>
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

        form {
            max-width: 400px;
            margin: 30px auto;
            padding: 20px;
            background: #1e1e1e; /* dark form background */
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(255,87,34,0.3);
        }

        input[type="text"], input[type="date"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #444;
            border-radius: 4px;
            background-color: #2c2c2c;
            color: #ffccbc;
        }

        input[type="text"]::placeholder, input[type="date"]::placeholder {
            color: #ffab91;
        }

        input[type="submit"] {
            background-color: #FF5722;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
        }

        input[type="submit"]:hover {
            background-color: #E64A19;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #FF5722;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
            color: #E64A19;
        }
    </style>
</head>
<body>
    <h1>Update Student Marks</h1>
    <form action="updateMark" method="post">
        <label>Student ID:</label>
        <input type="text" name="studentID" required>
        <label>Student Name:</label>
        <input type="text" name="studentName" required>
        <label>Subject:</label>
        <input type="text" name="subject" required>
        <label>Marks:</label>
        <input type="text" name="marks" required>
        <label>Exam Date:</label>
        <input type="date" name="examDate" required>
        <input type="submit" value="Update Marks">
    </form>
    <a href="index.jsp">Back to Home</a>
</body>
</html>
