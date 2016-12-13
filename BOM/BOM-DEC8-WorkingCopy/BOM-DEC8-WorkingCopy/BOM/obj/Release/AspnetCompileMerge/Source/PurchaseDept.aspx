<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="PurchaseDept.aspx.cs" Inherits="BOM._PurchaseDept" %>

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
                    <th scope="col" rowspan="2" style="width: 40px">APR'16 PUR
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">MAY'16 PUR
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">JUN'16 PUR
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">JUL'16 PUR
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">AUG'16 PUR
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">SEP'16 PUR
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">OCT'16 PUR
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">NOV'16 PUR
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">DEC'16 PUR
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">JAN'17 PUR
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">FEB'17 PUR
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">MAR'17 PUR
                    </th>
                     <th scope="col" rowspan="2" style="width: 40px">FY16 1st
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">FY16 2nd
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">FY2016 TOTAL
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">Q1 FY17
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">Q2 FY17
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">Q3 FY17
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">Q4 FY17
                    </th>
                     <th scope="col" rowspan="2" style="width: 40px">FY17 1st
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">FY17 2nd
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">FY2017 TOTAL
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">Q1 FY18
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">Q2 FY18
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">Q3 FY18
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">Q4 FY18
                    </th>
                     <th scope="col" rowspan="2" style="width: 40px">FY18 1st
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">FY18 2nd
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">FY2018 TOTAL
                    </th>
                   
                    <th scope="col" rowspan="2" style="width: 40px">APR'16 RM
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">MAY'16 RM
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">JUN'16 RM
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">JUL'16 RM
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">AUG'16 RM
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">SEP'16 RM
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">OCT'16 RM
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">NOV'16 RM
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">DEC'16 RM
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">JAN'17 RM
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">FEB'17 RM
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">MAR'17 RM
                    </th>
                     <th scope="col" rowspan="2" style="width: 40px">FY16 1st
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">FY16 2nd
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">FY2016 TOTAL
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">Q1 FY17
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">Q2 FY17
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">Q3 FY17
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">Q4 FY17
                    </th>
                     <th scope="col" rowspan="2" style="width: 40px">FY17 1st
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">FY17 2nd
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">FY2017 TOTAL
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">Q1 FY18
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">Q2 FY18
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">Q3 FY18
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">Q4 FY18
                    </th>
                     <th scope="col" rowspan="2" style="width: 40px">FY18 1st
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">FY18 2nd
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">FY2018 TOTAL
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
                    <asp:Label ID="lblPurApr16" runat="server" Text='<%# Eval("PurApr16") %>' />
                    <asp:TextBox ID="txtPurApr16" runat="server" Width="90" Text='<%# Eval("PurApr16") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 90px">
                    <asp:Label ID="lblPurMay16" runat="server" Text='<%# Eval("PurMay16") %>' />
                    <asp:TextBox ID="txtPurMay16" runat="server" Width="90" Text='<%# Eval("PurMay16") %>'
                        Visible="false" />
                </td>
            
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblPurjun16" runat="server" Text='<%# Eval("Purjun16") %>' />
                    <asp:TextBox ID="txtPurjun16" runat="server" Width="40" Text='<%# Eval("Purjun16") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 30px">
                    <asp:Label ID="lblPurjul16" runat="server" Text='<%# Eval("Purjul16") %>' />
                    <asp:TextBox ID="txtPurjul16" runat="server" Width="40" Text='<%# Eval("Purjul16") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 30px">
                    <asp:Label ID="lblPuraug16" runat="server" Text='<%# Eval("Puraug16") %>' />
                    <asp:TextBox ID="txtPuraug16" runat="server" Width="50" Text='<%# Eval("Puraug16") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 30px">
                    <asp:Label ID="lblPursep16" runat="server" Text='<%# Eval("Pursep16") %>' />
                    <asp:TextBox ID="txtPursep16" runat="server" Width="30" Text='<%# Eval("Pursep16") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 30px">
                    <asp:Label ID="lblPuroct16" runat="server" Text='<%# Eval("Puroct16") %>' />
                    <asp:TextBox ID="txtPuroct16" runat="server" Width="50" Text='<%# Eval("Puroct16") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 50px">
                    <asp:Label ID="lblPurNov16" runat="server" Text='<%# Eval("PurNov16") %>' />
                    <asp:TextBox ID="txtPurNov16" runat="server" Width="50" Text='<%# Eval("PurNov16") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 20px">
                    <asp:Label ID="lblPurDec16" runat="server" Text='<%# Eval("PurDec16") %>' />
                    <asp:TextBox ID="txtPurDec16" runat="server" Width="50" Text='<%# Eval("PurDec16") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 60px">
                    <asp:Label ID="lblPurJan17" runat="server" Text='<%# Eval("PurJan17") %>' />
                    <asp:TextBox ID="txtPurJan17" runat="server" Width="60" Text='<%# Eval("PurJan17") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblPurFeb17" runat="server" Text='<%# Eval("PurFeb17") %>' />
                    <asp:TextBox ID="txtPurFeb17" runat="server" Width="50" Text='<%# Eval("PurFeb17") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblPurMar17" runat="server" Text='<%# Eval("PurMar17") %>' />
                    <asp:TextBox ID="txtPurMar17" runat="server" Width="30" Text='<%# Eval("PurMar17") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblPurFirstFY16" runat="server" Text='<%# Eval("PurFirstFY16") %>' />
                    <asp:TextBox ID="txtPurFirstFY16" runat="server" Width="30" Text='<%# Eval("PurFirstFY16") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblPurSecondFY16" runat="server" Text='<%# Eval("PurSecondFY16") %>' />
                    <asp:TextBox ID="txtPurSecondFY16" runat="server" Width="30" Text='<%# Eval("PurSecondFY16") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblPurTotalFY16" runat="server" Text='<%# Eval("PurTotalFY16") %>' />
                    <asp:TextBox ID="txtPurTotalFY16" runat="server" Width="30" Text='<%# Eval("PurTotalFY16") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblPurQ1FY17" runat="server" Text='<%# Eval("PurQ1FY17") %>' />
                    <asp:TextBox ID="txtPurQ1FY17" runat="server" Width="30" Text='<%# Eval("PurQ1FY17") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblPurQ2FY17" runat="server" Text='<%# Eval("PurQ2FY17") %>' />
                    <asp:TextBox ID="txtPurQ2FY17" runat="server" Width="30" Text='<%# Eval("PurQ2FY17") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblPurQ3FY17" runat="server" Text='<%# Eval("PurQ3FY17") %>' />
                    <asp:TextBox ID="txtPurQ3FY17" runat="server" Width="30" Text='<%# Eval("PurQ3FY17") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblPurQ4FY17" runat="server" Text='<%# Eval("PurQ4FY17") %>' />
                    <asp:TextBox ID="txtPurQ4FY17" runat="server" Width="30" Text='<%# Eval("PurQ4FY17") %>' Visible="false" />
                </td>
                 <td scope="col" style="width: 10px">
                    <asp:Label ID="lblPurFirstFY17" runat="server" Text='<%# Eval("PurFirstFY17") %>' />
                    <asp:TextBox ID="txtPurFirstFY17" runat="server" Width="30" Text='<%# Eval("PurFirstFY17") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblPurSecondFY17" runat="server" Text='<%# Eval("PurSecondFY17") %>' />
                    <asp:TextBox ID="txtPurSecondFY17" runat="server" Width="30" Text='<%# Eval("PurSecondFY17") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblPurTotalFY17" runat="server" Text='<%# Eval("PurTotalFY17") %>' />
                    <asp:TextBox ID="txtPurTotalFY17" runat="server" Width="30" Text='<%# Eval("PurTotalFY17") %>' Visible="false" />
                </td>

                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblPurQ1FY18" runat="server" Text='<%# Eval("PurQ1FY18") %>' />
                    <asp:TextBox ID="txtPurQ1FY18" runat="server" Width="30" Text='<%# Eval("PurQ1FY18") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblPurQ2FY18" runat="server" Text='<%# Eval("PurQ2FY18") %>' />
                    <asp:TextBox ID="txtPurQ2FY18" runat="server" Width="30" Text='<%# Eval("PurQ2FY18") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblPurQ3FY18" runat="server" Text='<%# Eval("PurQ3FY18") %>' />
                    <asp:TextBox ID="txtPurQ3FY18" runat="server" Width="30" Text='<%# Eval("PurQ3FY18") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblPurQ4FY18" runat="server" Text='<%# Eval("PurQ4FY18") %>' />
                    <asp:TextBox ID="txtPurQ4FY18" runat="server" Width="30" Text='<%# Eval("PurQ4FY18") %>' Visible="false" />
                </td>
                 <td scope="col" style="width: 10px">
                    <asp:Label ID="lblPurFirstFY18" runat="server" Text='<%# Eval("PurFirstFY18") %>' />
                    <asp:TextBox ID="txtPurFirstFY18" runat="server" Width="30" Text='<%# Eval("PurFirstFY17") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblPurSecondFY18" runat="server" Text='<%# Eval("PurSecondFY18") %>' />
                    <asp:TextBox ID="txtPurSecondFY18" runat="server" Width="30" Text='<%# Eval("PurSecondFY18") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblPurTotalFY18" runat="server" Text='<%# Eval("PurTotalFY18") %>' />
                    <asp:TextBox ID="txtPurTotalFY18" runat="server" Width="30" Text='<%# Eval("PurTotalFY18") %>' Visible="false" />
                </td>


                  <td scope="col" style="width: 90px">
                    <asp:Label ID="lblRMApr16" runat="server" Text='<%# Eval("RMApr16") %>' />
                    <asp:TextBox ID="txtRMApr16" runat="server" Width="90" Text='<%# Eval("RMApr16") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 90px">
                    <asp:Label ID="lblRMMay16" runat="server" Text='<%# Eval("RMMay16") %>' />
                    <asp:TextBox ID="txtRMMay16" runat="server" Width="90" Text='<%# Eval("RMMay16") %>'
                        Visible="false" />
                </td>
            
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblRMJun16" runat="server" Text='<%# Eval("RMJun16") %>' />
                    <asp:TextBox ID="txtRMJun16" runat="server" Width="40" Text='<%# Eval("RMJun16") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 30px">
                    <asp:Label ID="lblRMJul16" runat="server" Text='<%# Eval("RMJul16") %>' />
                    <asp:TextBox ID="txtRMJul16" runat="server" Width="40" Text='<%# Eval("RMJul16") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 30px">
                    <asp:Label ID="lblRMAug16" runat="server" Text='<%# Eval("RMAug16") %>' />
                    <asp:TextBox ID="txtRMAug16" runat="server" Width="50" Text='<%# Eval("RMAug16") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 30px">
                    <asp:Label ID="lblRMSep16" runat="server" Text='<%# Eval("RMSep16") %>' />
                    <asp:TextBox ID="txtRMSep16" runat="server" Width="30" Text='<%# Eval("RMSep16") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 30px">
                    <asp:Label ID="lblRMOct16" runat="server" Text='<%# Eval("RMOct16") %>' />
                    <asp:TextBox ID="txtRMOct16" runat="server" Width="50" Text='<%# Eval("RMOct16") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 50px">
                    <asp:Label ID="lblRMNov16" runat="server" Text='<%# Eval("RMNov16") %>' />
                    <asp:TextBox ID="txtRMNov16" runat="server" Width="50" Text='<%# Eval("RMNov16") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 20px">
                    <asp:Label ID="lblRMDec16" runat="server" Text='<%# Eval("RMDec16") %>' />
                    <asp:TextBox ID="txtRMDec16" runat="server" Width="50" Text='<%# Eval("RMDec16") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 60px">
                    <asp:Label ID="lblRMJan17" runat="server" Text='<%# Eval("RMJan17") %>' />
                    <asp:TextBox ID="txtRMJan17" runat="server" Width="60" Text='<%# Eval("RMJan17") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblRMFeb17" runat="server" Text='<%# Eval("RMFeb17") %>' />
                    <asp:TextBox ID="txtRMFeb17" runat="server" Width="50" Text='<%# Eval("RMFeb17") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblRMMar17" runat="server" Text='<%# Eval("RMMar17") %>' />
                    <asp:TextBox ID="txtRMMar17" runat="server" Width="30" Text='<%# Eval("RMMar17") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblRMFirstFY16" runat="server" Text='<%# Eval("RMFirstFY16") %>' />
                    <asp:TextBox ID="txtRMFirstFY16" runat="server" Width="30" Text='<%# Eval("RMFirstFY16") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblRMSecondFY16" runat="server" Text='<%# Eval("RMSecondFY16") %>' />
                    <asp:TextBox ID="txtRMSecondFY16" runat="server" Width="30" Text='<%# Eval("RMSecondFY16") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblRMTotalFY16" runat="server" Text='<%# Eval("RMTotalFY16") %>' />
                    <asp:TextBox ID="txtRMTotalFY16" runat="server" Width="30" Text='<%# Eval("RMTotalFY16") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblRMQ1FY17" runat="server" Text='<%# Eval("RMQ1FY17") %>' />
                    <asp:TextBox ID="txtRMQ1FY17" runat="server" Width="30" Text='<%# Eval("RMQ1FY17") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblRMQ2FY17" runat="server" Text='<%# Eval("RMQ2FY17") %>' />
                    <asp:TextBox ID="txtRMQ2FY17" runat="server" Width="30" Text='<%# Eval("RMQ2FY17") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblRMQ3FY17" runat="server" Text='<%# Eval("RMQ3FY17") %>' />
                    <asp:TextBox ID="txtRMQ3FY17" runat="server" Width="30" Text='<%# Eval("RMQ3FY17") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblRMQ4FY17" runat="server" Text='<%# Eval("RMQ4FY17") %>' />
                    <asp:TextBox ID="txtRMQ4FY17" runat="server" Width="30" Text='<%# Eval("RMQ4FY17") %>' Visible="false" />
                </td>
                 <td scope="col" style="width: 10px">
                    <asp:Label ID="lblRMFirstFY17" runat="server" Text='<%# Eval("RMFirstFY17") %>' />
                    <asp:TextBox ID="txtRMFirstFY17" runat="server" Width="30" Text='<%# Eval("RMFirstFY17") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblRMSecondFY17" runat="server" Text='<%# Eval("RMSecondFY17") %>' />
                    <asp:TextBox ID="txtRMSecondFY17" runat="server" Width="30" Text='<%# Eval("RMSecondFY17") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblRMTotalFY17" runat="server" Text='<%# Eval("RMTotalFY17") %>' />
                    <asp:TextBox ID="txtRMTotalFY17" runat="server" Width="30" Text='<%# Eval("RMTotalFY17") %>' Visible="false" />
                </td>

                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblRMQ1FY18" runat="server" Text='<%# Eval("RMQ1FY18") %>' />
                    <asp:TextBox ID="txtRMQ1FY18" runat="server" Width="30" Text='<%# Eval("RMQ1FY18") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblRMQ2FY18" runat="server" Text='<%# Eval("RMQ2FY18") %>' />
                    <asp:TextBox ID="txtRMQ2FY18" runat="server" Width="30" Text='<%# Eval("RMQ2FY18") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblRMQ3FY18" runat="server" Text='<%# Eval("RMQ3FY18") %>' />
                    <asp:TextBox ID="txtRMQ3FY18" runat="server" Width="30" Text='<%# Eval("RMQ3FY18") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblRMQ4FY18" runat="server" Text='<%# Eval("RMQ4FY18") %>' />
                    <asp:TextBox ID="txtRMQ4FY18" runat="server" Width="30" Text='<%# Eval("RMQ4FY18") %>' Visible="false" />
                </td>
                 <td scope="col" style="width: 10px">
                    <asp:Label ID="lblRMFirstFY18" runat="server" Text='<%# Eval("RMFirstFY18") %>' />
                    <asp:TextBox ID="txtRMFirstFY18" runat="server" Width="30" Text='<%# Eval("RMFirstFY18") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblRMSecondFY18" runat="server" Text='<%# Eval("RMSecondFY18") %>' />
                    <asp:TextBox ID="txtRMSecondFY18" runat="server" Width="30" Text='<%# Eval("RMSecondFY18") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblRMTotalFY18" runat="server" Text='<%# Eval("RMTotalFY18") %>' />
                    <asp:TextBox ID="txtRMTotalFY18" runat="server" Width="30" Text='<%# Eval("RMTotalFY18") %>' Visible="false" />
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
