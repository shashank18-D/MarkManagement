package dao;

import model.StudentMark;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MarkDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/studentdb"; // Your DB URL
    private String jdbcUsername = "root"; // Your DB username
    private String jdbcPassword = ""; // Your DB password

    // Load driver in constructor or static block
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // MySQL Connector/J 8.x driver class
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    private Connection getConnection() throws SQLException {
        return DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
    }

    public void addMark(StudentMark mark) {
        String sql = "INSERT INTO studentmarks (StudentID, StudentName, Subject, Marks, ExamDate) VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, mark.getStudentID());
            pstmt.setString(2, mark.getStudentName());
            pstmt.setString(3, mark.getSubject());
            pstmt.setInt(4, mark.getMarks());
            pstmt.setDate(5, mark.getExamDate());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateMark(StudentMark mark) {
        String sql = "UPDATE studentmarks SET StudentName = ?, Subject = ?, Marks = ?, ExamDate = ? WHERE StudentID = ?";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, mark.getStudentName());
            pstmt.setString(2, mark.getSubject());
            pstmt.setInt(3, mark.getMarks());
            pstmt.setDate(4, mark.getExamDate());
            pstmt.setInt(5, mark.getStudentID());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteMark(int studentID) {
        String sql = "DELETE FROM studentmarks WHERE StudentID = ?";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, studentID);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<StudentMark> displayMarks() {
        List<StudentMark> marksList = new ArrayList<>();
        String sql = "SELECT * FROM studentmarks";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                StudentMark mark = extractStudentMarkFromResultSet(rs);
                marksList.add(mark);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return marksList;
    }

    public List<StudentMark> getMarksAbove(int value) {
        List<StudentMark> marksList = new ArrayList<>();
        String sql = "SELECT * FROM studentmarks WHERE Marks > ?";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, value);
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    StudentMark mark = extractStudentMarkFromResultSet(rs);
                    marksList.add(mark);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return marksList;
    }

    public List<StudentMark> getMarksBySubject(String subject) {
        List<StudentMark> marksList = new ArrayList<>();
        String sql = "SELECT * FROM studentmarks WHERE Subject = ?";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, subject);
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    StudentMark mark = extractStudentMarkFromResultSet(rs);
                    marksList.add(mark);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return marksList;
    }

    public List<StudentMark> getTopNStudents(int n) {
        List<StudentMark> marksList = new ArrayList<>();
        String sql = "SELECT * FROM studentmarks ORDER BY Marks DESC LIMIT ?";
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, n);
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    StudentMark mark = extractStudentMarkFromResultSet(rs);
                    marksList.add(mark);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return marksList;
    }

    // Helper method to reduce duplicate code
    private StudentMark extractStudentMarkFromResultSet(ResultSet rs) throws SQLException {
        StudentMark mark = new StudentMark();
        mark.setStudentID(rs.getInt("StudentID"));
        mark.setStudentName(rs.getString("StudentName"));
        mark.setSubject(rs.getString("Subject"));
        mark.setMarks(rs.getInt("Marks"));
        mark.setExamDate(rs.getDate("ExamDate"));
        return mark;
    }
}
