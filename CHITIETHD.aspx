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
            height: 123px;
            width: 400px;
        }
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="color: #336600">
    
        <div class="auto-style1">
            <strong><span class="auto-style2">THAMNTHPD01242_ASSIGNMENT</span><br class="auto-style2" />
            <span class="auto-style2">ĐIỆN TOÁN ĐÁM MÂY</span></strong><br />
&nbsp;
            <br />
            <br />
            <strong style="font-size: x-large">CHI TIẾT HÓA ĐƠN<br class="auto-style4" />
            </strong>
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Ma_HD,Ma_SP" DataSourceID="SqlDataSource1" ForeColor="Black" style="text-align: center" Width="815px">
            <Columns>
                <asp:BoundField DataField="Ma_HD" HeaderText="Ma_HD" ReadOnly="True" SortExpression="Ma_HD" />
                <asp:BoundField DataField="Ma_SP" HeaderText="Ma_SP" ReadOnly="True" SortExpression="Ma_SP" />
                <asp:BoundField DataField="So_luong" HeaderText="So_luong" SortExpression="So_luong" />
                <asp:BoundField DataField="Don_Gia" HeaderText="Don_Gia" SortExpression="Don_Gia" />
                <asp:BoundField DataField="HOA_DON_Ma_HD" HeaderText="HOA_DON_Ma_HD" SortExpression="HOA_DON_Ma_HD" />
                <asp:BoundField DataField="SAN_PHAM_Ma_SP" HeaderText="SAN_PHAM_Ma_SP" SortExpression="SAN_PHAM_Ma_SP" />
                <asp:CommandField />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASS1_Thamnthpd01242_INF205ConnectionString %>" DeleteCommand="DELETE FROM [CHITIETHOADON] WHERE [Ma_HD] = @Ma_HD AND [Ma_SP] = @Ma_SP" InsertCommand="INSERT INTO [CHITIETHOADON] ([Ma_HD], [Ma_SP], [So_luong], [Don_Gia], [HOA_DON_Ma_HD], [SAN_PHAM_Ma_SP]) VALUES (@Ma_HD, @Ma_SP, @So_luong, @Don_Gia, @HOA_DON_Ma_HD, @SAN_PHAM_Ma_SP)" SelectCommand="SELECT * FROM [CHITIETHOADON]" UpdateCommand="UPDATE [CHITIETHOADON] SET [So_luong] = @So_luong, [Don_Gia] = @Don_Gia, [HOA_DON_Ma_HD] = @HOA_DON_Ma_HD, [SAN_PHAM_Ma_SP] = @SAN_PHAM_Ma_SP WHERE [Ma_HD] = @Ma_HD AND [Ma_SP] = @Ma_SP">
            <DeleteParameters>
                <asp:Parameter Name="Ma_HD" Type="String" />
                <asp:Parameter Name="Ma_SP" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma_HD" Type="String" />
                <asp:Parameter Name="Ma_SP" Type="String" />
                <asp:Parameter Name="So_luong" Type="Int32" />
                <asp:Parameter Name="Don_Gia" Type="Decimal" />
                <asp:Parameter Name="HOA_DON_Ma_HD" Type="String" />
                <asp:Parameter Name="SAN_PHAM_Ma_SP" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="So_luong" Type="Int32" />
                <asp:Parameter Name="Don_Gia" Type="Decimal" />
                <asp:Parameter Name="HOA_DON_Ma_HD" Type="String" />
                <asp:Parameter Name="SAN_PHAM_Ma_SP" Type="String" />
                <asp:Parameter Name="Ma_HD" Type="String" />
                <asp:Parameter Name="Ma_SP" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <br />
        <asp:FormView ID="FormView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Ma_HD,Ma_SP" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Both" Width="283px">
            <EditItemTemplate>
                Ma_HD:
                <asp:Label ID="Ma_HDLabel1" runat="server" Text='<%# Eval("Ma_HD") %>' />
                <br />
                Ma_SP:
                <asp:Label ID="Ma_SPLabel1" runat="server" Text='<%# Eval("Ma_SP") %>' />
                <br />
                So_luong:
                <asp:TextBox ID="So_luongTextBox" runat="server" Text='<%# Bind("So_luong") %>' />
                <br />
                Don_Gia:
                <asp:TextBox ID="Don_GiaTextBox" runat="server" Text='<%# Bind("Don_Gia") %>' />
                <br />
                HOA_DON_Ma_HD:
                <asp:TextBox ID="HOA_DON_Ma_HDTextBox" runat="server" Text='<%# Bind("HOA_DON_Ma_HD") %>' />
                <br />
                SAN_PHAM_Ma_SP:
                <asp:TextBox ID="SAN_PHAM_Ma_SPTextBox" runat="server" Text='<%# Bind("SAN_PHAM_Ma_SP") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Ma_HD:&nbsp;&nbsp;
                <asp:TextBox ID="Ma_HDTextBox" runat="server" Text='<%# Bind("Ma_HD") %>' />
                <br />
                Ma_SP:&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Ma_SPTextBox" runat="server" Text='<%# Bind("Ma_SP") %>' />
                <br />
                So_luong:
                <asp:TextBox ID="So_luongTextBox" runat="server" Text='<%# Bind("So_luong") %>' />
                <br />
                Don_Gia :
                <asp:TextBox ID="Don_GiaTextBox" runat="server" Text='<%# Bind("Don_Gia") %>' />
                <br />
                HOA_DON_Ma_HD:&nbsp;<asp:TextBox ID="HOA_DON_Ma_HDTextBox" runat="server" Text='<%# Bind("HOA_DON_Ma_HD") %>' />
                <br />
                SAN_PHAM_Ma_SP:
                <asp:TextBox ID="SAN_PHAM_Ma_SPTextBox" runat="server" Text='<%# Bind("SAN_PHAM_Ma_SP") %>' Height="16px" Width="186px" />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Ma_HD:
                <asp:Label ID="Ma_HDLabel" runat="server" Text='<%# Eval("Ma_HD") %>' />
                <br />
                Ma_SP:
                <asp:Label ID="Ma_SPLabel" runat="server" Text='<%# Eval("Ma_SP") %>' />
                <br />
                So_luong:
                <asp:Label ID="So_luongLabel" runat="server" Text='<%# Bind("So_luong") %>' />
                <br />
                Don_Gia:
                <asp:Label ID="Don_GiaLabel" runat="server" Text='<%# Bind("Don_Gia") %>' />
                <br />
                HOA_DON_Ma_HD:&nbsp;<asp:Label ID="HOA_DON_Ma_HDLabel" runat="server" Text='<%# Bind("HOA_DON_Ma_HD") %>' />
                <br />
                SAN_PHAM_Ma_SP:
                <asp:Label ID="SAN_PHAM_Ma_SPLabel" runat="server" Text='<%# Bind("SAN_PHAM_Ma_SP") %>' />
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
