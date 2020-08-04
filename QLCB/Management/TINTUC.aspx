<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Management.Master" AutoEventWireup="true" CodeBehind="TINTUC.aspx.cs" Inherits="QLCB.Management.TINTUC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Tin_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="783px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="Tin_ID" HeaderText="Tin_ID" ReadOnly="True" SortExpression="Tin_ID" />
        <asp:BoundField DataField="NOIDUNG" HeaderText="NOIDUNG" SortExpression="NOIDUNG" />
        <asp:BoundField DataField="NGAYGUI" HeaderText="NGAYGUI" SortExpression="NGAYGUI" />
        <asp:BoundField DataField="TGIA_ID" HeaderText="TGIA_ID" SortExpression="TGIA_ID" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CsdlConnectionString1 %>" SelectCommand="SELECT * FROM [TINTUC]"></asp:SqlDataSource>
<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Tin_ID" DataSourceID="SqlDataSource1" Height="50px" Width="782px" CellPadding="4" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
    <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
    <Fields>
        <asp:BoundField DataField="Tin_ID" HeaderText="Tin_ID" ReadOnly="True" SortExpression="Tin_ID" />
        <asp:BoundField DataField="NOIDUNG" HeaderText="NOIDUNG" SortExpression="NOIDUNG" />
        <asp:BoundField DataField="NGAYGUI" HeaderText="NGAYGUI" SortExpression="NGAYGUI" />
        <asp:BoundField DataField="TGIA_ID" HeaderText="TGIA_ID" SortExpression="TGIA_ID" />
    </Fields>
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
</asp:DetailsView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpMainContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpMainContent1" runat="server">
</asp:Content>
