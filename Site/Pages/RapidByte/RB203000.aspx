<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormView.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="RB203000.aspx.cs" Inherits="Page_RB203000" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormView.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
    <px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%" PrimaryView="Products" TypeName="RB.RapidByte.ProductMaint">
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
    <px:PXFormView ID="form" runat="server" DataSourceID="ds" Style="z-index: 100" Width="100%" DataMember="Products" TabIndex="800">
		<Template>
			<px:PXLayoutRule runat="server" StartRow="True" ControlSize="M" LabelsWidth="S"/>
		    <px:PXSelector ID="edProductCD" runat="server" DataField="ProductCD">
            </px:PXSelector>
            <px:PXTextEdit ID="edProductName" runat="server" DataField="ProductName">
            </px:PXTextEdit>
            <px:PXCheckBox ID="edActive" runat="server" DataField="Active" Text="Active">
            </px:PXCheckBox>
            <px:PXTextEdit ID="edStockUnit" runat="server" DataField="StockUnit">
            </px:PXTextEdit>
            <px:PXNumberEdit ID="edUnitPrice" runat="server" DataField="UnitPrice">
            </px:PXNumberEdit>
            <px:PXNumberEdit ID="edMinAvailQty" runat="server" DataField="MinAvailQty">
            </px:PXNumberEdit>
		    <px:PXNumberEdit ID="edAvailQty" runat="server" DataField="AvailQty">
            </px:PXNumberEdit>
		</Template>
		<AutoSize Container="Window" Enabled="True" MinHeight="200" />
	</px:PXFormView>
</asp:Content>
