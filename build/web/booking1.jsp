<jsp:useBean id="obj" class="test.testbean"/>
<% int adult = Integer.parseInt(request.getParameter("numberofadults")); %>
<% int kid = Integer.parseInt(request.getParameter("numberofkids")); %>
<% String destination = request.getParameter("destination");%>
<jsp:setProperty name="obj" property="num1" value="<%=adult%>"/>
Adults:<jsp:getProperty name="obj" property="num1"/><br>
<jsp:setProperty name="obj" property="num2" value="<%=kid%>"/>
Kids:<jsp:getProperty name="obj" property="num2"/><br>
<jsp:setProperty name="obj" property="destination" value="<%=destination%>"/>
Destination:<jsp:getProperty name="obj" property="destination"/><br>
Total Cost:<jsp:getProperty name="obj" property="totalcost"/><br>
<a href="index.html">New Booking</a>

