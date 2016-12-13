<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/Site.master"  CodeBehind="BPCosting.aspx.cs" Inherits="BOM.BPCosting"%>
 
 <asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
     <asp:Repeater ID="rptBPCosting" runat="server">
         <HeaderTemplate>
             <table cellspacing="0" rules="all" border="1" width="100%">
                 <tr>
                     <td colspan="78" align="center" style="font-size: 25px; background-color: Orange">
                        BP Costing
                     </td>
                 </tr>
                 <tr>
                  <th scope="col" rowspan="2" style="width: 90px">
                    SL NO
                    </th>
                    <th scope="col" rowspan="2" style="width: 90px">
                    CUSTOMER NAME
                    </th>
                    <th scope="col" rowspan="2" style="width: 90px">
                    MODEL CODE
                    </th>
                    <th scope="col" rowspan="2" style="width: 90px">
                    CAR NAME
                    </th>
                    <th scope="col" rowspan="2" style="width: 90px">
                    SOP
                    </th>
                    <th scope="col" rowspan="2" style="width: 90px">
                    PRODUCT TYPE
                    </th>
                    <th scope="col" rowspan="2" style="width: 90px">
                    FG PART NUMBER
                    </th>
                    <th scope="col" rowspan="2" style="width: 90px">
                    PART NAME
                    </th>
                    <th scope="col" rowspan="2" style="width: 90px">
                    PART NUMBER
                    </th>

                    <th scope="col" rowspan="2" style="width: 30px">
                        Product Category
                     </th>
                     <th scope="col" rowspan="2" style="width: 30px">
                        Source Category
                     </th>
                     <th scope="col" rowspan="2" style="width: 30px">
                        Material Category
                     </th>
                     <th scope="col" rowspan="2" style="width: 20px">
                    COST CENTER
                    </th>
                    <th scope="col" rowspan="2" style="width: 30px">
                    COST CENTER NAME
                    </th>
                     <th scope="col" style="width: 100px" colspan="11">RAW MATERIAL COST
                    </th>
                      <th scope="col" style="width: 100px" colspan="12">PART COST
                    </th>
                      <th scope="col" rowspan="2" style="width: 10px">
                        Dir Mat cost (INR/assy)
                     </th>
                  
                     <th scope="col"  rowspan="2" style="width: 10px">
                        Lab. rate (INR/s)
                     </th>
                  
                     <th scope="col" rowspan="2" style="width: 10px">
                        Dep. rate (INR/s)
                     </th>
                  
                     <th scope="col"  rowspan="2" style="width: 10px">
                        Exp. rate (INR/s)
                     </th>
                   
                     <th scope="col"  rowspan="2" style="width: 10px">
                        Dir. Proc Cost (INR/assy)
                     </th>
                     <th scope="col"  rowspan="2" style="width: 10px">
                        Direct Cost (INR/assy)
                     </th>
                     <th scope="col"  rowspan="2" style="width: 10px">
                        M/U (INR/assy)
                     </th>
                     <th scope="col"  rowspan="2" style="width: 10px">
                        Mfg cost (INR/assy)
                     </th>
                     <th scope="col"  rowspan="2" style="width: 10px">
                        Inv Ctgy
                     </th>
                     <th scope="col"  rowspan="2" style="width: 10px">
                        Unit price in INR
                     </th>
                     <th scope="col"  rowspan="2" style="width: 10px">
                        Unit landed Cost
                     </th>
                        <th scope="col" rowspan="2" style="width: 40px">APR'16 Model Qty
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">MAY'16 Model Qty
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">JUN'16 Model Qty
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">JUL'16 Model Qty
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">AUG'16 Model Qty
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">SEP'16 Model Qty
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">OCT'16 Model Qty
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">NOV'16 Model Qty
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">DEC'16 Model Qty
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">JAN'17 Model Qty
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">FEB'17 Model Qty
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">MAR'17 Model Qty
                    </th>
                    <%-- <th scope="col" rowspan="2" style="width: 40px">FY16 1st half model qty
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">FY16 2nd half model qty
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">FY2016 TOTAL model qty
                    </th>--%>
                    <th scope="col" rowspan="2" style="width: 40px">Q1 FY17 Model  Qty
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">Q2 FY17 Model  Qty
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">Q3 FY17 Model  Qty
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">Q4 FY17 Model  Qty
                    </th>
                    <%-- <th scope="col" rowspan="2" style="width: 40px">FY17 1st half model qty
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">FY17 2nd half model qty
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">FY2017 TOTAL model qty
                    </th>--%>
                    <th scope="col" rowspan="2" style="width: 40px">Q1 FY18 Model  Qty
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">Q2 FY18 Model  Qty
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">Q3 FY18 Model  Qty
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">Q4 FY18 Model  Qty
                    </th>
                    <th scope="col" rowspan="2" style="width: 40px">STATUS
                    </th>
                     
                  <th scope="col" rowspan="2" style="width: 10px">ACTIONS
                    </th>
                  </tr>
                 <tr>
                     <th scope="col" style="width: 10px">
                        RM Loc Price (INR/kg)
                     </th>
                     <th scope="col" style="width: 10px">
                       RM Loc L/C (INR/pc)
                     </th>
                     <th scope="col" style="width: 10px">
                        RM Loc cost (INR/assy)
                     </th>
                     <th scope="col" style="width: 10px">
                        RM Imp CIF Price (/kg)
                     </th>
                     <th scope="col" style="width: 10px">
                        RM Currency
                     </th>
                     <th scope="col" style="width: 10px">
                        RM Imp Price (INR/pc)
                     </th>
                     <th scope="col" style="width: 10px">
                        RM Imp chrg (INR/pc)
                     </th>
                     <th scope="col" style="width: 10px">
                        RM Imp Price (INR/assy)
                     </th>
                     <th scope="col" style="width: 10px">
                        RM Imp chrg (INR/assy)
                     </th>
                     <th scope="col" style="width: 10px">
                        RM Imp L/C (INR/pc)
                     </th>
                     <th scope="col" style="width: 10px">
                        RM Imp cost (INR/assy)
                     </th>
                     <th scope="col" style="width: 10px">
                        Part Supplier
                     </th>
                     <th scope="col" style="width: 10px">
                        Part Loc Price (INR/pc)
                     </th>
                     <th scope="col" style="width: 10px">
                        Part Loc L/C (INR/pc)
                     </th>
                     <th scope="col" style="width: 10px">
                        Part Loc cost (INR/assy)
                     </th>
                     <th scope="col" style="width: 10px">
                        Part Imp FOB price (/pc)
                     </th>
                     <th scope="col" style="width: 10px">
                        Part Currency
                     </th>
                     <th scope="col" style="width: 10px">
                        Part Imp price (INR/pc)
                     </th>
                     <th scope="col" style="width: 10px">
                        Part Imp chrg (INR/pc)
                     </th>
                     <th scope="col" style="width: 10px">
                       Part Imp price (INR/assy)
                     </th>
                     <th scope="col" style="width: 10px">
                       Part Imp chrg (INR/assy)
                     </th>
                     <th scope="col" style="width: 10px">
                        Part Imp L/C (INR/pc)
                     </th>
                     <th scope="col" style="width: 10px">
                        Part Imp cost (INR/assy)
                     </th>
                 </tr>
         </HeaderTemplate>
         <ItemTemplate>
             <tr>
             <td scope="col" style="width: 30px">
                    <asp:Label ID="lblBPCostingId" runat="server" Text='<%# Eval("BPCostingId") %>' />
                    <asp:TextBox ID="txtBPCostingId" runat="server" Width="30" Text='<%# Eval("BPCostingId") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 90px">
                    <asp:Label ID="lblCustomerName" runat="server" Text='<%# Eval("CUSTOMERNAME") %>' />
                    <asp:TextBox ID="txtCustomerName" runat="server"  Width="90" Text='<%# Eval("CUSTOMERNAME") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 90px">
                    <asp:Label ID="lblModelCode" runat="server" Text='<%# Eval("MODELCODE") %>' />
                    <asp:TextBox ID="txtModelCode" runat="server"  Width="90" Text='<%# Eval("MODELCODE") %>'
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
                    <asp:Label ID="lblProductCategory" runat="server" Text='<%# Eval("ProductCategory") %>' />
                    <asp:TextBox ID="txtProductCategory" runat="server" Width="90" Text='<%# Eval("ProductCategory") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 90px">
                    <asp:Label ID="lblSourceCategory" runat="server" Text='<%# Eval("SourceCategory") %>' />
                    <asp:TextBox ID="txtSourceCategory" runat="server" Width="90" Text='<%# Eval("SourceCategory") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 90px">
                    <asp:Label ID="lblMaterialCategory" runat="server" Text='<%# Eval("MaterialCategory") %>' />
                    <asp:TextBox ID="txtMaterialCategory" runat="server" Width="90" Text='<%# Eval("MaterialCategory") %>'
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
               
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblRMLocPrice" runat="server" Text='<%# Eval("RMLocPrice") %>' />
                     <asp:TextBox ID="txtRMLocPrice" runat="server" Width="30" Text='<%# Eval("RMLocPrice") %>'
                        Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblRMLocLC" runat="server" Text='<%# Eval("RMLocLC") %>' />
                     <asp:TextBox ID="txtRMLocLC" runat="server" Width="30" Text='<%# Eval("RMLocLC") %>' Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblRMLoccost" runat="server" Text='<%# Eval("RMLoccost") %>' />
                     <asp:TextBox ID="txtRMLoccost" runat="server" Width="30" Text='<%# Eval("RMLoccost") %>' Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblRMImpCIFPrice" runat="server" Text='<%# Eval("RMImpCIFPrice") %>' />
                     <asp:TextBox ID="txtRMImpCIFPrice" runat="server" Width="30" Text='<%# Eval("RMImpCIFPrice") %>' Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblRMCurrency" runat="server" Text='<%# Eval("RMCurrency") %>' />
                     <asp:TextBox ID="txtRMCurrency" runat="server" Width="30" Text='<%# Eval("RMCurrency") %>' Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblRMImpPrice_pc" runat="server" Text='<%# Eval("RMImpPrice_pc") %>' />
                     <asp:TextBox ID="txtRMImpPrice_pc" runat="server" Width="30" Text='<%# Eval("RMImpPrice_pc") %>' Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblRMImpchrg_pc" runat="server" Text='<%# Eval("RMImpchrg_pc") %>' />
                     <asp:TextBox ID="txtRMImpchrg_pc" runat="server" Width="30" Text='<%# Eval("RMImpchrg_pc") %>' Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblRMImpPrice_assy" runat="server" Text='<%# Eval("RMImpPrice_assy") %>' />
                     <asp:TextBox ID="txtRMImpPrice_assy" runat="server" Width="30" Text='<%# Eval("RMImpPrice_assy") %>'
                        Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblRMImpchrg_assy" runat="server" Text='<%# Eval("RMImpchrg_assy") %>' />
                     <asp:TextBox ID="txtRMImpchrg_assy" runat="server" Width="30" Text='<%# Eval("RMImpchrg_assy") %>'
                        Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblRMImpLC_pc" runat="server" Text='<%# Eval("RMImpLC_pc") %>' />
                     <asp:TextBox ID="txtRMImpLC_pc" runat="server" Width="30" Text='<%# Eval("RMImpLC_pc") %>'
                        Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblRMImpcost_assy" runat="server" Text='<%# Eval("RMImpcost_assy") %>' />
                     <asp:TextBox ID="txtRMImpcost_assy" runat="server" Width="30" Text='<%# Eval("RMImpcost_assy") %>' Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblPartSupplier" runat="server" Text='<%# Eval("PartSupplier") %>' />
                     <asp:TextBox ID="txtPartSupplier" runat="server" Width="30" Text='<%# Eval("PartSupplier") %>'
                        Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblPartLocPrice_pc" runat="server" Text='<%# Eval("PartLocPrice_pc") %>' />
                     <asp:TextBox ID="txtPartLocPrice_pc" runat="server" Width="30" Text='<%# Eval("PartLocPrice_pc") %>'
                        Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblPartLocLC_pc" runat="server" Text='<%# Eval("PartLocLC_pc") %>' />
                     <asp:TextBox ID="txtPartLocLC_pc" runat="server" Width="30" Text='<%# Eval("PartLocLC_pc") %>'
                        Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblPartLoccost_assy" runat="server" Text='<%# Eval("PartLoccost_assy") %>' />
                     <asp:TextBox ID="txtPartLoccost_assy" runat="server" Width="30" Text='<%# Eval("PartLoccost_assy") %>'
                        Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblPartImpFOBprice_pc" runat="server" Text='<%# Eval("PartImpFOBprice_pc") %>' />
                     <asp:TextBox ID="txtPartImpFOBprice_pc" runat="server" Width="30" Text='<%# Eval("PartImpFOBprice_pc") %>'
                        Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblPartCurrency" runat="server" Text='<%# Eval("PartCurrency") %>' />
                     <asp:TextBox ID="txtPartCurrency" runat="server" Width="30" Text='<%# Eval("PartCurrency") %>'
                        Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblPartImpprice_pc" runat="server" Text='<%# Eval("PartImpprice_pc") %>' />
                     <asp:TextBox ID="txtPartImpprice_pc" runat="server" Width="30" Text='<%# Eval("PartImpprice_pc") %>'
                        Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblPartImpchrg_pc" runat="server" Text='<%# Eval("PartImpchrg_pc") %>' />
                     <asp:TextBox ID="txtPartImpchrg_pc" runat="server" Width="30" Text='<%# Eval("PartImpchrg_pc") %>'
                        Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblPartImpprice_assy" runat="server" Text='<%# Eval("PartImpprice_assy") %>' />
                     <asp:TextBox ID="txtPartImpprice_assy" runat="server" Width="30" Text='<%# Eval("PartImpprice_assy") %>'
                        Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblPartImpchrg_assy" runat="server" Text='<%# Eval("PartImpchrg_assy") %>' />
                     <asp:TextBox ID="txtPartImpchrg_assy" runat="server" Width="30" Text='<%# Eval("PartImpchrg_assy") %>'
                        Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblPartImpLC_pc" runat="server" Text='<%# Eval("PartImpLC_pc") %>' />
                     <asp:TextBox ID="txtPartImpLC_pc" runat="server" Width="30" Text='<%# Eval("PartImpLC_pc") %>'
                        Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblPartImpcost_assy" runat="server" Text='<%# Eval("PartImpcost_assy") %>' />
                     <asp:TextBox ID="txtPartImpcost_assy" runat="server" Width="30" Text='<%# Eval("PartImpcost_assy") %>'
                        Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblDirMatcost_assy" runat="server" Text='<%# Eval("DirMatcost_assy") %>' />
                     <asp:TextBox ID="txtDirMatcost_assy" runat="server" Width="30" Text='<%# Eval("DirMatcost_assy") %>'
                        Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblLabrate_S" runat="server" Text='<%# Eval("Labrate_S") %>' />
                     <asp:TextBox ID="txtLabrate_S" runat="server" Width="30" Text='<%# Eval("Labrate_S") %>'
                        Visible="false" />
                 </td>
             
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblDeprate_S" runat="server" Text='<%# Eval("Deprate_S") %>' />
                     <asp:TextBox ID="txtDeprate_S" runat="server" Width="30" Text='<%# Eval("Deprate_S") %>'
                        Visible="false" />
                 </td>
               
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblExprate_S" runat="server" Text='<%# Eval("Exprate_S") %>' />
                     <asp:TextBox ID="txtExprate_S" runat="server" Width="30" Text='<%# Eval("Exprate_S") %>'
                        Visible="false" />
                 </td>
                <%-- <td scope="col" style="width: 10px">
                     <asp:Label ID="lblExpcost_assy" runat="server" Text='<%# Eval("Expcost_assy") %>' />
                     <asp:TextBox ID="txtExpcost_assy" runat="server" Width="30" Text='<%# Eval("Expcost_assy") %>'
                        Visible="false" />
                 </td>--%>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblDirProcCost_assy" runat="server" Text='<%# Eval("DirProcCost_assy") %>' />
                     <asp:TextBox ID="txtDirProcCost_assy" runat="server" Width="30" Text='<%# Eval("DirProcCost_assy") %>'
                        Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblDirectCost_assy" runat="server" Text='<%# Eval("DirectCost_assy") %>' />
                     <asp:TextBox ID="txtDirectCost_assy" runat="server" Width="30" Text='<%# Eval("DirectCost_assy") %>'
                        Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblMU_assy" runat="server" Text='<%# Eval("MU_assy") %>' />
                     <asp:TextBox ID="txtMU_assy" runat="server" Width="30" Text='<%# Eval("MU_assy") %>'
                        Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblMfgcost_assy" runat="server" Text='<%# Eval("Mfgcost_assy") %>' />
                     <asp:TextBox ID="txtMfgcost_assy" runat="server" Width="30" Text='<%# Eval("Mfgcost_assy") %>'
                        Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblInvCtgy" runat="server" Text='<%# Eval("InvCtgy") %>' />
                     <asp:TextBox ID="txtInvCtgy" runat="server" Width="30" Text='<%# Eval("InvCtgy") %>'
                        Visible="false" />
                 </td>
               <td scope="col" style="width: 10px">
                     <asp:Label ID="lblUnitPriceInr" runat="server" Text='<%# Eval("UnitPriceInr") %>' />
                     <asp:TextBox ID="txtUnitPriceInr" runat="server" Width="30" Text='<%# Eval("UnitPriceInr") %>'
                        Visible="false" />
                 </td>
                 <td scope="col" style="width: 10px">
                     <asp:Label ID="lblUnitLandedCost" runat="server" Text='<%# Eval("UnitLandedCost") %>' />
                     <asp:TextBox ID="txtUnitLandedCost" runat="server" Width="30" Text='<%# Eval("UnitLandedCost") %>'
                        Visible="false" />
                 </td>
                 <td scope="col" style="width: 90px">
                    <asp:Label ID="lblModelApr16" runat="server" Text='<%# Eval("ModelApr16") %>' />
                    <asp:TextBox ID="txtModelApr16" runat="server" Width="90" Text='<%# Eval("ModelApr16") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 90px">
                    <asp:Label ID="lblModelMay16" runat="server" Text='<%# Eval("ModelMay16") %>' />
                    <asp:TextBox ID="txtModelMay16" runat="server" Width="90" Text='<%# Eval("ModelMay16") %>'
                        Visible="false" />
                </td>
            
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblModeljun16" runat="server" Text='<%# Eval("Modeljun16") %>' />
                    <asp:TextBox ID="txtModeljun16" runat="server" Width="40" Text='<%# Eval("Modeljun16") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 30px">
                    <asp:Label ID="lblModeljul16" runat="server" Text='<%# Eval("Modeljul16") %>' />
                    <asp:TextBox ID="txtModeljul16" runat="server" Width="40" Text='<%# Eval("Modeljul16") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 30px">
                    <asp:Label ID="lblModelaug16" runat="server" Text='<%# Eval("Modelaug16") %>' />
                    <asp:TextBox ID="txtModelaug16" runat="server" Width="50" Text='<%# Eval("Modelaug16") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 30px">
                    <asp:Label ID="lblModelsep16" runat="server" Text='<%# Eval("Modelsep16") %>' />
                    <asp:TextBox ID="txtModelsep16" runat="server" Width="30" Text='<%# Eval("Modelsep16") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 30px">
                    <asp:Label ID="lblModeloct16" runat="server" Text='<%# Eval("Modeloct16") %>' />
                    <asp:TextBox ID="txtModeloct16" runat="server" Width="50" Text='<%# Eval("Modeloct16") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 50px">
                    <asp:Label ID="lblModelNov16" runat="server" Text='<%# Eval("ModelNov16") %>' />
                    <asp:TextBox ID="txtModelNov16" runat="server" Width="50" Text='<%# Eval("ModelNov16") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 20px">
                    <asp:Label ID="lblModelDec16" runat="server" Text='<%# Eval("ModelDec16") %>' />
                    <asp:TextBox ID="txtModelDec16" runat="server" Width="50" Text='<%# Eval("ModelDec16") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 60px">
                    <asp:Label ID="lblModelJan17" runat="server" Text='<%# Eval("ModelJan17") %>' />
                    <asp:TextBox ID="txtModelJan17" runat="server" Width="60" Text='<%# Eval("ModelJan17") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblModelFeb17" runat="server" Text='<%# Eval("ModelFeb17") %>' />
                    <asp:TextBox ID="txtModelFeb17" runat="server" Width="50" Text='<%# Eval("ModelFeb17") %>'
                        Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblModelMar17" runat="server" Text='<%# Eval("ModelMar17") %>' />
                    <asp:TextBox ID="txtModelMar17" runat="server" Width="30" Text='<%# Eval("ModelMar17") %>' Visible="false" />
                </td>
               <td scope="col" style="width: 10px">
                    <asp:Label ID="lblModelQ1FY17" runat="server" Text='<%# Eval("ModelQ1FY17") %>' />
                    <asp:TextBox ID="txtModelQ1FY17" runat="server" Width="30" Text='<%# Eval("ModelQ1FY17") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblModelQ2FY17" runat="server" Text='<%# Eval("ModelQ2FY17") %>' />
                    <asp:TextBox ID="txtModelQ2FY17" runat="server" Width="30" Text='<%# Eval("ModelQ2FY17") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblModelQ3FY17" runat="server" Text='<%# Eval("ModelQ3FY17") %>' />
                    <asp:TextBox ID="txtModelQ3FY17" runat="server" Width="30" Text='<%# Eval("ModelQ3FY17") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblModelQ4FY17" runat="server" Text='<%# Eval("ModelQ4FY17") %>' />
                    <asp:TextBox ID="txtModelQ4FY17" runat="server" Width="30" Text='<%# Eval("ModelQ4FY17") %>' Visible="false" />
                </td>
              

                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblModelQ1FY18" runat="server" Text='<%# Eval("ModelQ1FY18") %>' />
                    <asp:TextBox ID="txtModelQ1FY18" runat="server" Width="30" Text='<%# Eval("ModelQ1FY18") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblModelQ2FY18" runat="server" Text='<%# Eval("ModelQ2FY18") %>' />
                    <asp:TextBox ID="txtModelQ2FY18" runat="server" Width="30" Text='<%# Eval("ModelQ2FY18") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblModelQ3FY18" runat="server" Text='<%# Eval("ModelQ3FY18") %>' />
                    <asp:TextBox ID="txtModelQ3FY18" runat="server" Width="30" Text='<%# Eval("ModelQ3FY18") %>' Visible="false" />
                </td>
                <td scope="col" style="width: 10px">
                    <asp:Label ID="lblModelQ4FY18" runat="server" Text='<%# Eval("ModelQ4FY18") %>' />
                    <asp:TextBox ID="txtModelQ4FY18" runat="server" Width="30" Text='<%# Eval("ModelQ4FY18") %>' Visible="false" />
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