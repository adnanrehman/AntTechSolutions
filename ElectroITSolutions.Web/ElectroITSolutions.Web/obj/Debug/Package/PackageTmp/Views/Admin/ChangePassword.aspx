<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Admin.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	ChangePassword
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div id="page-heading">
        <h1>
            Change Password</h1>
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
                               
                                <table border="0" cellpadding="0" cellspacing="0" id="id-form">
                                    <tr>
                                        <th valign="top">
                                            Old Password:
                                        </th>
                                        <td>
                                            <input type="text" class="inp-form" />
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                     <tr>
                                        <th valign="top">
                                            New Password:
                                        </th>
                                        <td>
                                            <input type="text" class="inp-form" />
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th valign="top">
                                            Confirm Password:
                                        </th>
                                        <td>
                                            <input type="text" class="inp-form" />
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            &nbsp;
                                        </th>
                                        <td valign="top">
                                            <input type="button" value="" class="form-submit" />
                                            <input type="reset" value="" class="form-reset" />
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

</asp:Content>
