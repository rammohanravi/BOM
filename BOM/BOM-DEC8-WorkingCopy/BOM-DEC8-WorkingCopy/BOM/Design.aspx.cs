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
    public partial class _Default : System.Web.UI.Page
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

        protected void Insert(object sender, EventArgs e)
        {
            //string name = txtName.Text;
            //string country = txtCountry.Text;
            //string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            //using (SqlConnection con = new SqlConnection(constr))
            //{
            //    using (SqlCommand cmd = new SqlCommand("BOM_CRUD"))
            //    {
            //        cmd.CommandType = CommandType.StoredProcedure;
            //        cmd.Parameters.AddWithValue("@Action", "INSERT");
            //        cmd.Parameters.AddWithValue("@Name", name);
            //        cmd.Parameters.AddWithValue("@Country", country);
            //        cmd.Connection = con;
            //        con.Open();
            //        cmd.ExecuteNonQuery();
            //        con.Close();
            //    }
            //}
            //this.BindRepeater();
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

            item.FindControl("lblDesignId").Visible = !isEdit;
            item.FindControl("lblCustomerName").Visible = !isEdit;
            item.FindControl("lblModelCode").Visible = !isEdit;
            item.FindControl("lblCarName").Visible = !isEdit;
            item.FindControl("lblSOP").Visible = !isEdit;
            item.FindControl("lblProductType").Visible = !isEdit;
            item.FindControl("lblFGPartNo").Visible = !isEdit;
            item.FindControl("lblPartName").Visible = !isEdit;
            item.FindControl("lblPartNo").Visible = !isEdit;
            item.FindControl("lblCustomerPartNo").Visible = !isEdit;
            item.FindControl("lblAspz").Visible = !isEdit;
            item.FindControl("lblLevel").Visible = !isEdit;
            item.FindControl("lblUOM").Visible = !isEdit;
            item.FindControl("lblQty").Visible = !isEdit;
            item.FindControl("lblSpec").Visible = !isEdit;
            item.FindControl("lblECIinfo").Visible = !isEdit;
            item.FindControl("Label17").Visible = !isEdit;
            item.FindControl("Label1").Visible = !isEdit;
            item.FindControl("lblINHouse").Visible = !isEdit;
            item.FindControl("lblLocal").Visible = !isEdit;
            item.FindControl("lblImport").Visible = !isEdit;
            item.FindControl("lblDie").Visible = !isEdit;
            item.FindControl("lblProcess").Visible = !isEdit;
            item.FindControl("lblSpecDDS").Visible = !isEdit;
            item.FindControl("lblColour").Visible = !isEdit;

            item.FindControl("lblSupplier").Visible = !isEdit;
            item.FindControl("lblGrade").Visible = !isEdit;
            item.FindControl("lblDNKICode").Visible = !isEdit;
            item.FindControl("lblRiskManagementSource").Visible = !isEdit;
            item.FindControl("lblProto").Visible = !isEdit;
            item.FindControl("lblOT").Visible = !isEdit;
            item.FindControl("lblOP").Visible = !isEdit;
            item.FindControl("lblLVPT").Visible = !isEdit;
            item.FindControl("lblHVPT").Visible = !isEdit;
            item.FindControl("lblCustomerSOP").Visible = !isEdit;
            item.FindControl("lblStatus").Visible = !isEdit;
            //Toggle TextBoxes.

            item.FindControl("ddlTwoD").Visible = isEdit;
            item.FindControl("txtDesignId").Visible = isEdit;
            item.FindControl("txtCustomerName").Visible = isEdit;
            item.FindControl("txtModelCode").Visible = isEdit;
            item.FindControl("txtCarName").Visible = isEdit;
            item.FindControl("txtSOP").Visible = isEdit;
            item.FindControl("txtProductType").Visible = isEdit;
            item.FindControl("txtFGPartNo").Visible = isEdit;
            item.FindControl("txtPartName").Visible = isEdit;
            item.FindControl("txtPartNo").Visible = isEdit;
            item.FindControl("txtCustomerPartNo").Visible = isEdit;
            item.FindControl("txtAspz").Visible = isEdit;
            item.FindControl("txtLevel").Visible = isEdit;
            item.FindControl("txtUOM").Visible = isEdit;
            item.FindControl("txtQty").Visible = isEdit;
            item.FindControl("txtSpec").Visible = isEdit;
            item.FindControl("ddlThreeD").Visible = isEdit;
            item.FindControl("txtECIinfo").Visible = isEdit;
            item.FindControl("txtINHouse").Visible = isEdit;
            item.FindControl("txtImport").Visible = isEdit;
            item.FindControl("txtDie").Visible = isEdit;
            item.FindControl("txtLocal").Visible = isEdit;
            item.FindControl("txtProcess").Visible = isEdit;
            item.FindControl("txtSpecDDS").Visible = isEdit;
            item.FindControl("txtColour").Visible = isEdit;
            item.FindControl("txtSupplier").Visible = isEdit;

            item.FindControl("txtGrade").Visible = isEdit;
            item.FindControl("txtDNKICode").Visible = isEdit;
            item.FindControl("txtRiskManagementSource").Visible = isEdit;
            item.FindControl("txtProto").Visible = isEdit;
            item.FindControl("txtOT").Visible = isEdit;
            item.FindControl("txtOP").Visible = isEdit;
            item.FindControl("txtLVPT").Visible = isEdit;
            item.FindControl("txtHVPT").Visible = isEdit;
            item.FindControl("txtCustomerSOP").Visible = isEdit;
            item.FindControl("ddlStatus").Visible = isEdit;

        }

        protected void OnUpdate(object sender, EventArgs e)
        {
            int DesignSpecID;
            //Find the reference of the Repeater Item.
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            if ((item.FindControl("lblDesignId") as Label).Text == string.Empty)
            {
                DesignSpecID = 0;
            }
            else
            {
                DesignSpecID = int.Parse((item.FindControl("lblDesignId") as Label).Text);
            }
           
            string CustomerName = ((item.FindControl("txtCustomerName") as TextBox).Text);
            string ModelCode = ((item.FindControl("txtModelCode") as TextBox).Text);
            string CarName = ((item.FindControl("txtCarName") as TextBox).Text);
            string SOP = ((item.FindControl("txtSOP") as TextBox).Text);
            string ProductType = ((item.FindControl("txtProductType") as TextBox).Text);
            string FGPartNo = ((item.FindControl("txtFGPartNo") as TextBox).Text);
            string PartName = ((item.FindControl("txtPartName") as TextBox).Text);
            string PartNo = ((item.FindControl("txtPartNo") as TextBox).Text);
            string CustomerPartNo = ((item.FindControl("txtCustomerPartNo") as TextBox).Text);
            string Aspz = ((item.FindControl("txtAspz") as TextBox).Text);
            string Level = ((item.FindControl("txtLevel") as TextBox).Text);
            string UOM = ((item.FindControl("txtUOM") as TextBox).Text);
            string Qty = ((item.FindControl("txtQty") as TextBox).Text);
            string Spec = ((item.FindControl("txtSpec") as TextBox).Text);
            string ThreeD = ((item.FindControl("ddlThreeD") as DropDownList).SelectedValue);
            string TwoD = ((item.FindControl("ddlTwoD") as DropDownList).SelectedValue);
            string ECIinfo = ((item.FindControl("txtECIinfo") as TextBox).Text);
            string INHouse = ((item.FindControl("txtINHouse") as TextBox).Text);
            string Local = ((item.FindControl("txtLocal") as TextBox).Text);
            string Import = ((item.FindControl("txtImport") as TextBox).Text);
            string Die = ((item.FindControl("txtDie") as TextBox).Text);
            string Process = ((item.FindControl("txtProcess") as TextBox).Text);
            string SpecDDS = ((item.FindControl("txtSpecDDS") as TextBox).Text);
            string Colour = ((item.FindControl("txtColour") as TextBox).Text);
            string Supplier = ((item.FindControl("txtSupplier") as TextBox).Text);
            string Grade = ((item.FindControl("txtGrade") as TextBox).Text);
            string DNKICode = ((item.FindControl("txtDNKICode") as TextBox).Text);
            string RiskManagementSource = ((item.FindControl("txtRiskManagementSource") as TextBox).Text);
            string Proto = ((item.FindControl("txtProto") as TextBox).Text);
            string OT = ((item.FindControl("txtOT") as TextBox).Text);
            string OP = ((item.FindControl("txtOP") as TextBox).Text);
            string LVPT = ((item.FindControl("txtLVPT") as TextBox).Text);
            string HVPT = ((item.FindControl("txtHVPT") as TextBox).Text);
            string CustomerSOP = ((item.FindControl("txtCustomerSOP") as TextBox).Text);
            string Status = ((item.FindControl("ddlStatus") as DropDownList).SelectedValue);

            string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SP_Design_CRUD"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "UPDATE");

                    cmd.Parameters.AddWithValue("@DesignId", DesignSpecID);
                    cmd.Parameters.AddWithValue("@CustomerName", CustomerName);
                    cmd.Parameters.AddWithValue("@ModelCode", ModelCode);
                    cmd.Parameters.AddWithValue("@CarName", CarName);
                    cmd.Parameters.AddWithValue("@SOP", SOP);
                    cmd.Parameters.AddWithValue("@ProductType", ProductType);
                    cmd.Parameters.AddWithValue("@FGPartNo", FGPartNo);
                    cmd.Parameters.AddWithValue("@PartName", PartName);
                    cmd.Parameters.AddWithValue("@PartNo", PartNo);
                    cmd.Parameters.AddWithValue("@CustomerPartNo", CustomerPartNo);
                    cmd.Parameters.AddWithValue("@Aspz", Aspz);
                    cmd.Parameters.AddWithValue("@Level", Level);
                    cmd.Parameters.AddWithValue("@UOM", UOM);
                    cmd.Parameters.AddWithValue("@Qty", Qty);
                    cmd.Parameters.AddWithValue("@Spec", Spec);
                    cmd.Parameters.AddWithValue("@ThreeD", ThreeD);
                    cmd.Parameters.AddWithValue("@TwoD", TwoD);
                    cmd.Parameters.AddWithValue("@ECIinfo", ECIinfo);
                    cmd.Parameters.AddWithValue("@INHouse", INHouse);
                    cmd.Parameters.AddWithValue("@Local", Local);
                    cmd.Parameters.AddWithValue("@Import", Import);
                    cmd.Parameters.AddWithValue("@Die", Die);
                    cmd.Parameters.AddWithValue("@Process", Process);
                    cmd.Parameters.AddWithValue("@SpecDDS", SpecDDS);
                    cmd.Parameters.AddWithValue("@Colour", Colour);
                    cmd.Parameters.AddWithValue("@Supplier", Supplier);
                    cmd.Parameters.AddWithValue("@Grade", Grade);
                    cmd.Parameters.AddWithValue("@DNKICode", DNKICode);
                    cmd.Parameters.AddWithValue("@RiskManagementSource", RiskManagementSource);
                    cmd.Parameters.AddWithValue("@Proto", Proto);
                    cmd.Parameters.AddWithValue("@OT", OT);
                    cmd.Parameters.AddWithValue("@OP", OP);
                    cmd.Parameters.AddWithValue("@LVPT", LVPT);
                    cmd.Parameters.AddWithValue("@HVPT", HVPT);
                    cmd.Parameters.AddWithValue("@CustomerSOP", CustomerSOP);
                    cmd.Parameters.AddWithValue("@Status", Status);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
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
            int DesignSpecID = int.Parse((item.FindControl("lblDesignSpecID") as Label).Text);

            string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("BOM_CRUD"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "DELETE");
                    cmd.Parameters.AddWithValue("@DesignSpecId", DesignSpecID);
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
                    using (SqlCommand cmd = new SqlCommand("SP_Design_CRUD"))
                    {
                        cmd.Parameters.AddWithValue("@Action", "SELECT");
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@Designid", SelectedVehicleTypeID);
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
                                rptCustomers.DataSource = dt;
                                rptCustomers.DataBind();
                            }
                        }
                    }
                }
            }
        }
    }
}
