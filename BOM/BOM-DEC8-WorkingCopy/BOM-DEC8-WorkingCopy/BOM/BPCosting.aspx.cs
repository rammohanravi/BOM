using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BOM
{
    public partial class BPCosting : System.Web.UI.Page
    {
        public string SelectedVehicleTypeID
        {
            get
            {
                if (Request.QueryString["id"] == null)
                    return "0";
                else
                    return Request.QueryString["id"].ToString();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRepeater();
            }
        }

        protected void OnEdit(object sender, EventArgs e)
        {//Find the reference of the Repeater Item.
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            this.ToggleElements(item, true);
        }

        private void ToggleElements(RepeaterItem item, bool isEdit)
        {
            //Toggle Buttons.
            item.FindControl("lnkEdit").Visible = !isEdit;
            item.FindControl("lnkUpdate").Visible = isEdit;
            item.FindControl("lnkCancel").Visible = isEdit;
            item.FindControl("lnkDelete").Visible = !isEdit;

            //Toggle Labels.


            item.FindControl("lblBPCostingId").Visible = !isEdit;
            item.FindControl("lblCustomerName").Visible = !isEdit;
            item.FindControl("lblModelCode").Visible = !isEdit;
            item.FindControl("lblCarName").Visible = !isEdit;
            item.FindControl("lblSOP").Visible = !isEdit;
            item.FindControl("lblProductType").Visible = !isEdit;
            item.FindControl("lblFGPartNo").Visible = !isEdit;
            item.FindControl("lblPartName").Visible = !isEdit;
            item.FindControl("lblPartNo").Visible = !isEdit;
            item.FindControl("lblCOSTCENTER").Visible = !isEdit;
            item.FindControl("lblCOSTCENTERNAME").Visible = !isEdit;
            item.FindControl("lblRMLocPrice").Visible = !isEdit;
            item.FindControl("lblRMLocLC").Visible = !isEdit;
            item.FindControl("lblRMLoccost").Visible = !isEdit;
            item.FindControl("lblRMImpCIFPrice").Visible = !isEdit;
            item.FindControl("lblRMCurrency").Visible = !isEdit;
            item.FindControl("lblRMImpPrice_pc").Visible = !isEdit;
            item.FindControl("lblRMImpchrg_pc").Visible = !isEdit;
            item.FindControl("lblRMImpPrice_assy").Visible = !isEdit;
            item.FindControl("lblRMImpchrg_assy").Visible = !isEdit;
            item.FindControl("lblRMImpLC_pc").Visible = !isEdit;
            item.FindControl("lblRMImpcost_assy").Visible = !isEdit;
            item.FindControl("lblPartSupplier").Visible = !isEdit;
            item.FindControl("lblPartLocPrice_pc").Visible = !isEdit;
            item.FindControl("lblPartLocLC_pc").Visible = !isEdit;
            item.FindControl("lblPartLoccost_assy").Visible = !isEdit;
            item.FindControl("lblPartImpFOBprice_pc").Visible = !isEdit;
            item.FindControl("lblPartCurrency").Visible = !isEdit;
            item.FindControl("lblPartImpprice_pc").Visible = !isEdit;
            item.FindControl("lblPartImpchrg_pc").Visible = !isEdit;
          
            item.FindControl("lblPartImpprice_assy").Visible = !isEdit;
            item.FindControl("lblPartImpchrg_assy").Visible = !isEdit;
            item.FindControl("lblPartImpLC_pc").Visible = !isEdit;
            item.FindControl("lblPartImpcost_assy").Visible = !isEdit;
            item.FindControl("lblDirMatcost_assy").Visible = !isEdit;
            item.FindControl("lblLabrate_S").Visible = !isEdit;
            item.FindControl("lblDeprate_S").Visible = !isEdit;
            item.FindControl("lblExprate_S").Visible = !isEdit;
           // item.FindControl("lblExpcost_assy").Visible = !isEdit;
            item.FindControl("lblDirProcCost_assy").Visible = !isEdit;
            item.FindControl("lblDirectCost_assy").Visible = !isEdit;
            item.FindControl("lblMU_assy").Visible = !isEdit;
            item.FindControl("lblMfgcost_assy").Visible = !isEdit;
            item.FindControl("lblInvCtgy").Visible = !isEdit;
            item.FindControl("lblUnitPriceInr").Visible = !isEdit;
            item.FindControl("lblUnitLandedCost").Visible = !isEdit;
            item.FindControl("lblProductCategory").Visible = !isEdit;
            item.FindControl("lblMaterialCategory").Visible = !isEdit;
            item.FindControl("lblSourceCategory").Visible = !isEdit;
            // New Columns
            item.FindControl("lblModelApr16").Visible = !isEdit;
            item.FindControl("lblModelMay16").Visible = !isEdit;
            item.FindControl("lblModeljun16").Visible = !isEdit;
            item.FindControl("lblModeljul16").Visible = !isEdit;
            item.FindControl("lblModelaug16").Visible = !isEdit;
            item.FindControl("lblModelsep16").Visible = !isEdit;
            item.FindControl("lblModeloct16").Visible = !isEdit;
            item.FindControl("lblModelNov16").Visible = !isEdit;
            item.FindControl("lblModelDec16").Visible = !isEdit;
            item.FindControl("lblModelJan17").Visible = !isEdit;
            item.FindControl("lblModelFeb17").Visible = !isEdit;
            item.FindControl("lblModelMar17").Visible = !isEdit;
            //item.FindControl("lblModelFirstFY16").Visible = !isEdit;
            //item.FindControl("lblModelSecondFY16").Visible = !isEdit;
            //item.FindControl("lblModelTotalFY16").Visible = !isEdit;
            item.FindControl("lblModelQ1FY17").Visible = !isEdit;
            item.FindControl("lblModelQ2FY17").Visible = !isEdit;
            item.FindControl("lblModelQ3FY17").Visible = !isEdit;
            item.FindControl("lblModelQ4FY17").Visible = !isEdit;
            //item.FindControl("lblModelFirstFY17").Visible = !isEdit;
            //item.FindControl("lblModelSecondFY17").Visible = !isEdit;
            //item.FindControl("lblModelTotalFY17").Visible = !isEdit;
            item.FindControl("lblModelQ1FY18").Visible = !isEdit;
            item.FindControl("lblModelQ2FY18").Visible = !isEdit;
            item.FindControl("lblModelQ3FY18").Visible = !isEdit;
            item.FindControl("lblModelQ4FY18").Visible = !isEdit;
            item.FindControl("lblStatus").Visible = !isEdit;
            //item.FindControl("lblModelSecondFY18").Visible = !isEdit;
            //item.FindControl("lblModelTotalFY18").Visible = !isEdit;

            //Toggle TextBoxes.
            item.FindControl("txtBPCostingId").Visible = isEdit;
            item.FindControl("txtCustomerName").Visible = isEdit;
            item.FindControl("txtModelCode").Visible = isEdit;
            item.FindControl("txtCarName").Visible = isEdit;
            item.FindControl("txtSOP").Visible = isEdit;
            item.FindControl("txtProductType").Visible = isEdit;
            item.FindControl("txtFGPartNo").Visible = isEdit;
            item.FindControl("txtPartName").Visible = isEdit;
            item.FindControl("txtPartNo").Visible = isEdit;
            item.FindControl("txtProductCategory").Visible = isEdit;
            item.FindControl("txtSourceCategory").Visible = isEdit;
            item.FindControl("txtMaterialCategory").Visible = isEdit;
            item.FindControl("txtCOSTCENTER").Visible = isEdit;
            item.FindControl("txtCOSTCENTERNAME").Visible = isEdit;
            
            //item.FindControl("TextBox2").Visible = isEdit;
            item.FindControl("txtRMLocPrice").Visible = isEdit;
            item.FindControl("txtRMLocLC").Visible = isEdit;
            item.FindControl("txtRMImpCIFPrice").Visible = isEdit;
            item.FindControl("txtRMLoccost").Visible = isEdit;
            item.FindControl("txtRMCurrency").Visible = isEdit;
            item.FindControl("txtRMImpPrice_pc").Visible = isEdit;
            item.FindControl("txtRMImpchrg_pc").Visible = isEdit;
            item.FindControl("txtRMImpPrice_assy").Visible = isEdit;
            item.FindControl("txtRMImpchrg_assy").Visible = isEdit;
            item.FindControl("txtRMImpLC_pc").Visible = isEdit;
            item.FindControl("txtRMImpcost_assy").Visible = isEdit;
            item.FindControl("txtPartSupplier").Visible = isEdit;
            item.FindControl("txtPartLocPrice_pc").Visible = isEdit;
            item.FindControl("txtPartLocLC_pc").Visible = isEdit;
            item.FindControl("txtPartLoccost_assy").Visible = isEdit;
            item.FindControl("txtPartImpFOBprice_pc").Visible = isEdit;
            item.FindControl("txtPartCurrency").Visible = isEdit;
            item.FindControl("txtPartImpprice_pc").Visible = isEdit;

            item.FindControl("txtPartImpchrg_pc").Visible = isEdit;
            item.FindControl("txtPartImpprice_assy").Visible = isEdit;
            item.FindControl("txtPartImpchrg_assy").Visible = isEdit;
            item.FindControl("txtPartImpLC_pc").Visible = isEdit;
            item.FindControl("txtPartImpcost_assy").Visible = isEdit;
            item.FindControl("txtDirMatcost_assy").Visible = isEdit;
            item.FindControl("txtLabrate_S").Visible = isEdit;
            item.FindControl("txtDeprate_S").Visible = isEdit;
            item.FindControl("txtExprate_S").Visible = isEdit;
            //item.FindControl("txtExpcost_assy").Visible = isEdit;
            item.FindControl("txtDirProcCost_assy").Visible = isEdit;
            item.FindControl("txtDirectCost_assy").Visible = isEdit;
            item.FindControl("txtMU_assy").Visible = isEdit;
            item.FindControl("txtMfgcost_assy").Visible = isEdit;
            item.FindControl("txtInvCtgy").Visible = isEdit;
            item.FindControl("txtUnitLandedCost").Visible = isEdit;
            item.FindControl("txtUnitPriceInr").Visible = isEdit;

            // New Columns

            item.FindControl("txtModelApr16").Visible = isEdit;
item.FindControl("txtModelMay16").Visible = isEdit;
item.FindControl("txtModeljun16").Visible = isEdit;
item.FindControl("txtModeljul16").Visible = isEdit;
item.FindControl("txtModelaug16").Visible = isEdit;
item.FindControl("txtModelsep16").Visible = isEdit;
item.FindControl("txtModeloct16").Visible = isEdit;
item.FindControl("txtModelNov16").Visible = isEdit;
item.FindControl("txtModelDec16").Visible = isEdit;
item.FindControl("txtModelJan17").Visible = isEdit;
item.FindControl("txtModelFeb17").Visible = isEdit;
item.FindControl("txtModelMar17").Visible = isEdit;
//item.FindControl("txtModelFirstFY16").Visible = isEdit;
//item.FindControl("txtModelSecondFY16").Visible = isEdit;
//item.FindControl("txtModelTotalFY16").Visible = isEdit;
item.FindControl("txtModelQ1FY17").Visible = isEdit;
item.FindControl("txtModelQ2FY17").Visible = isEdit;
item.FindControl("txtModelQ3FY17").Visible = isEdit;
item.FindControl("txtModelQ4FY17").Visible = isEdit;
//item.FindControl("txtModelFirstFY17").Visible = isEdit;
//item.FindControl("txtModelSecondFY17").Visible = isEdit;
//item.FindControl("txtModelTotalFY17").Visible = isEdit;
item.FindControl("txtModelQ1FY18").Visible = isEdit;
item.FindControl("txtModelQ2FY18").Visible = isEdit;
item.FindControl("txtModelQ3FY18").Visible = isEdit;
item.FindControl("txtModelQ4FY18").Visible = isEdit;
item.FindControl("ddlStatus").Visible = isEdit;
//item.FindControl("txtModelSecondFY18").Visible = isEdit;
//item.FindControl("txtModelTotalFY18").Visible = isEdit;

        }

        protected void OnUpdate(object sender, EventArgs e)
        {
            int BPCostingId;
            //Find the reference of the Repeater Item.
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            if ((item.FindControl("lblBPCostingId") as Label).Text == string.Empty)
            {
                BPCostingId = 0;
            }
            else
            {
                BPCostingId = int.Parse((item.FindControl("lblBPCostingId") as Label).Text);
            }

            //string Designid = ((item.FindControl("txtBPCostingId") as TextBox).Text);
            string CustomerName = ((item.FindControl("txtCustomerName") as TextBox).Text);
            string ModelCode = ((item.FindControl("txtModelCode") as TextBox).Text);
            string CarName = ((item.FindControl("txtCarName") as TextBox).Text);
            string SOP = ((item.FindControl("txtSOP") as TextBox).Text);
            string ProductType = ((item.FindControl("txtProductType") as TextBox).Text);
            string FGPartNo = ((item.FindControl("txtFGPartNo") as TextBox).Text);
            string PartName = ((item.FindControl("txtPartName") as TextBox).Text);
            string PartNo = ((item.FindControl("txtPartNo") as TextBox).Text);

            string ProductCategory = ((item.FindControl("txtProductCategory") as TextBox).Text);
            string SourceCategory = ((item.FindControl("txtSourceCategory") as TextBox).Text);
            string MaterialCategory = ((item.FindControl("txtMaterialCategory") as TextBox).Text);
            string COSTCENTER = ((item.FindControl("txtCOSTCENTER") as TextBox).Text);
            string COSTCENTERNAME = ((item.FindControl("txtCOSTCENTERNAME") as TextBox).Text);
            //string RMsupplier = ((item.FindControl("TextBox2") as TextBox).Text);
            string RMLocPrice = ((item.FindControl("txtRMLocPrice") as TextBox).Text);
            string RMLocLC = ((item.FindControl("txtRMLocLC") as TextBox).Text);
            string RMLoccost = ((item.FindControl("txtRMLoccost") as TextBox).Text);
            string RMImpCIFPrice = ((item.FindControl("txtRMImpCIFPrice") as TextBox).Text);
            string RMCurrency = ((item.FindControl("txtRMCurrency") as TextBox).Text);
            string RMImpPrice_pc = ((item.FindControl("txtRMImpPrice_pc") as TextBox).Text);
            string RMImpchrg_pc = ((item.FindControl("txtRMImpchrg_pc") as TextBox).Text);
            string RMImpPrice_assy = ((item.FindControl("txtRMImpPrice_assy") as TextBox).Text);
            string RMImpchrg_assy = ((item.FindControl("txtRMImpchrg_assy") as TextBox).Text);
            string RMImpLC_pc = ((item.FindControl("txtRMImpLC_pc") as TextBox).Text);
            string RMImpcost_assy = ((item.FindControl("txtRMImpcost_assy") as TextBox).Text);
            string PartSupplier = ((item.FindControl("txtPartSupplier") as TextBox).Text);
            string PartLocPrice_pc = ((item.FindControl("txtPartLocPrice_pc") as TextBox).Text);
            string PartLocLC_pc = ((item.FindControl("txtPartLocLC_pc") as TextBox).Text);
            string PartLoccost_assy = ((item.FindControl("txtPartLoccost_assy") as TextBox).Text);
            string PartImpFOBprice_pc = ((item.FindControl("txtPartImpFOBprice_pc") as TextBox).Text);
            string PartCurrency = ((item.FindControl("txtPartCurrency") as TextBox).Text);
            string PartImpprice_pc = ((item.FindControl("txtPartImpprice_pc") as TextBox).Text);
            string PartImpchrg_pc = ((item.FindControl("txtPartImpchrg_pc") as TextBox).Text);
            string PartImpprice_assy = ((item.FindControl("txtPartImpprice_assy") as TextBox).Text);
            string PartImpchrg_assy = ((item.FindControl("txtPartImpchrg_assy") as TextBox).Text);
            string PartImpLC_pc = ((item.FindControl("txtPartImpLC_pc") as TextBox).Text);
            string PartImpcost_assy = ((item.FindControl("txtPartImpcost_assy") as TextBox).Text);
            string DirMatcost_assy = ((item.FindControl("txtDirMatcost_assy") as TextBox).Text);
            string Labrate_S = ((item.FindControl("txtLabrate_S") as TextBox).Text);
            string Deprate_S = ((item.FindControl("txtDeprate_S") as TextBox).Text);
            string Exprate_S = ((item.FindControl("txtExprate_S") as TextBox).Text);
            string DirProcCost_assy = ((item.FindControl("txtDirProcCost_assy") as TextBox).Text);
            string DirectCost_assy = ((item.FindControl("txtDirectCost_assy") as TextBox).Text);
            string MU_assy = ((item.FindControl("txtMU_assy") as TextBox).Text);
            string Mfgcost_assy = ((item.FindControl("txtMfgcost_assy") as TextBox).Text);
            string InvCtgy = ((item.FindControl("txtInvCtgy") as TextBox).Text);
            string UnitLandedCost = ((item.FindControl("txtUnitLandedCost") as TextBox).Text);
            string UnitPriceInr = ((item.FindControl("txtUnitPriceInr") as TextBox).Text);

            string ModelApr16 = ((item.FindControl("txtModelApr16") as TextBox).Text);
            string ModelMay16 = ((item.FindControl("txtModelMay16") as TextBox).Text);
            string Modeljun16 = ((item.FindControl("txtModeljun16") as TextBox).Text);
            string Modeljul16 = ((item.FindControl("txtModeljul16") as TextBox).Text);
            string Modelaug16 = ((item.FindControl("txtModelaug16") as TextBox).Text);
            string ModelSep16 = ((item.FindControl("txtModelsep16") as TextBox).Text);
            string Modeloct16 = ((item.FindControl("txtModeloct16") as TextBox).Text);
            string Modelnov16 = ((item.FindControl("txtModelNov16") as TextBox).Text);
            string Modeldec16 = ((item.FindControl("txtModelDec16") as TextBox).Text);
            string Modeljan17 = ((item.FindControl("txtModelJan17") as TextBox).Text);
            string ModelFeb17 = ((item.FindControl("txtModelFeb17") as TextBox).Text);
            string ModelMar17 = ((item.FindControl("txtModelMar17") as TextBox).Text);

            //string ModelFirstFY16 = ((item.FindControl("txtModelFirstFY16") as TextBox).Text);
            string ModelFirstFY16 = (Convert.ToInt32(ModelApr16) + Convert.ToInt32(ModelMay16)
               + Convert.ToInt32(Modeljun16) + Convert.ToInt32(Modeljul16)
               + Convert.ToInt32(Modelaug16) + Convert.ToInt32(ModelSep16)).ToString();
            //string ModelSecondFY16 = ((item.FindControl("txtModelSecondFY16") as TextBox).Text);
            string ModelSecondFY16 = (Convert.ToInt32(Modeloct16) + Convert.ToInt32(Modelnov16)
               + Convert.ToInt32(Modeldec16) + Convert.ToInt32(Modeljan17)
               + Convert.ToInt32(ModelFeb17) + Convert.ToInt32(ModelMar17)).ToString();
            //string ModelTotalFY16 = ((item.FindControl("txtModelTotalFY16") as TextBox).Text);
            string ModelTotalFY16 = (Convert.ToInt32(ModelSecondFY16)+Convert.ToInt32(ModelFirstFY16)).ToString();

            string ModelQ1FY17 = ((item.FindControl("txtModelQ1FY17") as TextBox).Text);
            string ModelQ2FY17 = ((item.FindControl("txtModelQ2FY17") as TextBox).Text);
            string ModelQ3FY17 = ((item.FindControl("txtModelQ3FY17") as TextBox).Text);
            string ModelQ4FY17 = ((item.FindControl("txtModelQ4FY17") as TextBox).Text);
            //string ModelFirstFY17 = ((item.FindControl("txtModelFirstFY17") as TextBox).Text);
            string ModelFirstFY17 = (Convert.ToInt32(ModelQ1FY17) + Convert.ToInt32(ModelQ2FY17)).ToString();
            //string ModelSecondFY17 = ((item.FindControl("txtModelSecondFY17") as TextBox).Text);
            string ModelSecondFY17 = (Convert.ToInt32(ModelQ3FY17) + Convert.ToInt32(ModelQ4FY17)).ToString();
            //string ModelTotalFY17 = ((item.FindControl("txtModelTotalFY17") as TextBox).Text);
            string ModelTotalFY17 = (Convert.ToInt32(ModelFirstFY17) + Convert.ToInt32(ModelSecondFY17)).ToString();

            string ModelQ1FY18 = ((item.FindControl("txtModelQ1FY18") as TextBox).Text);
            string ModelQ2FY18 = ((item.FindControl("txtModelQ2FY18") as TextBox).Text);
            string ModelQ3FY18 = ((item.FindControl("txtModelQ3FY18") as TextBox).Text);
            string ModelQ4FY18 = ((item.FindControl("txtModelQ4FY18") as TextBox).Text);
            //string ModelFirstFY18 = ((item.FindControl("txtModelFirstFY18") as TextBox).Text);
            string ModelFirstFY18 = (Convert.ToInt32(ModelQ1FY18) + Convert.ToInt32(ModelQ2FY18)).ToString();
            //string ModelSecondFY18 = ((item.FindControl("txtModelSecondFY18") as TextBox).Text);
            string ModelSecondFY18 = (Convert.ToInt32(ModelQ3FY18) + Convert.ToInt32(ModelQ4FY18)).ToString();
            //string ModelTotalFY18 = ((item.FindControl("txtModelTotalFY18") as TextBox).Text);
            string ModelTotalFY18 = (Convert.ToInt32(ModelFirstFY18) + Convert.ToInt32(ModelSecondFY18)).ToString();

            string Status = ((item.FindControl("ddlStatus") as DropDownList).SelectedValue);

            string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("BPCosting_CRUD"))
                {
                    try
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Action", "UPDATE");

                        cmd.Parameters.AddWithValue("@BPCostingId", BPCostingId);
                        cmd.Parameters.AddWithValue("@CustomerName", CustomerName);
                        cmd.Parameters.AddWithValue("@ModelCode", ModelCode);
                        cmd.Parameters.AddWithValue("@CarName", CarName);
                        cmd.Parameters.AddWithValue("@SOP", SOP);
                        cmd.Parameters.AddWithValue("@ProductType", ProductType);
                        cmd.Parameters.AddWithValue("@FGPartNo", FGPartNo);
                        cmd.Parameters.AddWithValue("@PartName", PartName);
                        cmd.Parameters.AddWithValue("@PartNo", PartNo);
                        cmd.Parameters.AddWithValue("@ProductCategory", ProductCategory);
                        cmd.Parameters.AddWithValue("@SourceCategory", SourceCategory);
                        cmd.Parameters.AddWithValue("@MaterialCategory", MaterialCategory);
                        cmd.Parameters.AddWithValue("@COSTCENTER", COSTCENTER);
                        cmd.Parameters.AddWithValue("@COSTCENTERNAME", COSTCENTERNAME);
                        cmd.Parameters.AddWithValue("@RMLocPrice", RMLocPrice);
                        cmd.Parameters.AddWithValue("@RMLocLC", RMLocLC);
                        cmd.Parameters.AddWithValue("@RMLoccost", RMLoccost);
                        cmd.Parameters.AddWithValue("@RMImpCIFPrice", RMImpCIFPrice);
                        cmd.Parameters.AddWithValue("@RMCurrency", RMCurrency);
                        cmd.Parameters.AddWithValue("@RMImpPrice_pc", RMImpPrice_pc);
                        cmd.Parameters.AddWithValue("@RMImpchrg_pc", RMImpchrg_pc);
                        cmd.Parameters.AddWithValue("@RMImpPrice_assy", RMImpPrice_assy);
                        cmd.Parameters.AddWithValue("@RMImpchrg_assy", RMImpchrg_assy);
                        cmd.Parameters.AddWithValue("@RMImpLC_pc", RMImpLC_pc);
                        cmd.Parameters.AddWithValue("@RMImpcost_assy", RMImpcost_assy);
                        cmd.Parameters.AddWithValue("@PartSupplier", PartSupplier);
                        cmd.Parameters.AddWithValue("@PartLocPrice_pc", PartLocPrice_pc);
                        cmd.Parameters.AddWithValue("@PartLocLC_pc", PartLocLC_pc);
                        cmd.Parameters.AddWithValue("@PartLoccost_assy", PartLoccost_assy);
                        cmd.Parameters.AddWithValue("@PartImpFOBprice_pc", PartImpFOBprice_pc);
                        cmd.Parameters.AddWithValue("@PartCurrency", PartCurrency);
                        cmd.Parameters.AddWithValue("@PartImpprice_pc", PartImpprice_pc);
                        cmd.Parameters.AddWithValue("@PartImpchrg_pc", PartImpchrg_pc);
                        cmd.Parameters.AddWithValue("@PartImpprice_assy", PartImpprice_assy);
                        cmd.Parameters.AddWithValue("@PartImpchrg_assy", PartImpchrg_assy);
                        cmd.Parameters.AddWithValue("@PartImpLC_pc", PartImpLC_pc);
                        cmd.Parameters.AddWithValue("@PartImpcost_assy", PartImpcost_assy);
                        cmd.Parameters.AddWithValue("@DirMatcost_assy", DirMatcost_assy);
                        cmd.Parameters.AddWithValue("@Labrate_S", Labrate_S);
                        cmd.Parameters.AddWithValue("@Deprate_S", Deprate_S);
                        cmd.Parameters.AddWithValue("@Exprate_S", Exprate_S);
                        cmd.Parameters.AddWithValue("@DirProcCost_assy", DirProcCost_assy);
                        cmd.Parameters.AddWithValue("@DirectCost_assy", DirectCost_assy);
                        cmd.Parameters.AddWithValue("@MU_assy", MU_assy);
                        cmd.Parameters.AddWithValue("@Mfgcost_assy", Mfgcost_assy);
                        cmd.Parameters.AddWithValue("@InvCtgy", InvCtgy);
                        cmd.Parameters.AddWithValue("@UnitPriceInr", UnitPriceInr);
                        cmd.Parameters.AddWithValue("@UnitLandedCost", UnitLandedCost);

                        cmd.Parameters.AddWithValue("@ModelApr16", ModelApr16);
                        cmd.Parameters.AddWithValue("@ModelMay16", ModelMay16);
                        cmd.Parameters.AddWithValue("@Modeljun16", Modeljun16);
                        cmd.Parameters.AddWithValue("@Modeljul16", Modeljul16);
                        cmd.Parameters.AddWithValue("@Modelaug16", Modelaug16);
                        cmd.Parameters.AddWithValue("@Modelsep16", ModelSep16);
                        cmd.Parameters.AddWithValue("@Modeloct16", Modeloct16);
                        cmd.Parameters.AddWithValue("@ModelNov16", Modelnov16);
                        cmd.Parameters.AddWithValue("@ModelDec16", Modeldec16);
                        cmd.Parameters.AddWithValue("@ModelJan17", Modeljan17);
                        cmd.Parameters.AddWithValue("@ModelFeb17", ModelFeb17);
                        cmd.Parameters.AddWithValue("@ModelMar17", ModelMar17);
                        cmd.Parameters.AddWithValue("@ModelFirstFY16", ModelFirstFY16);
                        cmd.Parameters.AddWithValue("@ModelSecondFY16", ModelSecondFY16);
                        cmd.Parameters.AddWithValue("@ModelTotalFY16", ModelTotalFY16);
                        cmd.Parameters.AddWithValue("@ModelQ1FY17", ModelQ1FY17);
                        cmd.Parameters.AddWithValue("@ModelQ2FY17", ModelQ2FY17);
                        cmd.Parameters.AddWithValue("@ModelQ3FY17", ModelQ3FY17);
                        cmd.Parameters.AddWithValue("@ModelQ4FY17", ModelQ4FY17);
                        cmd.Parameters.AddWithValue("@ModelFirstFY17", ModelFirstFY17);
                        cmd.Parameters.AddWithValue("@ModelSecondFY17", ModelSecondFY17);
                        cmd.Parameters.AddWithValue("@ModelTotalFY17", ModelTotalFY17);
                        cmd.Parameters.AddWithValue("@ModelQ1FY18", ModelQ1FY18);
                        cmd.Parameters.AddWithValue("@ModelQ2FY18", ModelQ2FY18);
                        cmd.Parameters.AddWithValue("@ModelQ3FY18", ModelQ3FY18);
                        cmd.Parameters.AddWithValue("@ModelQ4FY18", ModelQ4FY18);
                        cmd.Parameters.AddWithValue("@ModelFirstFY18", ModelFirstFY18);
                        cmd.Parameters.AddWithValue("@ModelSecondFY18", ModelSecondFY18);
                        cmd.Parameters.AddWithValue("@ModelTotalFY18", ModelTotalFY18);

                        cmd.Parameters.AddWithValue("@Status", Status);

                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    catch ( Exception ex)
                    {
                        if (ex is SqlException)
                        {
                            // Handle more specific SqlException exception here.
                        }
                    }

                    }
                
            }
            this.BindRepeater();
        }

        protected void OnCancel(object sender, EventArgs e)
        {//Find the reference of the Repeater Item.
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            this.ToggleElements(item, false);
        }

        protected void OnDelete(object sender, EventArgs e)
        {//Find the reference of the Repeater Item.
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            int BPCostingId = int.Parse((item.FindControl("lblBPCostingId") as Label).Text);

            string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("BPCosting_CRUD"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "DELETE");
                    cmd.Parameters.AddWithValue("@BPCostingId", BPCostingId);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            this.BindRepeater();
        }


        private void BindRepeater()
        {
            if (Convert.ToInt32(SelectedVehicleTypeID) > 0)
            {
                string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("BPCosting_CRUD"))
                    {
                        cmd.Parameters.AddWithValue("@Action", "SELECT");
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@BPCostingId", SelectedVehicleTypeID);
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                for (int i = 0; i < 20 - dt.Rows.Count; i++)
                                {
                                    DataRow dr = dt.NewRow();
                                    dt.Rows.Add(dr);
                                }
                                rptBPCosting.DataSource = dt;
                                rptBPCosting.DataBind();
                            }
                        }
                    }
                }
            }
        }
    }
}