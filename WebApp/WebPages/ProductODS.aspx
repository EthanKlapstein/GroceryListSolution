<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductODS.aspx.cs" Inherits="WebApp.WebPages.ProductODS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ObjectDataSource ID="CatgoryODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListAllCategories" TypeName="GroceryListSystem.BLL.CategoryController"></asp:ObjectDataSource>
    <asp:DropDownList ID="CategoryDDL" runat="server" DataSourceID="CatgoryODS" DataTextField="Description" DataValueField="CategoryID" ></asp:DropDownList>
    <asp:Button ID="FetchButton" runat="server" Text="Search"/>

    <asp:ObjectDataSource ID="ProductGridODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ProductsByCategory" TypeName="GroceryListSystem.BLL.ProductController">
        <SelectParameters>
            <asp:ControlParameter ControlID="CategoryDDL" PropertyName="SelectedValue" DefaultValue="null" Name="categoryid" Type="Int32"></asp:ControlParameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:GridView ID="ProductGridView" runat="server" AutoGenerateColumns="False" DataSourceID="ProductGridODS" AllowPaging="True" CssClass="table">
        <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID"></asp:BoundField>
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description"></asp:BoundField>
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price"></asp:BoundField>
            <asp:BoundField DataField="Discount" HeaderText="Discount" SortExpression="Discount"></asp:BoundField>
            <asp:BoundField DataField="UnitSize" HeaderText="UnitSize" SortExpression="UnitSize"></asp:BoundField>
            <asp:CheckBoxField DataField="Taxable" HeaderText="Taxable" SortExpression="Taxable"></asp:CheckBoxField>
        </Columns>
    </asp:GridView>
</asp:Content>
