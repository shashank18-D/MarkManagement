<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Student Marks</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #121212;
            color: #f1f1f1;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            background-color: #FF5722;
            color: white;
            padding: 20px;
            margin: 0;
        }

        form {
            max-width: 400px;
            margin: 30px auto;
            padding: 20px;
            background: #1e1e1e;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(255,87,34,0.3);
        }

        label {
            margin-top: 10px;
            display: block;
            color: #FFCCBC;
            font-weight: bold;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #555;
            border-radius: 4px;
            background-color: #2c2c2c;
            color: #f1f1f1;
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
            background-color: #e64a19;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #FF5722;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Delete Student Marks</h1>
    <form action="deleteMark" method="post">
        <label for="studentID">Student ID:</label>
        <input type="text" id="studentID" name="studentID" required>
        <input type="submit" value="Delete Marks">
    </form>
    <a href="index.jsp">Back to Home</a>
</body>
</html>
