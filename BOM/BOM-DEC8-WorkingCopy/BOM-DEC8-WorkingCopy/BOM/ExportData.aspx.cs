using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Diagnostics;
using Microsoft.Office.Interop;
using Microsoft.Office.Interop.Excel;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplication3
{
    public partial class ExportData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        private void ExportDataSetToExcel(DataSet ds)
        {
            //Creae an Excel application instance
            Application excelApp = new Application();

            //Create an Excel workbook instance and open it from the predefined location
            string dataTime = DateTime.Now.ToString("MMddyy_hhmmsstt");
            File.Create("E:\\Data" + dataTime + ".xlsx");

            Workbook excelWorkBook = excelApp.Workbooks.Open("E:\\Orgs.xlsx");

            foreach (System.Data.DataTable table in ds.Tables)
            {
                //Add a new worksheet to workbook with the Datatable name
                Worksheet excelWorkSheet = excelWorkBook.Sheets.Add();
                

                for (int i = 1; i < table.Columns.Count; i++)
                {
                    excelWorkSheet.Name = table.Rows[0].ItemArray[table.Columns.Count - 1].ToString();
                    excelWorkSheet.Cells[1, i] = table.Columns[i - 1].ColumnName;
                }

                for (int j = 0; j < table.Rows.Count; j++)
                {
                    for (int k = 0; k < table.Columns.Count-1; k++)
                    {                        
                        excelWorkSheet.Cells[j + 2, k + 1] = table.Rows[j].ItemArray[k].ToString();
                    }
                }
            }

            //excelWorkBook.SaveAs("Data" + dataTime);
            object misValue = System.Reflection.Missing.Value;
            excelWorkBook.SaveAs("E:\\Data" + dataTime + ".xls", XlFileFormat.xlWorkbookNormal, misValue, misValue, misValue, misValue, XlSaveAsAccessMode.xlExclusive, misValue, misValue, misValue, misValue, misValue);
            excelWorkBook.Close();
            excelApp.Quit();

            //Download File
            Download();
        }

        private DataSet GetData(string partNo)
        {
            //if (Convert.ToInt32(SelectedVehicleTypeID) > 0)
            //{
            string constr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("ExportData"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@PartNo", partNo);
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        sda.Fill(ds);
                    }
                }
            }
            //}
            return ds;
        }

        private void Download()
        {
            Response.ClearContent();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", string.Format("attachment; filename={0}", "Customers.xls"));
            Response.ContentType = "application/ms-excel";
            ExportDataSetToExcel(GetData(txtPartNo.Text));
            Response.End();
        }

        public void TheDownload(string path)
        {
            System.IO.FileInfo toDownload = new System.IO.FileInfo(path);

            HttpContext.Current.Response.Clear();
            HttpContext.Current.Response.AddHeader("Content-Disposition",
                       "attachment; filename=" + toDownload.Name);
            HttpContext.Current.Response.AddHeader("Content-Length",
                       toDownload.Length.ToString());
            HttpContext.Current.Response.ContentType = "application/octet-stream";
            HttpContext.Current.Response.WriteFile(path);
            HttpContext.Current.Response.End();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            ExportDataSetToExcel(GetData(txtPartNo.Text));
        }
    }
}