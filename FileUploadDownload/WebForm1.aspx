<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FileUploadDownload.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:FileUpload ID="FileUpload1" runat="server" /><br /><br />
        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" OnRowCommand="GridView1_RowCommand" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="File">

                    <ItemTemplate>
                        
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="Download"  Text='<%# Eval("File") %>' ></asp:LinkButton>
                        
                    </ItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="SIZE">

                    <ItemTemplate>
                        
                        <asp:LinkButton ID="lblsiz" runat="server" Text='<%#Eval("Size") %>'></asp:LinkButton>
                        
                    </ItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="Type">

                    <ItemTemplate>
                        
                        <asp:LinkButton ID="lbltype" runat="server" Text='<%# Eval("Type") %>'></asp:LinkButton>
                        
                    </ItemTemplate>

                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    </form>
</body>
</html>
