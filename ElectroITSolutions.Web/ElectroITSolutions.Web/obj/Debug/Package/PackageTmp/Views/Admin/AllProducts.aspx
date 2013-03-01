<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Admin.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    AllProducts
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="page-heading">
        <h1>
            <a href="<%=Url.Content("~/Admin/NewProduct/0") %>">Add product</a></h1>
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
                <div id="content-table-inner">
                    <!--  start table-content  -->
                    <div id="table-content">
                        <!--  start product-table ..................................................................................... -->
                        <div style="height: 50px;">
                        <div class="mainform-left">
                            <% List<int> i = new List<int>();
                               i.Add(-1);
                            %>
                            <%= ElectroITSolutions.Helper.SiteHelper.SelectList(ViewData["Category"] as Dictionary<string, string>, "CatId", i, false, "styledselect_form_1")%>
                        </div>
                        <div class="mainform-right">
                            <input type="button" value="Update Sort Order" class="button" />
                        </div>
                        </div>
                        <br />
                        <span id="content-product">
                           
                        </span>
                        <!--  end product-table................................... -->
                    </div>
                    <div class="clear">
                    </div>
                </div>
                <!--  end content-table-inner ............................................END  -->
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
    <script type="text/javascript">
        $(document).ready(function () {
            $('.styledselect_form_1').selectbox({ inputClass: "styledselect_form_1" });
            BindFunction(0);

            $("#CatId_container li").click(function () {
                var temp = $(this).attr("id").split('_');
                BindFunction(temp[2]);
            });
        });

        function BindFunction(categoryID) {
            $.ajax({
                type: "POST",
                url: siteRoot + "Admin/GetProducts",
                cache: false,
                data: { 'catID': categoryID },
                success: function (html) {
                    $("#content-product").html(html);
                    BindToolTip();
                } 	// end success function
            });     	// end ajax call
        }

        function BindToolTip() {
            $('.tonus').tooltip({
                delay: 0,
                showURL: false,
                bodyHandler: function () {
                    return $("<img/>").attr("src", $(this).attr('src'));
                }
            });
        }
    </script>
</asp:Content>
