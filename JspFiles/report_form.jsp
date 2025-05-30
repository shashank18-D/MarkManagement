<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Report Criteria</title>
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

        label, select, input[type="number"], input[type="text"] {
            display: block;
            width: 100%;
            margin: 10px 0;
            padding: 8px;
            border: 1px solid #444;
            border-radius: 4px;
            background-color: #2c2c2c;
            color: #ffccbc;
        }

        select {
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
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
            margin: 20px auto;
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
    <h1>Select Report Criteria</h1>
    <form action="report" method="post">
        <label for="reportType">Report Type:</label>
        <select id="reportType" name="reportType" required>
            <option value="aboveMarks">Students with marks above a specified value</option>
            <option value="bySubject">Students who scored in a specific subject</option>
            <option value="topN">Top N students based on marks</option>
        </select>
        <div id="criteriaInputs"></div>
        <input type="submit" value="Generate Report">
    </form>
    <a href="index.jsp">Back to Home</a>

    <script>
        const reportTypeSelect = document.getElementById('reportType');
        const criteriaDiv = document.getElementById('criteriaInputs');

        function updateCriteriaForm() {
            let html = '';
            switch(reportTypeSelect.value) {
                case 'aboveMarks':
                    html = '<label>Marks above:</label><input type="number" name="value" min="0" required>';
                    break;
                case 'bySubject':
                    html = '<label>Subject:</label><input type="text" name="subject" required>';
                    break;
                case 'topN':
                    html = '<label>Top N:</label><input type="number" name="n" min="1" required>';
                    break;
            }
            criteriaDiv.innerHTML = html;
        }

        reportTypeSelect.addEventListener('change', updateCriteriaForm);
        updateCriteriaForm();
    </script>
</body>
</html>
