<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<html>
<head><title>Login</title></head>
<body>
   
    
    
   <h1>Login</h1>
     
 <h3>Enter user name and password:</h3>  
     
   <form name='f' action="CheckLogin" method='POST'>
      <table>
         <tr>
            <td>UserName:</td>
            <td><input type='text' name='username' value=''></td>
         </tr>
         <tr>
            <td>Password:</td>
            <td><input type='password' name='password' /></td>
         </tr>
         <tr>
            <td><input name="submit" type="submit" value="submit" /></td>
          <td><input name="Clear" type="reset" value="Clear" /></td>
         </tr>
      </table>
  </form>
</body>
</html>