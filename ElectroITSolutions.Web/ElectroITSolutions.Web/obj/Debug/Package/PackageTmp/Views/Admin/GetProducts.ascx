<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<ElectroITSolutions.Entities.ProductEntity>>" %>
<table border="0" width="100%" cellpadding="0" cellspacing="0" id="product-table">
    <tr>
        <th class="table-header-repeat line-left minwidth-1" style="width:7%;">
            <a href="#">Sort Oder</a>
        </th>
        <th class="table-header-repeat line-left minwidth-1" style="width:30%;">
            <a href="#">Title</a>
        </th>
        <th class="table-header-repeat line-left minwidth-1">
            <a href="#">Video URL</a>
        </th>
        <th class="table-header-options line-left">
            <a href="#">Options</a>
        </th>
    </tr>
        <% if (Model.Count() > 0)
           { %>
        <%
            var temp = Model.Select(t => t.CatID).Distinct();
            foreach (var cat in temp)
            {
                
         %>  
        <tr class="row-pro-head">
          <td colspan="4" ><%= Model.Where(w=> w.CatID.Equals(cat)).Select(t => t.Category.Name).FirstOrDefault() %></td>
        </tr>
         <%   foreach (var item in Model.Where(t => t.CatID.Equals(cat)))
            {
                
                        
         %>
    <tr>
        <td>
            <input type="text" class="text-box-sortOrder" value="<%= item.SortOrder %>" />
        </td>
        <td>
           <a href="#" class="tonus" src="<%=Url.Content("~/Images/Small/" + item.Image) %>" style="text-decoration:underline;"><%= item.Title %> </a>
        </td>
        <td>
            <%= item.Url %>
        </td>
        <td class="options-width">
            <a href="#" title="Edit" class="icon-2 info-tooltip"></a><a href="<%= Url.Content("~/Admin/NewProduct/") + item.ProID %>"
                title="Edit" class="icon-5 info-tooltip"></a>
        </td>
    </tr>
    <%}
            }
           } %>
</table>
