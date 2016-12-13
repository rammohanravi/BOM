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
    public partial class _PurchaseDept : System.Web.UI.Page
    {
        public string SelectedPurchaseID
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

            item.FindControl("lblPurchaseId").Visible = !isEdit;
            item.FindControl("lblCustomerName").Visible = !isEdit;
            item.FindControl("lblModelCode").Visible = !isEdit;
            item.FindControl("lblCarName").Visible = !isEdit;
            item.FindControl("lblSOP").Visible = !isEdit;
            item.FindControl("lblProductType").Visible = !isEdit;
            item.FindControl("lblFGPartNo").Visible = !isEdit;
            item.FindControl("lblPartName").Visible = !isEdit;
            item.FindControl("lblPartNo").Visible = !isEdit;

            item.FindControl("lblClassification").Visible = !isEdit;
            item.FindControl("lblCategory").Visible = !isEdit;
            item.FindControl("lblSupplier").Visible = !isEdit;
            item.FindControl("lblLocation").Visible = !isEdit;
            item.FindControl("lblMaterial").Visible = !isEdit;
            item.FindControl("lblTyre2Supplier").Visible = !isEdit;
            item.FindControl("lblRemarks").Visible = !isEdit;
            item.FindControl("lblStatus").Visible = !isEdit;


            item.FindControl("txtPurchaseId").Visible = isEdit;
            item.FindControl("txtCustomerName").Visible = isEdit;
            item.FindControl("txtModelCode").Visible = isEdit;
            item.FindControl("txtCarName").Visible = isEdit;
            item.FindControl("txtSOP").Visible = isEdit;
            item.FindControl("txtProductType").Visible = isEdit;
            item.FindControl("txtFGPartNo").Visible = isEdit;
            item.FindControl("txtPartName").Visible = isEdit;
            item.FindControl("txtPartNo").Visible = isEdit;

            item.FindControl("txtClassification").Visible = isEdit;
            item.FindControl("txtCategory").Visible = isEdit;
            item.FindControl("txtSupplier").Visible = isEdit;
            item.FindControl("txtLocation").Visible = isEdit;
            item.FindControl("txtMaterial").Visible = isEdit;
            item.FindControl("txtTyre2Supplier").Visible = isEdit;
            item.FindControl("txtRemarks").Visible = isEdit;
            item.FindControl("ddlStatus").Visible = isEdit;
        }

        protected void OnUpdate(object sender, EventArgs e)
        {
            int PurchaseId;
            //Find the reference of the Repeater Item.
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            if ((item.FindControl("lblPurchaseId") as Label).Text == string.Empty)
            {
                PurchaseId = 0;
            }
            else
            {
                PurchaseId = int.Parse((item.FindControl("lblPurchaseId") as Label).Text);
            }
           
            string CustomerName = ((item.FindControl("txtCustomerName") as TextBox).Text);
            string ModelCode = ((item.FindControl("txtModelCode") as TextBox).Text);
            string CarName = ((item.FindControl("txtCarName") as TextBox).Text);
            string SOP = ((item.FindControl("txtSOP") as TextBox).Text);
            string ProductType = ((item.FindControl("txtProductType") as TextBox).Text);
            string FGPartNo = ((item.FindControl("txtFGPartNo") as TextBox).Text);
            string PartName = ((item.FindControl("txtPartName") as TextBox).Text);
            string PartNo = ((item.FindControl("txtPartNo") as TextBox).Text);
            string Classification = ((item.FindControl("txtClassification") as TextBox).Text);
            string Category = ((item.FindControl("txtCategory") as TextBox).Text);
            string Supplier = ((item.FindControl("txtSupplier") as TextBox).Text);
            string Location = ((item.FindControl("txtLocation") as TextBox).Text);
            string Material = ((item.FindControl("txtMaterial") as TextBox).Text);
            string Tyre2Supplier = ((item.FindControl("txtTyre2Supplier") as TextBox).Text);
            string Remarks = ((item.FindControl("txtRemarks") as TextBox).Text);
            string Status = ((item.FindControl("ddlStatus") as DropDownList).SelectedValue);
            string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SP_PurchaseDept"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "UPDATE");

                    cmd.Parameters.AddWithValue("@PurchaseId", PurchaseId);
                    cmd.Parameters.AddWithValue("@CustomerName", CustomerName);
                    cmd.Parameters.AddWithValue("@ModelCode", ModelCode);
                    cmd.Parameters.AddWithValue("@CarName", CarName);
                    cmd.Parameters.AddWithValue("@SOP", SOP);
                    cmd.Parameters.AddWithValue("@ProductType", ProductType);
                    cmd.Parameters.AddWithValue("@FGPartNo", FGPartNo);
                    cmd.Parameters.AddWithValue("@PartName", PartName);
                    cmd.Parameters.AddWithValue("@PartNo", PartNo);
                    cmd.Parameters.AddWithValue("@Classification", Classification);
                    cmd.Parameters.AddWithValue("@Category", Category);
                    cmd.Parameters.AddWithValue("@Supplier", Supplier);
                    cmd.Parameters.AddWithValue("@Location", Location);
                    cmd.Parameters.AddWithValue("@Material", Material);
                    cmd.Parameters.AddWithValue("@Tyre2Supplier", Tyre2Supplier);
                    cmd.Parameters.AddWithValue("@Remarks", Remarks);
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
            int PurchaseId = int.Parse((item.FindControl("lblPurchaseId") as Label).Text);

            string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SP_PurchaseDept"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "DELETE");
                    cmd.Parameters.AddWithValue("@PurchaseId", PurchaseId);
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
            if (Convert.ToInt32(SelectedPurchaseID) > 0)
            {
                string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SP_PurchaseDept"))
                    {
                        cmd.Parameters.AddWithValue("@Action", "SELECT");
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@PurchaseId", SelectedPurchaseID);
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
                                rptPurchase.DataSource = dt;
                                rptPurchase.DataBind();
                            }
                        }
                    }
                }
            }
        }
    }
}
