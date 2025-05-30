<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Marks Management</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #121212; /* Dark background */
            margin: 0;
            padding: 0;
            color: #e0e0e0;
        }
        
        h1 {
            text-align: center;
            background-color: #FF5722; /* Orange header */
            color: #000000;
            padding: 25px;
            margin: 0;
            font-size: 2.2em;
            box-shadow: 0 2px 5px rgba(0,0,0,0.2);
        }
        
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 30px;
            gap: 25px;
            max-width: 1000px;
            margin: 0 auto;
        }
        
        .card {
            background-color: #1E1E1E; /* Dark card background */
            border-radius: 8px;
            flex: 1 1 45%; /* 2 cards per row */
            max-width: 45%;
            height: 180px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            transition: all 0.3s ease;
            box-shadow: 0 4px 8px rgba(0,0,0,0.3);
            border: 1px solid #333;
        }
        
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(255, 87, 34, 0.3);
            border: 1px solid #FF5722;
        }
        
        .card a {
            text-decoration: none;
            color: #FF5722; /* Orange text */
            font-weight: bold;
            font-size: 1.2em;
            width: 100%;
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 10px;
        }
        
        .card i {
            font-size: 2.5em;
            margin-bottom: 15px;
            color: #FF5722;
        }
        
        .card:hover a {
            color: #ffffff;
        }
        
        .card:hover i {
            color: #ffffff;
        }
        
        footer {
            text-align: center;
            padding: 20px;
            background-color: #000000;
            color: #FF5722;
            margin-top: 30px;
        }

        /* Responsive design for smaller screens */
        @media (max-width: 768px) {
            .card {
                flex: 1 1 100%;
                max-width: 100%;
            }
        }
    </style>
    <!-- Add Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <h1>Student Marks Management System</h1>
    
    <div class="container">
        <div class="card">
            <a href="markadd.jsp">
                <i class="fas fa-plus-circle"></i>
                Add Marks
            </a>
        </div>
        
        <div class="card">
            <a href="markupdate.jsp">
                <i class="fas fa-edit"></i>
                Update Marks
            </a>
        </div>
        
        <div class="card">
            <a href="markdelete.jsp">
                <i class="fas fa-trash-alt"></i>
                Delete Marks
            </a>
        </div>
        
        <div class="card">
            <a href="markdisplay.jsp">
                <i class="fas fa-list"></i>
                Display Marks
            </a>
        </div>
        
        <div class="card">
            <a href="reports.jsp">
                <i class="fas fa-chart-bar"></i>
                Reports
            </a>
        </div>
    </div>
    
    <footer>
        &copy; 2023 Student Marks Management System 
    </footer>
</body>
</html>
