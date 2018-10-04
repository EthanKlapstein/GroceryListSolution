<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductCRUD.aspx.cs" Inherits="WebApp.WebPages.ProductCRUD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ObjectDataSource ID="ProductODS" runat="server" DataObjectTypeName="GroceryList.Data.Entities.Product" DeleteMethod="DeleteTerritory" InsertMethod="AddProduct" OldValuesParameterFormatString="original_{0}" SelectMethod="ListAllProducts" TypeName="GroceryListSystem.BLL.ProductController" UpdateMethod="UpdateProduct"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="CategoryODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListAllCategories" TypeName="GroceryListSystem.BLL.CategoryController"></asp:ObjectDataSource>
    <asp:GridView ID="ProductGridView" runat="server" AutoGenerateColumns="False" DataSourceID="ProductODS" AllowPaging="True" cssclass="table">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" ReadOnly="True"></asp:BoundField>
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description"></asp:BoundField>
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price"></asp:BoundField>
            <asp:BoundField DataField="Discount" HeaderText="Discount" SortExpression="Discount"></asp:BoundField>
            <asp:BoundField DataField="UnitSize" HeaderText="UnitSize" SortExpression="UnitSize"></asp:BoundField>
            <asp:TemplateField HeaderText="Category" SortExpression="CategoryID">
                <EditItemTemplate>
                    <asp:DropDownList ID="CategoryDDL" runat="server" DataSourceID="CategoryODS" DataTextField="Description" DataValueField="CategoryID"></asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Bind("CategoryID") %>' ID="Label1"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:CheckBoxField DataField="Taxable" HeaderText="Taxable" SortExpression="Taxable"></asp:CheckBoxField>
        </Columns>
    </asp:GridView>
</asp:Content>
