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
            <span class="auto-style3"><strong>THÔNG TIN HÓA ĐƠN</strong></span><strong><br class="auto-style4" />
            </strong>
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Ma_HD" DataSourceID="SqlDataSource2" GridLines="Horizontal" style="text-align: center; color: #663300;" Width="879px">
            <Columns>
                <asp:BoundField DataField="Ma_HD" HeaderText="Ma_HD" ReadOnly="True" SortExpression="Ma_HD" />
                <asp:BoundField DataField="Ma_KH" HeaderText="Ma_KH" SortExpression="Ma_KH" />
                <asp:BoundField DataField="Ngay_lap_HD" HeaderText="Ngay_lap_HD" SortExpression="Ngay_lap_HD" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ASS1_Thamnthpd01242_INF205ConnectionString %>" DeleteCommand="DELETE FROM [HOADON] WHERE [Ma_HD] = @Ma_HD" InsertCommand="INSERT INTO [HOADON] ([Ma_HD], [Ma_KH], [Ngay_lap_HD], [Dia_chi]) VALUES (@Ma_HD, @Ma_KH, @Ngay_lap_HD, @Dia_chi)" SelectCommand="SELECT * FROM [HOADON]" UpdateCommand="UPDATE [HOADON] SET [Ma_KH] = @Ma_KH, [Ngay_lap_HD] = @Ngay_lap_HD, [Dia_chi] = @Dia_chi WHERE [Ma_HD] = @Ma_HD">
            <DeleteParameters>
                <asp:Parameter Name="Ma_HD" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma_HD" Type="String" />
                <asp:Parameter Name="Ma_KH" Type="String" />
                <asp:Parameter DbType="Date" Name="Ngay_lap_HD" />
                <asp:Parameter Name="Dia_chi" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ma_KH" Type="String" />
                <asp:Parameter DbType="Date" Name="Ngay_lap_HD" />
                <asp:Parameter Name="Dia_chi" Type="String" />
                <asp:Parameter Name="Ma_HD" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <br />
        <asp:FormView ID="FormView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Ma_HD" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Both" Width="283px">
            <EditItemTemplate>
                Ma_HD:
                <asp:Label ID="Ma_HDLabel1" runat="server" Text='<%# Eval("Ma_HD") %>' />
                <br />
                Ma_KH:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Ma_KHTextBox" runat="server" Text='<%# Bind("Ma_KH") %>' />
                <br />
                Ngay_lap_HD:
                <asp:TextBox ID="Ngay_lap_HDTextBox" runat="server" Text='<%# Bind("Ngay_lap_HD") %>' />
                <br />
                Dia_chi:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Dia_chiTextBox" runat="server" Text='<%# Bind("Dia_chi") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Ma_HD:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Ma_HDTextBox" runat="server" Text='<%# Bind("Ma_HD") %>' />
                <br />
                Ma_KH:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Ma_KHTextBox" runat="server" Text='<%# Bind("Ma_KH") %>' />
                <br />
                Ngay_lap_HD:
                <asp:TextBox ID="Ngay_lap_HDTextBox" runat="server" Text='<%# Bind("Ngay_lap_HD") %>' />
                <br />
                Dia_chi:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Dia_chiTextBox" runat="server" Text='<%# Bind("Dia_chi") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Ma_HD:
                <asp:Label ID="Ma_HDLabel" runat="server" Text='<%# Eval("Ma_HD") %>' />
                <br />
                Ma_KH:
                <asp:Label ID="Ma_KHLabel" runat="server" Text='<%# Bind("Ma_KH") %>' />
                <br />
                Ngay_lap_HD:
                <asp:Label ID="Ngay_lap_HDLabel" runat="server" Text='<%# Bind("Ngay_lap_HD") %>' />
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
