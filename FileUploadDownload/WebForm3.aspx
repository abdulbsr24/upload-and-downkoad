<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="FileUploadDownload.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound" OnRowCancelingEdit="GridView1_RowCancelingEdit"
             OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" Width="521px" >
            <Columns>
                <asp:TemplateField HeaderText="First Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtFName" runat="server" Text='<%#Eval("FirstName") %>' ></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblFName" runat="server" Text='<%#Eval("FirstName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Last Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtLastName" runat="server" Text='<%#Eval("LastName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblLName" runat="server" Text='<%#Eval("LastName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender">
                    <EditItemTemplate>
                        <asp:Label ID="lblgender" runat="server" Text='<%#Eval("Gender") %>'></asp:Label>
                        <asp:DropDownList ID="ddlgender" runat="server"  >
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblGender" runat="server" Text='<%#Eval("Gender") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Designation">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtDesignation" runat="server" Text='<%#Eval("Designation") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblDesignation" runat="server" Text='<%#Eval("Designation") %>'></asp:Label>
                        
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Department">
                    <EditItemTemplate>
                        <%--<asp:Label ID="lblDept" runat="server" Text='<%#Eval("DeptName") %>'></asp:Label>--%>
                        <asp:DropDownList ID="ddldept" runat="server"></asp:DropDownList>
                       
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblDept" runat="server" Text='<%#Eval("DeptName") %>'></asp:Label>
                        
                    </ItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="Operations">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="update" Text="Update"  ></asp:LinkButton>
                        
                        <asp:LinkButton ID="LinkButton4" runat="server" CommandName="cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="delete" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>


            </Columns>
        </asp:GridView>
        
    </div>
    </form>
</body>
</html>
