<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Management.Master" AutoEventWireup="true" CodeBehind="TACGIA.aspx.cs" Inherits="QLCB.Management.TACGIA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TGIA_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="427px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="TGIA_ID" HeaderText="TGIA_ID" ReadOnly="True" SortExpression="TGIA_ID" />
            <asp:BoundField DataField="TENTG" HeaderText="TENTG" SortExpression="TENTG" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CsdlConnectionString1 %>" DeleteCommand="DELETE FROM [TACGIA] WHERE [TGIA_ID] = @TGIA_ID" InsertCommand="INSERT INTO [TACGIA] ([TGIA_ID], [TENTG], [EMAIL]) VALUES (@TGIA_ID, @TENTG, @EMAIL)" ProviderName="<%$ ConnectionStrings:CsdlConnectionString1.ProviderName %>" SelectCommand="SELECT [TGIA_ID], [TENTG], [EMAIL] FROM [TACGIA]" UpdateCommand="UPDATE [TACGIA] SET [TENTG] = @TENTG, [EMAIL] = @EMAIL WHERE [TGIA_ID] = @TGIA_ID">
        <DeleteParameters>
            <asp:Parameter Name="TGIA_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TGIA_ID" Type="String" />
            <asp:Parameter Name="TENTG" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TENTG" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="TGIA_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="TGIA_ID" DataSourceID="SqlDataSource1" Height="50px" Width="426px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="TGIA_ID" HeaderText="TGIA_ID" ReadOnly="True" SortExpression="TGIA_ID" />
            <asp:BoundField DataField="TENTG" HeaderText="TENTG" SortExpression="TENTG" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    </asp:DetailsView>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpMainContent1" runat="server">
</asp:Content>
