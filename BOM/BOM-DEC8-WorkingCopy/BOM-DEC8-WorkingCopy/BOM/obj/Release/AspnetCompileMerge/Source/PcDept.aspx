<%@ Page Language="C#" MasterPageFile="~/Site.master"  AutoEventWireup="true" CodeBehind="PcDept.aspx.cs" Inherits="BOM.PcDept" %>

  <asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:Repeater ID="rptPcDept" runat="server">
        <HeaderTemplate>
            <table cellspacing="0" rules="all" border="1" width="100%">
                <tr>
                    <td colspan="14" align="center" style="font-size: 25px; background-color: Orange">PCDEPT
                    </td>
                </tr>
                <tr>
                    <th scope="col" rowspan="1" style="width: 90px">
                    SL NO
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
                    QTY /BOX
                    </th>
                    <th scope="col" rowspan="1" style="width: 20px">
                    VOLUMETRIC DIM OF BOX(MM)
                    </th>
                    <th scope="col" rowspan="1" style="width: 10px">
                    NET WEIGHT[BOX]
                    </th>
                    <th scope="col" rowspan="1" style="width: 20px">
                    GROSS WEIGHT[BOX]
                    </th>
                     <th scope="col" rowspan="1" style="width: 20px">
                    VOLUMETRIC WEIGHT[LXWXH/6000][MM]
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
                    <asp:Label ID="lblQTYBOX" runat="server" Text='<%# Eval("QTYBOX") %>' />
                    <asp:TextBox ID="txtQTYBOX" runat="server" Width="90" Text='<%# Eval("QTYBOX") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblVOLUMETRICDOBOX" runat="server" Text='<%# Eval("VOLUMETRICDOBOX") %>' />
                    <asp:TextBox ID="txtVOLUMETRICDOBOX" runat="server" Width="90" Text='<%# Eval("VOLUMETRICDOBOX") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblNETWEIGHT" runat="server" Text='<%# Eval("NETWEIGHT") %>' />
                    <asp:TextBox ID="txtNETWEIGHT" runat="server" Width="90" Text='<%# Eval("NETWEIGHT") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblGROSSWEIGHT" runat="server" Text='<%# Eval("GROSSWEIGHT") %>' />
                    <asp:TextBox ID="txtGROSSWEIGHT" runat="server" Width="90" Text='<%# Eval("GROSSWEIGHT") %>'
                        Visible="false" />
                </td>
                  <td scope="col" style="width: 10px">
                    <asp:Label ID="lblVOLUMETRICWEIGHT" runat="server" Text='<%# Eval("VOLUMETRICWEIGHT") %>' />
                    <asp:TextBox ID="txtVOLUMETRICWEIGHT" runat="server" Width="140" Text='<%# Eval("VOLUMETRICWEIGHT") %>'
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
