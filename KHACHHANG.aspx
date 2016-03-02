<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KHACHHANG.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: large;
            color: #990000;
        }
        .auto-style3 {
            font-size: x-large;
            color: #0000FF;
        }
        .auto-style4 {
            color: #0000FF;
        }
        body {
            background: #5bbda3;
            margin: 0 auto;
            width: 60%;
        }
        .auto-style1 {
            font-size: large;
            text-decoration: underline;
            color: #333399;
        }
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class="auto-style1">
            <strong><span class="auto-style2">THAMNTHPD01242_ASSIGNMENT</span><br class="auto-style2" />
            <span class="auto-style2">ĐIỆN TOÁN ĐÁM MÂY</span></strong><br />
&nbsp;
            <br />
            <br />
            <span class="auto-style3"><strong>THÔNG TIN KHÁCH HÀNG</strong></span><strong><br class="auto-style4" />
            </strong>
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Ma_KH" DataSourceID="SqlDataSource1" GridLines="Horizontal" style="text-align: center; color: #663300;" Width="879px">
            <Columns>
                <asp:BoundField DataField="Ma_KH" HeaderText="Ma_KH" ReadOnly="True" SortExpression="Ma_KH" />
                <asp:BoundField DataField="Ho_Ten" HeaderText="Ho_Ten" SortExpression="Ho_Ten" />
                <asp:BoundField DataField="Gioi_Tinh" HeaderText="Gioi_Tinh" SortExpression="Gioi_Tinh" />
                <asp:BoundField DataField="Dien_thoai" HeaderText="Dien_thoai" SortExpression="Dien_thoai" />
                <asp:BoundField DataField="Dia_chi" HeaderText="Dia_chi" SortExpression="Dia_chi" />
                <asp:CommandField />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASS1_Thamnthpd01242_INF205ConnectionString %>" DeleteCommand="DELETE FROM [KHACHHANG] WHERE [Ma_KH] = @Ma_KH" InsertCommand="INSERT INTO [KHACHHANG] ([Ma_KH], [Ho_Ten], [Gioi_Tinh], [Dien_thoai], [Dia_chi]) VALUES (@Ma_KH, @Ho_Ten, @Gioi_Tinh, @Dien_thoai, @Dia_chi)" SelectCommand="SELECT * FROM [KHACHHANG]" UpdateCommand="UPDATE [KHACHHANG] SET [Ho_Ten] = @Ho_Ten, [Gioi_Tinh] = @Gioi_Tinh, [Dien_thoai] = @Dien_thoai, [Dia_chi] = @Dia_chi WHERE [Ma_KH] = @Ma_KH">
            <DeleteParameters>
                <asp:Parameter Name="Ma_KH" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma_KH" Type="String" />
                <asp:Parameter Name="Ho_Ten" Type="String" />
                <asp:Parameter Name="Gioi_Tinh" Type="String" />
                <asp:Parameter Name="Dien_thoai" Type="Int32" />
                <asp:Parameter Name="Dia_chi" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ho_Ten" Type="String" />
                <asp:Parameter Name="Gioi_Tinh" Type="String" />
                <asp:Parameter Name="Dien_thoai" Type="Int32" />
                <asp:Parameter Name="Dia_chi" Type="String" />
                <asp:Parameter Name="Ma_KH" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <br />
        <asp:FormView ID="FormView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Ma_KH" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Both" Width="259px">
            <EditItemTemplate>
                Ma_KH:
                <asp:Label ID="Ma_KHLabel1" runat="server" Text='<%# Eval("Ma_KH") %>' />
                <br />
                Ho_Ten:&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Ho_TenTextBox" runat="server" Text='<%# Bind("Ho_Ten") %>' />
                <br />
                Gioi_Tinh:&nbsp;&nbsp;
                <asp:TextBox ID="Gioi_TinhTextBox" runat="server" Text='<%# Bind("Gioi_Tinh") %>' />
                <br />
                Dien_thoai:
                <asp:TextBox ID="Dien_thoaiTextBox" runat="server" Text='<%# Bind("Dien_thoai") %>' />
                <br />
                Dia_chi:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Dia_chiTextBox" runat="server" Text='<%# Bind("Dia_chi") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Ma_KH:&nbsp;&nbsp;
                <asp:TextBox ID="Ma_KHTextBox" runat="server" Text='<%# Bind("Ma_KH") %>' />
                <br />
                Ho_Ten:&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Ho_TenTextBox" runat="server" Text='<%# Bind("Ho_Ten") %>' />
                <br />
                Gioi_Tinh:&nbsp;
                <asp:TextBox ID="Gioi_TinhTextBox" runat="server" Text='<%# Bind("Gioi_Tinh") %>' />
                <br />
                Dien_thoai:
                <asp:TextBox ID="Dien_thoaiTextBox" runat="server" Text='<%# Bind("Dien_thoai") %>' />
                <br />
                Dia_chi:&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Dia_chiTextBox" runat="server" Text='<%# Bind("Dia_chi") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Ma_KH:
                <asp:Label ID="Ma_KHLabel" runat="server" Text='<%# Eval("Ma_KH") %>' />
                <br />
                Ho_Ten:
                <asp:Label ID="Ho_TenLabel" runat="server" Text='<%# Bind("Ho_Ten") %>' />
                <br />
                Gioi_Tinh:
                <asp:Label ID="Gioi_TinhLabel" runat="server" Text='<%# Bind("Gioi_Tinh") %>' />
                <br />
                Dien_thoai:
                <asp:Label ID="Dien_thoaiLabel" runat="server" Text='<%# Bind("Dien_thoai") %>' />
                <br />
                Dia_chi:
                <asp:Label ID="Dia_chiLabel" runat="server" Text='<%# Bind("Dia_chi") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:Button ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
