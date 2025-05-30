<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Reports</title>
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
            width: 50%;
            margin: 30px auto;
            background-color: #1e1e1e; /* dark form background */
            padding: 20px;
            box-shadow: 0 0 15px rgba(255, 87, 34, 0.4);
            border-radius: 8px;
        }

        label, select, input {
            display: block;
            margin: 15px 0 10px;
            width: 100%;
            color: #ffccbc;
        }

        select, input[type="number"], input[type="text"] {
            background-color: #333;
            border: 1px solid #555;
            border-radius: 4px;
            padding: 10px;
            color: #fff;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #FF5722;
            color: white;
            border: none;
            padding: 12px;
            cursor: pointer;
            font-weight: bold;
            border-radius: 4px;
            font-size: 16px;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #E64A19;
        }

        a {
            display: block;
            text-align: center;
            margin: 25px;
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
    <h1>Generate Reports</h1>
    <form action="report" method="post">
        <label for="reportType">Select Report Type:</label>
        <select name="reportType" id="reportType" required>
            <option value="aboveMarks">Students with Marks Above</option>
            <option value="bySubject">Students by Subject</option>
            <option value="topN">Top N Students</option>
        </select>
        <div id="criteriaInputs"></div>
        <input type="submit" value="Generate Report">
    </form>

    <a href="index.jsp">Back to Home</a>

    <script>
        const reportTypeSelect = document.getElementById('reportType');
        const criteriaDiv = document.getElementById('criteriaInputs');

        function updateCriteriaInputs() {
            const val = reportTypeSelect.value;
            let html = '';
            if (val === 'aboveMarks') {
                html = '<label>Marks Greater Than:</label><input type="number" name="value" min="0" required>';
            } else if (val === 'bySubject') {
                html = '<label>Subject:</label><input type="text" name="subject" required>';
            } else if (val === 'topN') {
                html = '<label>N:</label><input type="number" name="n" min="1" required>';
            }
            criteriaDiv.innerHTML = html;
        }

        reportTypeSelect.addEventListener('change', updateCriteriaInputs);
        updateCriteriaInputs(); // initialize on load
    </script>
</body>
</html>
