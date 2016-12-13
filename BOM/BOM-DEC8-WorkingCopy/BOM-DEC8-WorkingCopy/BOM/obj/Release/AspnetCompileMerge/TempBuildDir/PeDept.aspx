<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="PeDept.aspx.cs" Inherits="BOM.PeDept" %>
 
 <asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:Repeater ID="rptPeDept" runat="server">
        <HeaderTemplate>
            <table cellspacing="0" rules="all" border="1" width="100%">
                <tr>
                    <td colspan="13" align="center" style="font-size: 25px; background-color: Orange">PE DEPT
                    </td>
                </tr>
                <tr>
                    <th scope="col" rowspan="1" style="width: 60px">SL NO
                    </th>
                    <th scope="col" rowspan="1" style="width: 90px">
                    CUSTOMER NAME
                    </th>
                    <th scope="col" rowspan="1" style="width: 90px">
                    MODEL CODE
                    </th>
                    <th scope="col" rowspan="1" style="width: 90px">
                    CAR NAME
                    </th>
                    <th scope="col" rowspan="1" style="width: 90px">
                    SOP
                    </th>
                    <th scope="col" rowspan="1" style="width: 90px">
                    PRODUCT TYPE
                    </th>
                    <th scope="col" rowspan="1" style="width: 90px">
                    FG PART NUMBER
                    </th>
                    <th scope="col" rowspan="1" style="width: 90px">
                    PART NAME
                    </th>
                    <th scope="col" rowspan="1" style="width: 90px">
                    PART NUMBER
                    </th>
                    <th scope="col" rowspan="1" style="width: 90px">
                    PROCESS TIME/(Sec)
                    </th>
                    <th scope="col" rowspan="1" style="width: 20px">
                    Rm Net Wt/Pc(Gms)
                    </th>
                    <th scope="col" rowspan="1" style="width: 20px">
                    COST CENTER
                    </th>
                    <th scope="col" rowspan="1" style="width: 30px">
                    COST CENTER NAME
                    </th>
                     <th scope="col" style="width: 10px">ACTIONS
                    </th>
                </tr>
                
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td scope="col" style="width: 30px">
                    <asp:Label ID="lblDesignId" runat="server" Text='<%# Eval("DesignId") %>' />
                    <asp:TextBox ID="txtDesignId" runat="server" Width="60" Text='<%# Eval("DesignId") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 90px">
                    <asp:Label ID="lblCustomerName" runat="server" Text='<%# Eval("CUSTOMERNAME") %>' />
                    <asp:TextBox ID="txtCustomerName" runat="server"  Width="90" Text='<%# Eval("CUSTOMERNAME") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 90px">
                    <asp:Label ID="lblModelCode" runat="server" Text='<%# Eval("MODELCODE") %>' />
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
                    <asp:Label ID="lblPROCESSTIME" runat="server" Text='<%# Eval("PROCESSTIME") %>' />
                    <asp:TextBox ID="txtPROCESSTIME" runat="server" Width="90" Text='<%# Eval("PROCESSTIME") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblRmNetWt" runat="server" Text='<%# Eval("RmNetWt") %>' />
                    <asp:TextBox ID="txtRmNetWt" runat="server" Width="70" Text='<%# Eval("RmNetWt") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblCOSTCENTER" runat="server" Text='<%# Eval("COSTCENTER") %>' />
                    <asp:TextBox ID="txtCOSTCENTER" runat="server" Width="40" Text='<%# Eval("COSTCENTER") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblCOSTCENTERNAME" runat="server" Text='<%# Eval("COSTCENTERNAME") %>' />
                    <asp:TextBox ID="txtCOSTCENTERNAME" runat="server" Width="60" Text='<%# Eval("COSTCENTERNAME") %>'
                        Visible="false" />
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
 
