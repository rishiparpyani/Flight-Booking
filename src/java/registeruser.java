import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class registeruser extends HttpServlet{
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
        try{
      String email = request.getParameter("email");
      String username = request.getParameter("username");
      String password = request.getParameter("password");
      Class.forName("com.mysql.jdbc.Driver");  
        Connection con;  
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cruiseshipbooking","root","root");
      PreparedStatement pst = con.prepareStatement("insert into userdata values(?,?,?)");
      pst.setString(1,email);
      pst.setString(2,username);
      pst.setString(3,password);
      int i = pst.executeUpdate();
      if(i!=0){
        out.println("<br>You have been registered successfully<br>Click Below to go to the login page");
        out.println("<br><a href='login.jsp'>Go to Login</a>");
      }
      else{
        out.println("Failed to register you.User already exists");
      }
    }
    catch (Exception e){
      out.println("Email already Exists!!");
      out.println("<br>Click below to try again");
      out.println("<br><a href='index.html'>Try Again</a>");
    }
  }
}