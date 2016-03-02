<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SANPHAM.aspx.cs" Inherits="SANPHAM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: x-large;
            color: #0000FF;
        }
         body {
            background: #5bbda3;
            margin: 0 auto;
            width: 90%;
        }
        .auto-style1 {
            font-size: large;
            text-decoration: underline;
            color: #333399;
        }
    </style>
</head>
<body>
    <p>
        &nbsp;</p>
    <form id="form1" runat="server">
    <div>
    
        <div class="auto-style1">
            <strong><span class="auto-style2">THÔNG TIN VỀ SẢN PHẨM</span></strong><br />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Ma_SP" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" style="text-align: center; color: #663300" Width="1100px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="Ma_SP" HeaderText="Ma_SP" ReadOnly="True" SortExpression="Ma_SP" />
                <asp:BoundField DataField="Ten_SP" HeaderText="Ten_SP" SortExpression="Ten_SP" />
                <asp:BoundField DataField="Don_vi_tinh" HeaderText="Don_vi_tinh" SortExpression="Don_vi_tinh" />
                <asp:BoundField DataField="Ma_Loai" HeaderText="Ma_Loai" SortExpression="Ma_Loai" />
                <asp:BoundField DataField="LOAI_SAN_PHAM_Ma_Loai" HeaderText="LOAI_SAN_PHAM_Ma_Loai" SortExpression="LOAI_SAN_PHAM_Ma_Loai" />
                <asp:CommandField />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASS1_Thamnthpd01242_INF205ConnectionString %>" DeleteCommand="DELETE FROM [SAN_PHAM] WHERE [Ma_SP] = @Ma_SP" InsertCommand="INSERT INTO [SAN_PHAM] ([Ma_SP], [Ten_SP], [Don_vi_tinh], [Ma_Loai], [LOAI_SAN_PHAM_Ma_Loai]) VALUES (@Ma_SP, @Ten_SP, @Don_vi_tinh, @Ma_Loai, @LOAI_SAN_PHAM_Ma_Loai)" SelectCommand="SELECT * FROM [SAN_PHAM]" UpdateCommand="UPDATE [SAN_PHAM] SET [Ten_SP] = @Ten_SP, [Don_vi_tinh] = @Don_vi_tinh, [Ma_Loai] = @Ma_Loai, [LOAI_SAN_PHAM_Ma_Loai] = @LOAI_SAN_PHAM_Ma_Loai WHERE [Ma_SP] = @Ma_SP">
            <DeleteParameters>
                <asp:Parameter Name="Ma_SP" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma_SP" Type="String" />
                <asp:Parameter Name="Ten_SP" Type="String" />
                <asp:Parameter Name="Don_vi_tinh" Type="String" />
                <asp:Parameter Name="Ma_Loai" Type="String" />
                <asp:Parameter Name="LOAI_SAN_PHAM_Ma_Loai" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ten_SP" Type="String" />
                <asp:Parameter Name="Don_vi_tinh" Type="String" />
                <asp:Parameter Name="Ma_Loai" Type="String" />
                <asp:Parameter Name="LOAI_SAN_PHAM_Ma_Loai" Type="String" />
                <asp:Parameter Name="Ma_SP" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:FormView ID="FormView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Ma_SP" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Both" Width="288px">
            <EditItemTemplate>
                Ma_SP:
                <asp:Label ID="Ma_SPLabel1" runat="server" Text='<%# Eval("Ma_SP") %>' />
                <br />
                Ten_SP:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Ten_SPTextBox" runat="server" Text='<%# Bind("Ten_SP") %>' />
                <br />
                Don_vi_tinh:
                <asp:TextBox ID="Don_vi_tinhTextBox" runat="server" Text='<%# Bind("Don_vi_tinh") %>' />
                <br />
                Ma_Loai:&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Ma_LoaiTextBox" runat="server" Text='<%# Bind("Ma_Loai") %>' />
                <br />
                LOAI_SAN_PHAM_Ma_Loai:
                <asp:TextBox ID="LOAI_SAN_PHAM_Ma_LoaiTextBox" runat="server" Text='<%# Bind("LOAI_SAN_PHAM_Ma_Loai") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Ma_SP:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Ma_SPTextBox" runat="server" Text='<%# Bind("Ma_SP") %>' />
                <br />
                Ten_SP:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Ten_SPTextBox" runat="server" Text='<%# Bind("Ten_SP") %>' />
                <br />
                Don_vi_tinh:
                <asp:TextBox ID="Don_vi_tinhTextBox" runat="server" Text='<%# Bind("Don_vi_tinh") %>' />
                <br />
                Ma_Loai:&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Ma_LoaiTextBox" runat="server" Text='<%# Bind("Ma_Loai") %>' />
                <br />
                LOAI_SAN_PHAM_Ma_Loai:
                <asp:TextBox ID="LOAI_SAN_PHAM_Ma_LoaiTextBox" runat="server" Height="16px" Text='<%# Bind("LOAI_SAN_PHAM_Ma_Loai") %>' Width="196px" />
                <br />
                <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Ma_SP:
                <asp:Label ID="Ma_SPLabel" runat="server" Text='<%# Eval("Ma_SP") %>' />
                <br />
                Ten_SP:
                <asp:Label ID="Ten_SPLabel" runat="server" Text='<%# Bind("Ten_SP") %>' />
                <br />
                Don_vi_tinh:
                <asp:Label ID="Don_vi_tinhLabel" runat="server" Text='<%# Bind("Don_vi_tinh") %>' />
                <br />
                Ma_Loai:
                <asp:Label ID="Ma_LoaiLabel" runat="server" Text='<%# Bind("Ma_Loai") %>' />
                <br />
                LOAI_SAN_PHAM_Ma_Loai:
                <asp:Label ID="LOAI_SAN_PHAM_Ma_LoaiLabel" runat="server" Text='<%# Bind("LOAI_SAN_PHAM_Ma_Loai") %>' />
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
