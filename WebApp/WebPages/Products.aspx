<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WebApp.WebPages.Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="CategoryDDL" runat="server" DataSourceID="CategoryDDLODS" DataTextField="Description" DataValueField="CategoryID" AutoPostBack="True"></asp:DropDownList>
        <asp:ObjectDataSource ID="CategoryDDLODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListAllCategories" TypeName="GroceryListSystem.BLL.CategoryController"></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ProductsByCategoryODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ProductsByCategory" TypeName="GroceryListSystem.BLL.ProductController">
            <SelectParameters>
                <asp:ControlParameter ControlID="CategoryDDL" PropertyName="SelectedValue" DefaultValue="null" Name="categoryid" Type="Int32"></asp:ControlParameter>
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ListView ID="ProductListView" runat="server" DataSourceID="ProductsByCategoryODS">
            <AlternatingItemTemplate>
                <tr style="">
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
                <tr style="">
                    <td>
                        <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                        <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                    </td>
                    <td>
                        <asp:TextBox Text='<%# Bind("ProductID") %>' runat="server" ID="ProductIDTextBox" /></td>
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
                        <asp:TextBox Text='<%# Bind("Category") %>' runat="server" ID="CategoryTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("DescriptionUnitSize") %>' runat="server" ID="DescriptionUnitSizeTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("OrderLists") %>' runat="server" ID="OrderListsTextBox" /></td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
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
                        <asp:TextBox Text='<%# Bind("ProductID") %>' runat="server" ID="ProductIDTextBox" /></td>
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
                        <asp:TextBox Text='<%# Bind("Category") %>' runat="server" ID="CategoryTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("DescriptionUnitSize") %>' runat="server" ID="DescriptionUnitSizeTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("OrderLists") %>' runat="server" ID="OrderListsTextBox" /></td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
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
                            <table runat="server" id="itemPlaceholderContainer" style="" border="0">
                                <tr runat="server" style="">
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
                        <td runat="server" style="">
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
                <tr style="">
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
    </div>
    </form>
</body>
</html>
