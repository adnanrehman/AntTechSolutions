﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Admin.Master" validateRequest="false" Inherits="System.Web.Mvc.ViewPage<ElectroITSolutions.Entities.ProductEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    NewProduct
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<%--<form method="POST" enctype="multipart/form-data" action="<%=Url.Content("~/Admin/NewProduct") %>">--%>
<% using (Html.BeginForm("NewProduct", "Admin", FormMethod.Post, new { enctype = "multipart/form-data" }))
   { %>
    <input type="hidden" value="<%= Model.Image %>" name="Image" />
    <input type="hidden" value="<%= Model.ProID %>" id="ProID" name="ProID" />
    <div id="page-heading">
        <h1>
            Add New Product</h1>
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
                                                Product added sucessfully.
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
					                    <td class="red-left"> 
                                        
                                            Error. Please try again.
                                       
                                        </td>
					                    <td class="red-right"><a class="close-red"><img src="<%=Url.Content("~/Assets/images/table/icon_close_red.gif") %>"   alt="" /></a></td>
				                    </tr>
				                    </table>
				                    </div>
                                    
                                <% }
                                 else if (Model.MessageStatus == 3)
                                 {%>
                                    <div id="Div1">
				                    <table border="0" width="100%" cellpadding="0" cellspacing="0">
				                    <tr>
					                    <td class="red-left"> 
                                        
                                            file size must not be greater than 5 MB
                                       
                                        </td>
					                    <td class="red-right"><a class="close-red"><img src="<%=Url.Content("~/Assets/images/table/icon_close_red.gif") %>"   alt="" /></a></td>
				                    </tr>
				                    </table>
				                    </div>
                                <% } else if (Model.MessageStatus == 4)
                                 {%>
                                    <div id="Div1">
				                    <table border="0" width="100%" cellpadding="0" cellspacing="0">
				                    <tr>
					                    <td class="red-left"> 
                                        
                                           Image format is not valid!
                                       
                                        </td>
					                    <td class="red-right"><a class="close-red"><img src="<%=Url.Content("~/Assets/images/table/icon_close_red.gif") %>"   alt="" /></a></td>
				                    </tr>
				                    </table>
				                    </div>
                                <% } %>
                                <!--  start step-holder -->
                                <div id="step-holder">
                                    <div class="step-no">
                                        1</div>
                                    <div class="step-dark-left">
                                        <a href="">Add product service</a></div>
                                    <div class="step-dark-right">
                                        &nbsp;</div>
                                </div>
                                <!--  end step-holder -->
                                <!-- start id-form -->
                                <table border="0" cellpadding="0" cellspacing="0" id="id-form">
                                    <tr>
                                        <th valign="top">
                                            Category:
                                        </th>
                                        <td>
                                            <% List<int> i = new List<int>();
                                               i.Add((int)Model.CatID);
                                            %>
                                            <%= ElectroITSolutions.Helper.SiteHelper.SelectList(ViewData["Category"] as Dictionary<string, string>, "CatId", i, false, "styledselect_form_1")%>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th valign="top">
                                            Product Title:
                                        </th>
                                        <td>
                                            <input type="text" class="inp-form" name="Title" id="txtTitle" value="<%=Model.Title %>" maxlength="100" />
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th valign="top">
                                            Description:
                                        </th>
                                        <td>
                                            <textarea rows="" cols="" class="form-textarea" id="txtDescription" name="Description"><%=Model.Description%></textarea>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            Add Image:
                                        </th>
                                        <td>
                                            <input type="file" class="file_1" name="Image" />
                                        </td>
                                        <td>
                                            <div class="bubble-left">
                                            </div>
                                            <div class="bubble-inner">
                                                JPEG, GIF,PJPEG,PNG,JPG,BMP 5MB max image</div>
                                            <div class="bubble-right">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th valign="top">
                                            Video Url:
                                        </th>
                                        <td>
                                            <input type="text" class="text-box" name="Url" value="<%=Model.Url %>" maxlength="200" id="txtUrl" />
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th valign="top">
                                            Sort Order:
                                        </th>
                                        <td>
                                            <input type="text" class="text-box-sortOrder" name="SortOrder" id="txtSortOrder" value="<%=Model.SortOrder %>" />
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
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
    <script type="text/javascript">
        $(document).ready(function () {
            $('.styledselect_form_1').selectbox({ inputClass: "styledselect_form_1" });
            $(document).pngFix();
            $("input.file_1").filestyle({
                image: imagePath + "images/forms/upload_file.gif",
                imageheight: 29,
                imagewidth: 78,
                width: 300
            });

            $("#CatId_container li").click(function () {
                var temp = $(this).attr("id").split('_');
                BindSortOrder(temp[2]);
            });
            $("#btnSave").click(function () {

                if ($("#txtTitle").val() == '') {
                    alert('please Enter Title');
                    return false;
                }

            });

        });

        function BindSortOrder(categoryID) {
            $.ajax({
                type: "POST",
                url: siteRoot +  "Admin/GetMaxSortOrder",
                cache: false,
                data: { 'catID': categoryID },
                dataType: 'json',
                success: function (json) {
                    $("#txtSortOrder").val(json);
                } 	// end success function
            });    	// end ajax call
        }
    </script>
</asp:Content>
