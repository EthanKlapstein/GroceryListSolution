<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductCRUD.aspx.cs" Inherits="WebApp.WebPages.ProductCRUD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ObjectDataSource ID="CategoryODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListAllCategories" TypeName="GroceryListSystem.BLL.CategoryController"></asp:ObjectDataSource>
        <asp:ListView ID="ProductListView" runat="server" DataSourceID="ProductODS" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color: #FAFAD2; color: #284775;">
                    <td>
                        <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                        <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                    </td>
                    <td>
                        <asp:Label Text='<%# Eval("ProductID") %>' runat="server" ID="ProductIDLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Price") %>' runat="server" ID="PriceLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Discount") %>' runat="server" ID="DiscountLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("UnitSize") %>' runat="server" ID="UnitSizeLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("CategoryID") %>' runat="server" ID="CategoryIDLabel" /></td>
                    <td>
                        <asp:CheckBox Checked='<%# Eval("Taxable") %>' runat="server" ID="TaxableCheckBox" Enabled="false" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Category") %>' runat="server" ID="CategoryLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("DescriptionUnitSize") %>' runat="server" ID="DescriptionUnitSizeLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("OrderLists") %>' runat="server" ID="OrderListsLabel" /></td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #FFCC66; color: #000080;">
                    <td>
                        <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                        <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                    </td>
                    <td>
                        <asp:TextBox Text='<%# Bind("ProductID") %>' runat="server" ID="ProductIDTextBox" ReadOnly="True" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("Description") %>' runat="server" ID="DescriptionTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("Price") %>' runat="server" ID="PriceTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("Discount") %>' runat="server" ID="DiscountTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("UnitSize") %>' runat="server" ID="UnitSizeTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("CategoryID") %>' runat="server" ID="CategoryIDTextBox" /></td>
                    <td>
                        <asp:CheckBox Checked='<%# Bind("Taxable") %>' runat="server" ID="TaxableCheckBox" /></td>
                    <td>
                        <asp:DropDownList Text='<%# Bind("Category") %>' runat="server" ID="CategoryDDL" DataSourceID="CategoryODS" DataTextField="Description" DataValueField="CategoryID" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("DescriptionUnitSize") %>' runat="server" ID="DescriptionUnitSizeTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("OrderLists") %>' runat="server" ID="OrderListsTextBox" /></td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                        <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                    </td>
                    <td>
                        <asp:TextBox Text='<%# Bind("ProductID") %>' runat="server" ID="ProductIDTextBox" ReadOnly="True" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("Description") %>' runat="server" ID="DescriptionTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("Price") %>' runat="server" ID="PriceTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("Discount") %>' runat="server" ID="DiscountTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("UnitSize") %>' runat="server" ID="UnitSizeTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("CategoryID") %>' runat="server" ID="CategoryIDTextBox" /></td>
                    <td>
                        <asp:CheckBox Checked='<%# Bind("Taxable") %>' runat="server" ID="TaxableCheckBox" /></td>
                    <td>
                        <asp:DropDownList Text='<%# Bind("Category") %>' runat="server" ID="CategoryDDL" DataSourceID="CategoryODS" DataTextField="Description" DataValueField="CategoryID" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("DescriptionUnitSize") %>' runat="server" ID="DescriptionUnitSizeTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("OrderLists") %>' runat="server" ID="OrderListsTextBox" /></td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #FFFBD6; color: #333333;">
                    <td>
                        <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                        <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                    </td>
                    <td>
                        <asp:Label Text='<%# Eval("ProductID") %>' runat="server" ID="ProductIDLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Price") %>' runat="server" ID="PriceLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Discount") %>' runat="server" ID="DiscountLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("UnitSize") %>' runat="server" ID="UnitSizeLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("CategoryID") %>' runat="server" ID="CategoryIDLabel" /></td>
                    <td>
                        <asp:CheckBox Checked='<%# Eval("Taxable") %>' runat="server" ID="TaxableCheckBox" Enabled="false" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Category") %>' runat="server" ID="CategoryLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("DescriptionUnitSize") %>' runat="server" ID="DescriptionUnitSizeLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("OrderLists") %>' runat="server" ID="OrderListsLabel" /></td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table runat="server" id="itemPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                                <tr runat="server" style="background-color: #FFFBD6; color: #333333;">
                                    <th runat="server"></th>
                                    <th runat="server">ProductID</th>
                                    <th runat="server">Description</th>
                                    <th runat="server">Price</th>
                                    <th runat="server">Discount</th>
                                    <th runat="server">UnitSize</th>
                                    <th runat="server">CategoryID</th>
                                    <th runat="server">Taxable</th>
                                    <th runat="server">Category</th>
                                    <th runat="server">DescriptionUnitSize</th>
                                    <th runat="server">OrderLists</th>
                                </tr>
                                <tr runat="server" id="itemPlaceholder"></tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center; background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif; color: #333333;">
                            <asp:DataPager runat="server" ID="DataPager1">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                                    <asp:NumericPagerField></asp:NumericPagerField>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #FFCC66; font-weight: bold; color: #000080;">
                    <td>
                        <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                        <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                    </td>
                    <td>
                        <asp:Label Text='<%# Eval("ProductID") %>' runat="server" ID="ProductIDLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Price") %>' runat="server" ID="PriceLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Discount") %>' runat="server" ID="DiscountLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("UnitSize") %>' runat="server" ID="UnitSizeLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("CategoryID") %>' runat="server" ID="CategoryIDLabel" /></td>
                    <td>
                        <asp:CheckBox Checked='<%# Eval("Taxable") %>' runat="server" ID="TaxableCheckBox" Enabled="false" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Category") %>' runat="server" ID="CategoryLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("DescriptionUnitSize") %>' runat="server" ID="DescriptionUnitSizeLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("OrderLists") %>' runat="server" ID="OrderListsLabel" /></td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="ProductODS" runat="server" DataObjectTypeName="GroceryList.Data.Entities.Product" DeleteMethod="DeleteTerritory" InsertMethod="AddProduct" OldValuesParameterFormatString="original_{0}" SelectMethod="ListAllProducts" TypeName="GroceryListSystem.BLL.ProductController" UpdateMethod="UpdateProduct"></asp:ObjectDataSource>
    </div>
    </form>
</body>
</html>
