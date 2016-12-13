<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Design.aspx.cs" Inherits="BOM._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:Repeater ID="rptCustomers" runat="server">
        <HeaderTemplate>
            <table cellspacing="0" rules="all" border="1" width="100%">
                <tr>
                    <td colspan="36" align="center" style="font-size: 25px; background-color: Orange">DESIGN
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
                    <th scope="col" rowspan="2" style="width: 90px">CUSTOMER PART NUMBER
                    </th>
                    <th scope="col" rowspan="2" style="width: 20px">ASP-Z
                    </th>
                    <th scope="col" rowspan="2" style="width: 10px">LEVEL
                    </th>
                    <th scope="col" rowspan="2" style="width: 20px">QTY
                    </th>
                    <th scope="col" rowspan="2" style="width: 10px">UOM
                    </th>
                    <th scope="col" rowspan="2" style="width: 100px">SPECIFICATION
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">ECI INFORMATION
                    </th>
                    <th scope="col" style="width: 100px" colspan="2">DRAWING
                    </th>
                    <th scope="col" style="width: 100px" colspan="3">SOURCING
                    </th>
                    <th scope="col" style="width: 100px" colspan="2">TOOLING
                    </th>
                    <th scope="col" style="width: 100px" colspan="5">RAW MATERIAL
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">RISK MANAGMENT SOURCE
                    </th>
                    <th scope="col" style="width: 100px" colspan="6">CUSTOMER DELIVERY ROUTE
                    </th>
                </tr>
                <tr>
                    <th scope="col" style="width: 10px">3D
                    </th>
                    <th scope="col" style="width: 10px">2D
                    </th>
                    <th scope="col" style="width: 10px">IN-HOUSE
                    </th>
                    <th scope="col" style="width: 30px">LOCAL
                    </th>
                    <th scope="col" style="width: 30px">IMPORT
                    </th>
                    <th scope="col" style="width: 30px">DIE
                    </th>
                    <th scope="col" style="width: 40px">PROCESS
                    </th>
                    <th scope="col" style="width: 60px">SPEC/DDS
                    </th>
                    <th scope="col" style="width: 20px">COLOUR
                    </th>
                    <th scope="col" style="width: 40px">SUPPLIER
                    </th>
                    <th scope="col" style="width: 10px">GRADE
                    </th>
                    <th scope="col" style="width: 10px">DNKI CODE
                    </th>
                    <th scope="col" style="width: 10px">PROTO
                    </th>
                    <th scope="col" style="width: 10px">OT
                    </th>
                    <th scope="col" style="width: 10px">OT&OP
                    </th>
                    <th scope="col" style="width: 10px">LVPT
                    </th>
                    <th scope="col" style="width: 10px">HVPT
                    </th>
                    <th scope="col" style="width: 10px">SOP
                    </th>
                    <th scope="col" style="width: 10px">ACTIONS
                    </th>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td scope="col" style="width: 30px">
                    <asp:Label ID="lblDesignId" runat="server" Text='<%# Eval("DesignId") %>' />
                    <asp:TextBox ID="txtDesignId" runat="server" Width="30" Text='<%# Eval("DesignId") %>'
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
                <td scope="col" style="width: 90px">
                    <asp:Label ID="lblCustomerPartNo" runat="server" Text='<%# Eval("CustomerPartNo") %>' />
                    <asp:TextBox ID="txtCustomerPartNo" runat="server" Width="90" Text='<%# Eval("CustomerPartNo") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblAspz" runat="server" Text='<%# Eval("ASPZ") %>' />
                    <asp:TextBox ID="txtAspz" runat="server" Width="40" Text='<%# Eval("ASPZ") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblLevel" runat="server" Text='<%# Eval("Level") %>' />
                    <asp:TextBox ID="txtLevel" runat="server" Width="40" Text='<%# Eval("Level") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblUOM" runat="server" Text='<%# Eval("UOM") %>' />
                    <asp:TextBox ID="txtUOM" runat="server" Width="30" Text='<%# Eval("UOM") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblQty" runat="server" Text='<%# Eval("Qty") %>' />
                    <asp:TextBox ID="txtQty" runat="server" Width="30" Text='<%# Eval("Qty") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 90px">
                    <asp:Label ID="lblSpec" runat="server" Text='<%# Eval("Spec") %>' />
                    <asp:TextBox ID="txtSpec" runat="server" Width="90" Text='<%# Eval("Spec") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 90px">
                    <asp:Label ID="lblECIinfo" runat="server" Text='<%# Eval("ECIinfo") %>' />
                    <asp:TextBox ID="txtECIinfo" runat="server" Width="90" Text='<%# Eval("ECIinfo") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="Label17" runat="server" Text='<%# Eval("ThreeD") %>' />
                    <asp:DropDownList ID="ddlThreeD" runat="server" Width="40"  Visible="false">
                        <asp:ListItem Text="O" Value="O"></asp:ListItem>
                        <asp:ListItem Text="X" Value="X"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("TwoD") %>' />
                    <asp:DropDownList ID="ddlTwoD" runat="server" Width="40"  Visible="false">
                        <asp:ListItem Text="O" Value="O"></asp:ListItem>
                        <asp:ListItem Text="X" Value="X"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblINHouse" runat="server" Text='<%# Eval("INHouse") %>' />
                    <asp:TextBox ID="txtINHouse" runat="server" Width="40" Text='<%# Eval("INHouse") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 30px">
                    <asp:Label ID="lblLocal" runat="server" Text='<%# Eval("Local") %>' />
                    <asp:TextBox ID="txtLocal" runat="server" Width="40" Text='<%# Eval("Local") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 30px">
                    <asp:Label ID="lblImport" runat="server" Text='<%# Eval("Import") %>' />
                    <asp:TextBox ID="txtImport" runat="server" Width="50" Text='<%# Eval("Import") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 30px">
                    <asp:Label ID="lblDie" runat="server" Text='<%# Eval("Die") %>' />
                    <asp:TextBox ID="txtDie" runat="server" Width="30" Text='<%# Eval("Die") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 30px">
                    <asp:Label ID="lblProcess" runat="server" Text='<%# Eval("Process") %>' />
                    <asp:TextBox ID="txtProcess" runat="server" Width="50" Text='<%# Eval("Process") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 50px">
                    <asp:Label ID="lblSpecDDS" runat="server" Text='<%# Eval("SpecDDS") %>' />
                    <asp:TextBox ID="txtSpecDDS" runat="server" Width="50" Text='<%# Eval("SpecDDS") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 20px">
                    <asp:Label ID="lblColour" runat="server" Text='<%# Eval("Colour") %>' />
                    <asp:TextBox ID="txtColour" runat="server" Width="50" Text='<%# Eval("Colour") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 60px">
                    <asp:Label ID="lblSupplier" runat="server" Text='<%# Eval("Supplier") %>' />
                    <asp:TextBox ID="txtSupplier" runat="server" Width="60" Text='<%# Eval("Supplier") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblGrade" runat="server" Text='<%# Eval("Grade") %>' />
                    <asp:TextBox ID="txtGrade" runat="server" Width="50" Text='<%# Eval("Grade") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblDNKICode" runat="server" Text='<%# Eval("DNKICode") %>' />
                    <asp:TextBox ID="txtDNKICode" runat="server" Width="30" Text='<%# Eval("DNKICode") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblRiskManagementSource" runat="server" Text='<%# Eval("RiskManagementSource") %>' />
                    <asp:TextBox ID="txtRiskManagementSource" runat="server" Width="30" Text='<%# Eval("RiskManagementSource") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblProto" runat="server" Text='<%# Eval("Proto") %>' />
                    <asp:TextBox ID="txtProto" runat="server" Width="30" Text='<%# Eval("Proto") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblOT" runat="server" Text='<%# Eval("OT") %>' />
                    <asp:TextBox ID="txtOT" runat="server" Width="30" Text='<%# Eval("OT") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblOP" runat="server" Text='<%# Eval("OP") %>' />
                    <asp:TextBox ID="txtOP" runat="server" Width="30" Text='<%# Eval("OP") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblLVPT" runat="server" Text='<%# Eval("LVPT") %>' />
                    <asp:TextBox ID="txtLVPT" runat="server" Width="30" Text='<%# Eval("LVPT") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblHVPT" runat="server" Text='<%# Eval("HVPT") %>' />
                    <asp:TextBox ID="txtHVPT" runat="server" Width="30" Text='<%# Eval("HVPT") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblCustomerSOP" runat="server" Text='<%# Eval("CustomerSOP") %>' />
                    <asp:TextBox ID="txtCustomerSOP" runat="server" Width="30" Text='<%# Eval("CustomerSOP") %>' Visible="false" />
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
