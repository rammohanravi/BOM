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
    public partial class PcDept : System.Web.UI.Page
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
            item.FindControl("lblQTYBOX").Visible = !isEdit;
            item.FindControl("lblVOLUMETRICDOBOX").Visible = !isEdit;
            item.FindControl("lblNETWEIGHT").Visible = !isEdit;
            item.FindControl("lblGROSSWEIGHT").Visible = !isEdit;
            item.FindControl("lblVOLUMETRICWEIGHT").Visible = !isEdit;
            item.FindControl("lblStatus").Visible = !isEdit;
            

            //Toggle TextBoxes.

            // item.FindControl("ddlTwoD").Visible = isEdit;
            item.FindControl("txtDesignId").Visible = isEdit;
            item.FindControl("txtCustomerName").Visible = isEdit;
            item.FindControl("txtModelCode").Visible = isEdit;
            item.FindControl("txtCarName").Visible = isEdit;
            item.FindControl("txtSOP").Visible = isEdit;
            item.FindControl("txtProductType").Visible = isEdit;
            item.FindControl("txtFGPartNo").Visible = isEdit;
            item.FindControl("txtPartName").Visible = isEdit;
            item.FindControl("txtPartNo").Visible = isEdit;
            item.FindControl("txtQTYBOX").Visible = isEdit;
            item.FindControl("txtVOLUMETRICDOBOX").Visible = isEdit;
            item.FindControl("txtNETWEIGHT").Visible = isEdit;
            item.FindControl("txtGROSSWEIGHT").Visible = isEdit;
            item.FindControl("txtVOLUMETRICWEIGHT").Visible = isEdit;
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
            string QTYBOX = ((item.FindControl("txtQTYBOX") as TextBox).Text);
            string VOLUMETRICDOBOX = ((item.FindControl("txtVOLUMETRICDOBOX") as TextBox).Text);
            string NETWEIGHT = ((item.FindControl("txtNETWEIGHT") as TextBox).Text);
            string GROSSWEIGHT = ((item.FindControl("txtGROSSWEIGHT") as TextBox).Text);
            string VOLUMETRICWEIGHT = ((item.FindControl("txtVOLUMETRICWEIGHT") as TextBox).Text);
            string Status = ((item.FindControl("ddlStatus") as DropDownList).SelectedValue);

            string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SP_PcDept"))
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
                    cmd.Parameters.AddWithValue("@QTYBOX", QTYBOX);
                    cmd.Parameters.AddWithValue("@VOLUMETRICDOBOX", VOLUMETRICDOBOX);
                    cmd.Parameters.AddWithValue("@NETWEIGHT", NETWEIGHT);
                    cmd.Parameters.AddWithValue("@GROSSWEIGHT", GROSSWEIGHT);
                    cmd.Parameters.AddWithValue("@VOLUMETRICWEIGHT", VOLUMETRICWEIGHT);
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
            int DesignSpecID = int.Parse((item.FindControl("lblDesignId") as Label).Text);

            string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SP_PcDept"))
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
                    using (SqlCommand cmd = new SqlCommand("SP_PcDept"))
                    {
                        cmd.Parameters.AddWithValue("@Action", "SELECT");
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.CommandType = CommandType.StoredProcedure;
                            //SelectedVehicleTypeID = 4;
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
                                rptPcDept.DataSource = dt;
                                //if(dt.Rows.Count>10)
                                rptPcDept.DataBind();
                            }
                        }
                    }
                }
            }
        }
        }
    }
