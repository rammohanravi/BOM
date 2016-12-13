<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/MasterPages/Site.master" AutoEventWireup="true" CodeBehind="PurchaseDept.aspx.cs" Inherits="BOM._PurchaseDept" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:Repeater ID="rptPurchase" runat="server">
        <HeaderTemplate>
            <table cellspacing="0" rules="all" border="1" width="100%">
                <tr>
                    <td colspan="36" align="center" style="font-size: 25px; background-color: Orange">PURCHASE DEPT
                    </td>
                </tr>
                <tr>
                    <th scope="col" rowspan="2" style="width: 90px">SL NO
                    </th>
                    <th scope="col" rowspan="2" style="width: 90px">CUSTOMER NAME
                    </th>
                    <th scope="col" rowspan="2" style="width: 90px">MODEL CODE
                    </th>
                    <th scope="col" rowspan="2" style="width: 90px">CAR NAME
                    </th>
                    <th scope="col" rowspan="2" style="width: 90px">SOP
                    </th>
                    <th scope="col" rowspan="2" style="width: 90px">PRODUCT TYPE
                    </th>
                    <th scope="col" rowspan="2" style="width: 90px">FG PART NUMBER
                    </th>
                    <th scope="col" rowspan="2" style="width: 90px">PART NAME
                    </th>
                    <th scope="col" rowspan="2" style="width: 90px">PART NUMBER
                    </th>
                    <th scope="col" rowspan="2" style="width: 90px">CLASSIFICATION
                    </th>
                    <th scope="col" rowspan="2" style="width: 20px">CATEGORY
                    </th>
                    <th scope="col" rowspan="2" style="width: 10px">SUPPLIER
                    </th>
                    <th scope="col" rowspan="2" style="width: 20px">LOCATION
                    </th>
                    <th scope="col" rowspan="2" style="width: 10px">MATERIAL
                    </th>
                    <th scope="col" rowspan="2" style="width: 100px">TYRE2 SUPPLIER
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">REMARKS
                    </th>
                     <th scope="col" rowspan="2" style="width: 40px">STATUS
                    </th>
                </tr>
                <tr>
                    <th scope="col" style="width: 10px">ACTIONS
                    </th>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td scope="col" style="width: 30px">
                    <asp:Label ID="lblPurchaseId" runat="server" Text='<%# Eval("PurchaseId") %>' />
                    <asp:TextBox ID="txtPurchaseId" runat="server" Width="30" Text='<%# Eval("PurchaseId") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 90px">
                    <asp:Label ID="lblCustomerName" runat="server" Text='<%# Eval("CustomerName") %>' />
                    <asp:TextBox ID="txtCustomerName" runat="server"  Width="90" Text='<%# Eval("CustomerName") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 90px">
                    <asp:Label ID="lblModelCode" runat="server" Text='<%# Eval("ModelCode") %>' />
                    <asp:TextBox ID="txtModelCode" runat="server"  Width="90" Text='<%# Eval("ModelCode") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 90px">
                    <asp:Label ID="lblCarName" runat="server" Text='<%# Eval("CarName") %>' />
                    <asp:TextBox ID="txtCarName" runat="server"  Width="90" Text='<%# Eval("CarName") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 90px">
                    <asp:Label ID="lblSOP" runat="server" Text='<%# Eval("SOP") %>' />
                    <asp:TextBox ID="txtSOP" runat="server"  Width="90" Text='<%# Eval("SOP") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 90px">
                    <asp:Label ID="lblProductType" runat="server" Text='<%# Eval("ProductType") %>' />
                    <asp:TextBox ID="txtProductType" runat="server"  Width="90" Text='<%# Eval("ProductType") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 90px">
                    <asp:Label ID="lblFGPartNo" runat="server" Text='<%# Eval("FGPartNo") %>' />
                    <asp:TextBox ID="txtFGPartNo" runat="server" Width="90" Text='<%# Eval("FGPartNo") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 90px">
                    <asp:Label ID="lblPartName" runat="server" Text='<%# Eval("PartName") %>' />
                    <asp:TextBox ID="txtPartName" runat="server" Width="90" Text='<%# Eval("PartName") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 90px">
                    <asp:Label ID="lblPartNo" runat="server" Text='<%# Eval("PartNo") %>' />
                    <asp:TextBox ID="txtPartNo" runat="server" Width="90" Text='<%# Eval("PartNo") %>'
                        Visible="false" />
                </td>
                <%--<td scope="col" style="width: 90px">
                    <asp:Label ID="lblCustomerPartNo" runat="server" Text='<%# Eval("CustomerPartNo") %>' />
                    <asp:TextBox ID="txtCustomerPartNo" runat="server" Width="90" Text='<%# Eval("CustomerPartNo") %>'
                        Visible="false" />
                </td>--%>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblClassification" runat="server" Text='<%# Eval("CLASSIFICATION") %>' />
                    <asp:TextBox ID="txtClassification" runat="server" Width="90" Text='<%# Eval("CLASSIFICATION") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblCategory" runat="server" Text='<%# Eval("CATEGORY") %>' />
                    <asp:TextBox ID="txtCategory" runat="server" Width="90" Text='<%# Eval("CATEGORY") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblSupplier" runat="server" Text='<%# Eval("SUPPLIER") %>' />
                    <asp:TextBox ID="txtSupplier" runat="server" Width="90" Text='<%# Eval("SUPPLIER") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblLocation" runat="server" Text='<%# Eval("Location") %>' />
                    <asp:TextBox ID="txtLocation" runat="server" Width="90" Text='<%# Eval("Location") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 90px">
                    <asp:Label ID="lblMaterial" runat="server" Text='<%# Eval("Material") %>' />
                    <asp:TextBox ID="txtMaterial" runat="server" Width="90" Text='<%# Eval("Material") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 90px">
                    <asp:Label ID="lblTyre2Supplier" runat="server" Text='<%# Eval("Tyre2Supplier") %>' />
                    <asp:TextBox ID="txtTyre2Supplier" runat="server" Width="90" Text='<%# Eval("Tyre2Supplier") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 90px">
                    <asp:Label ID="lblRemarks" runat="server" Text='<%# Eval("Remarks") %>' />
                    <asp:TextBox ID="txtRemarks" runat="server" Width="90" Text='<%# Eval("Remarks") %>'
                        Visible="false" />
                </td>
               <td scope="col" style="width: 10px">
                    <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status") %>' />
                    <asp:DropDownList ID="ddlStatus" runat="server" Width="80"  Visible="false">
                         <asp:ListItem Text="Select" Value=""></asp:ListItem>
                        <asp:ListItem Text="Approved" Value="A"></asp:ListItem>
                        <asp:ListItem Text="Rejected" Value="R"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:LinkButton ID="lnkEdit" Text="Edit" runat="server" OnClick="OnEdit" />
                    <asp:LinkButton ID="lnkUpdate" Text="Update" runat="server" Visible="false" OnClick="OnUpdate" />
                    <asp:LinkButton ID="lnkCancel" Text="Cancel" runat="server" Visible="false" OnClick="OnCancel" />
                    <asp:LinkButton ID="lnkDelete" Text="Delete" runat="server" OnClick="OnDelete" OnClientClick="return confirm('Do you want to delete this row?');" />
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
