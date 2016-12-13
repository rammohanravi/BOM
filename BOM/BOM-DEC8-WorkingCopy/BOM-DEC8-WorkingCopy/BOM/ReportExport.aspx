<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="ReportExport.aspx.cs" Inherits="WebApplication3.ReportExport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <table width="500px" cellpadding="0" cellspacing="0" border="0">
            <tr>
                <td style="width:50px">
                    Part No
                </td>
                <td style="width:100px">
                    <asp:TextBox runat="server" ID="txtPartNo"></asp:TextBox>
                </td>
                <td>
                    <asp:UpdatePanel runat="server" ID="UpdatePanelDownload" UpdateMode="Conditional"
                        ChildrenAsTriggers="True">
                        <ContentTemplate>
                            <asp:Button ID="btnSubmit" Text="Export" runat="server" onclick="btnSubmit_Click" />
                        </ContentTemplate>
                        <Triggers>
                            <asp:PostBackTrigger ControlID="btnSubmit" />
                        </Triggers>
                    </asp:UpdatePanel>
                     
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
