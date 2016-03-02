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
            width: 42%;
        }
        .auto-style1 {
            font-size: large;
            text-decoration: underline;
            color: #333399;
        }
    
        .auto-style5 {
            font-size: x-large;
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
            <strong><span class="auto-style5">LOẠI SẢN PHẨM<br class="auto-style4" />
            </span>
            </strong>
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Ma_Loai" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="547px">
            <Columns>
                <asp:BoundField DataField="Ma_Loai" HeaderText="Ma_Loai" ReadOnly="True" SortExpression="Ma_Loai" />
                <asp:BoundField DataField="Ten_Loai" HeaderText="Ten_Loai" SortExpression="Ten_Loai" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASS1_Thamnthpd01242_INF205ConnectionString %>" DeleteCommand="DELETE FROM [LOAI_SAN_PHAM] WHERE [Ma_Loai] = @Ma_Loai" InsertCommand="INSERT INTO [LOAI_SAN_PHAM] ([Ma_Loai], [Ten_Loai]) VALUES (@Ma_Loai, @Ten_Loai)" SelectCommand="SELECT * FROM [LOAI_SAN_PHAM]" UpdateCommand="UPDATE [LOAI_SAN_PHAM] SET [Ten_Loai] = @Ten_Loai WHERE [Ma_Loai] = @Ma_Loai">
            <DeleteParameters>
                <asp:Parameter Name="Ma_Loai" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma_Loai" Type="String" />
                <asp:Parameter Name="Ten_Loai" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ten_Loai" Type="String" />
                <asp:Parameter Name="Ma_Loai" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <br />
        <asp:FormView ID="FormView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Ma_Loai" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Both" Width="283px">
            <EditItemTemplate>
                Ma_Loai:
                <asp:Label ID="Ma_LoaiLabel1" runat="server" Text='<%# Eval("Ma_Loai") %>' />
                <br />
                Ten_Loai:
                <asp:TextBox ID="Ten_LoaiTextBox" runat="server" Text='<%# Bind("Ten_Loai") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Ma_Loai:
                <asp:TextBox ID="Ma_LoaiTextBox" runat="server" Text='<%# Bind("Ma_Loai") %>' />
                <br />
                Ten_Loai:
                <asp:TextBox ID="Ten_LoaiTextBox" runat="server" Text='<%# Bind("Ten_Loai") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Ma_Loai:
                <asp:Label ID="Ma_LoaiLabel" runat="server" Text='<%# Eval("Ma_Loai") %>' />
                <br />
                Ten_Loai:
                <asp:Label ID="Ten_LoaiLabel" runat="server" Text='<%# Bind("Ten_Loai") %>' />
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
