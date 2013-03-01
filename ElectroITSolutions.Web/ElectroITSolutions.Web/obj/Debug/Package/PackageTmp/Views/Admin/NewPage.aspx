<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Admin.Master" validateRequest="false" Inherits="System.Web.Mvc.ViewPage<ElectroITSolutions.Entities.PageEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	NewPage
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<% using (Html.BeginForm("NewPage", "Admin", FormMethod.Post, new { enctype = "multipart/form-data" }))
   { %>
 <input type="hidden" value="<%= Model.PageID %>" id="PageID" name="PageID" />
<div id="page-heading">
        <h1>
            Add Page Content</h1>
    </div>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
        <tr>
            <th rowspan="3" class="sized">
                <img src="<%=Url.Content("~/Assets/images/shared/side_shadowleft.jpg") %>" width="20"
                    height="300" alt="" />
            </th>
            <th class="topleft">
            </th>
            <td id="tbl-border-top">
                &nbsp;
            </td>
            <th class="topright">
            </th>
            <th rowspan="3" class="sized">
                <img src="<%=Url.Content("~/Assets/images/shared/side_shadowright.jpg") %>" width="20"
                    height="300" alt="" />
            </th>
        </tr>
        <tr>
            <td id="tbl-border-left">
            </td>
            <td>
                <!--  start content-table-inner -->
                <div id="content-table-inner">
                    <table border="0" width="100%" cellpadding="0" cellspacing="0">

                        <tr valign="top">
                            <td>
                             <% if (Model.MessageStatus == 1)
                                 { %>
                                <div id="message-green">
                                    <table border="0" width="100%" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td class="green-left">
                                                Page content saved sucessfully.
                                            </td>
                                            <td class="green-right">
                                                <a class="close-green">
                                                    <img src="<%=Url.Content("~/Assets/images/table/icon_close_green.gif") %>" alt="" /></a>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <% }
                                 else if (Model.MessageStatus == 2)
                                 { %>
                                 <div id="message-red">
				                    <table border="0" width="100%" cellpadding="0" cellspacing="0">
				                    <tr>
					                    <td class="red-left">Error. Please try again.</td>
					                    <td class="red-right"><a class="close-red"><img src="<%=Url.Content("~/Assets/images/table/icon_close_red.gif") %>"   alt="" /></a></td>
				                    </tr>
				                    </table>
				                    </div>

                                <%} %>
                                <!--  start step-holder -->
                                <div id="step-holder">
                                    <div class="step-no">
                                        1</div>
                                    <div class="step-dark-left">
                                        <a href="">Add Page Content</a></div>
                                    <div class="step-dark-right">
                                        &nbsp;</div>
                                </div>
                                <!--  end step-holder -->
                                <!-- start id-form -->
                                <table border="0" cellpadding="0" cellspacing="0" id="id-form">
                                    <tr>
                                        <th valign="top">
                                            Page title:
                                        </th>
                                        <td>
                                            <input type="text" class="inp-form" value="<%= Model.Title %>" name="Title" id="txtTitle"/>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                       <tr>
                                        <th valign="top">
                                            Meta keywords:
                                        </th>
                                        <td>
                                            <input type="text" class="inp-form" value="<%= Model.MetaKeyWords %>" name="MetaKeyWords" id="txtMetaKeyWords"/>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                     <tr>
                                        <th valign="top">
                                            Meta Description:
                                        </th>
                                        <td>
                                            <input type="text" class="inp-form"   value="<%= Model.MetaDescription %>" name="MetaDescription" id="txtMetaDescription"/>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th valign="top">
                                            Page Content:
                                        </th>
                                        <td>
                                                
                                        <textarea id="elm1" name="Description" rows="15" cols="80" name="Description">
                                          <%=Model.Description %>
                                        </textarea>

                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                    <tr>
                                        <th>
                                            &nbsp;
                                        </th>
                                        <td valign="top">
                                           <input type="submit" name="button" value="Save" id="btnSave" class="form-submit" />
                                            <input type="submit" name="button" value="New" class="form-reset"  />
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                </table>
                                <!-- end id-form  -->
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="<%=Url.Content("~/Assets/images/shared/blank.gif") %>" width="695" height="1"
                                    alt="blank" />
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                    <div class="clear">
                    </div>
                </div>
                <!--  end content-table-inner  -->
            </td>
            <td id="tbl-border-right">
            </td>
        </tr>
        <tr>
            <th class="sized bottomleft">
            </th>
            <td id="tbl-border-bottom">
                &nbsp;
            </td>
            <th class="sized bottomright">
            </th>
        </tr>
    </table>

    <%} %>
<script src="<%= Url.Content("~/Assets/js/tiny_mce.js") %>" type="text/javascript"></script>
<script type="text/javascript">

    $(document).ready(function () {
        tinyMCE.init({
            mode: "textareas",
            theme: "simple"
        });

        $("#btnSave").click(function () {
            if ($("#txtTitle").val() == '') {
                alert('Please enter page Title');
                return false;
            }

        });
    });
</script>
</asp:Content>
