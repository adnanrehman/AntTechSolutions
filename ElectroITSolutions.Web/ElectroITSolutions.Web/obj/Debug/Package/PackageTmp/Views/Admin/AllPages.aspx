<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Admin.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<ElectroITSolutions.Entities.PageEntity>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	AllPages
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     	<div id="page-heading">
		<h1><a href="<%=Url.Content("~/Admin/NewPage/0") %>">Add New Page</a></h1>
	</div>
  <table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
	<tr>
		<th rowspan="3" class="sized"><img src="<%=Url.Content("~/Assets/images/shared/side_shadowleft.jpg") %>" width="20" height="300" alt="" /></th>
		<th class="topleft"></th>
		<td id="tbl-border-top">&nbsp;</td>
		<th class="topright"></th>
		<th rowspan="3" class="sized"><img src="<%=Url.Content("~/Assets/images/shared/side_shadowright.jpg") %>" width="20" height="300" alt="" /></th>
	</tr>
	<tr>
		<td id="tbl-border-left"></td>
		<td>
		<div id="content-table-inner">
		
			<!--  start table-content  -->
			<div id="table-content">
				 
				<!--  start product-table ..................................................................................... -->
		    <form id="mainform" action="">
				<table border="0" width="100%" cellpadding="0" cellspacing="0" id="product-table">
				<tr>
					<th class="table-header-repeat line-left minwidth-1" style="width:10%;"><a href="#">Title</a>	</th>
					<th class="table-header-repeat line-left minwidth-1" style="width:80%;"><a href="#">Meta KeyWords</a></th>
					<th class="table-header-options line-left"><a href="#">Options</a></th>
				</tr>
                <% if (Model.Count() > 0)
                   {
                   foreach (var item in Model)
	               {
		 
	
                %>
				    <tr>
					<td><%=item.Title  %> </td>
					<td><%=item.Title  %></td>
					<td class="options-width">
					<a href="<%=Url.Content("~/Admin/NewPage/") + item.PageID %>" title="Edit" class="icon-5 info-tooltip"></a>
                    
					</td>
				</tr>
                <%}} %>
				</table>
				<!--  end product-table................................... --> 
				</form>
			</div>
			
			<div class="clear"></div>
		 
		</div>
        
		<!--  end content-table-inner ............................................END  -->
		</td>
		<td id="tbl-border-right"></td>
	</tr>
	<tr>
		<th class="sized bottomleft"></th>
		<td id="tbl-border-bottom">&nbsp;</td>
		<th class="sized bottomright"></th>
	</tr>
	</table>

</asp:Content>
