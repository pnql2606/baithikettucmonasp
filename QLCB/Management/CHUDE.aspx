<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Management.Master" AutoEventWireup="true" CodeBehind="CHUDE.aspx.cs" Inherits="QLCB.Management.CHUDE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CHUDE_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="488px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="CHUDE_ID" HeaderText="CHUDE_ID" ReadOnly="True" SortExpression="CHUDE_ID" />
            <asp:BoundField DataField="TENCD" HeaderText="TENCD" SortExpression="TENCD" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CsdlConnectionString1 %>" DeleteCommand="DELETE FROM [CHUDE] WHERE [CHUDE_ID] = @CHUDE_ID" InsertCommand="INSERT INTO [CHUDE] ([CHUDE_ID], [TENCD]) VALUES (@CHUDE_ID, @TENCD)" SelectCommand="SELECT * FROM [CHUDE]" UpdateCommand="UPDATE [CHUDE] SET [TENCD] = @TENCD WHERE [CHUDE_ID] = @CHUDE_ID">
        <DeleteParameters>
            <asp:Parameter Name="CHUDE_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CHUDE_ID" Type="String" />
            <asp:Parameter Name="TENCD" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TENCD" Type="String" />
            <asp:Parameter Name="CHUDE_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="CHUDE_ID" DataSourceID="SqlDataSource1" Height="50px" Width="484px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="CHUDE_ID" HeaderText="CHUDE_ID" ReadOnly="True" SortExpression="CHUDE_ID" />
            <asp:BoundField DataField="TENCD" HeaderText="TENCD" SortExpression="TENCD" />
            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" ShowDeleteButton="True" />
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
