<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<ElectroITSolutions.Entities.UserEntity>" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>LogOn</title>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="<%=Url.Content("~/Assets/css/screen.css") %>" rel="stylesheet" type="text/css" />
        <script src="<%=Url.Content("~/Assets/js/jquery-1.4.1.min.js") %>" type="text/javascript"></script>

        <!-- Custom jquery scripts -->
        <script src="<%=Url.Content("~/Assets/js/custom_jquery.js") %>"  type="text/javascript"></script>

        <!-- MUST BE THE LAST SCRIPT IN <HEAD></HEAD></HEAD> png fix -->
        <script src="<%=Url.Content("~/Assets/js/jquery.pngFix.pack.js") %>" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $(document).pngFix();
            });
        </script>
</head>
<body id="login-bg"> 
<% using (Html.BeginForm()) { %>
<!-- Start: login-holder -->
<div id="login-holder">

	<!-- start logo -->
	<div id="logo-login">
		
	</div>
	<!-- end logo -->
	
	<div class="clear"></div>
	
	<!--  start loginbox ................................................................................. -->
	<div id="loginbox">
	
	<!--  start login-inner -->
	<div id="login-inner">
		<table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="2" style="vertical-align:top;text-align:center;"><b><%=ViewData["Message"] %></b><br /></td>
        </tr>
		<tr>
			<th>Username</th>
			<td><input type="text" name="UserName" id="UserName" value="<%=Model.UserName %>" onfocus="this.value=''" class="login-inp" /></td>
		</tr>
		<tr>
			<th>Password</th>
			<td><input type="password" name="Password" id="Password" value="<%=Model.Password %>"  onfocus="this.value=''" class="login-inp" /></td>
		</tr>
<%--		<tr>
			<th></th>
			<td valign="top"><input type="checkbox" class="checkbox-size" id="login-check" /><label for="login-check">Remember me</label></td>
		</tr>--%>
		<tr>
			<th></th>
			<td><input type="submit" class="submit-login"  /></td>
		</tr>
		</table>
	</div>
 	<!--  end login-inner -->
	<div class="clear"></div>
	
 </div>
 <!--  end loginbox -->
</div>
<%} %>
<!-- End: login-holder -->
</body>
</html>