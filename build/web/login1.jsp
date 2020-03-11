<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%!
    Connection con;
    PreparedStatement ps1;         
%>
<%
    try{
    Class.forName("com.mysql.jdbc.Driver");  
            Connection con;  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cruiseshipbooking","root","root");
            ps1 = con.prepareStatement("select count(*) from userdata where email = ? and password=?");
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        ps1.setString(1,email);
        ps1.setString(2,pass);
        ResultSet rs = ps1.executeQuery();
        int cnt = 0;
        if (rs.next())
            cnt = rs.getInt(1);
        if(cnt == 0)
            out.println("Invalid credential");
        else
        {
            response.sendRedirect("booking.jsp");
        }
    }
    catch (Exception e){
        out.println(e);
    }
%>
