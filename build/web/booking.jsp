<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Booking Page</title>
    </head>
    <body>
        <h1>Bookings page</h1>
        <p>You are just 1 step away from booking your amazing experience of wonderful cruise<br>
            Please Enter the following details to help us process your request.<br></p>
        <form name="details" action="booking1.jsp" method="post">
            Number of Adults:<input type="text" name="numberofadults"><br>
            Number of kids:<input type="text" name="numberofkids"><br>
            <select name="destination">
                <option value="Greece">Greece</option>
                <option value="Turkey">Turkey</option>
                <option value="Singapore">Singapore</option>
                <option value="Bombay">Bombay</option>
            </select><br>
            <input type="submit" value="Calculate Cost">
        </form>
    </body>
</html>
