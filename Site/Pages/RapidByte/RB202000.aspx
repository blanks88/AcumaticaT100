<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormView.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="RB202000.aspx.cs" Inherits="Page_RB202000" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormView.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
    <px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%" PrimaryView="Customers" SuspendUnloading="False" TypeName="RB.RapidByte.CustomerMaint">
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
    <px:PXFormView ID="form" runat="server" DataSourceID="ds" Style="z-index: 100" Width="100%" DataMember="Customers" TabIndex="800">
		<Template>
			<px:PXLayoutRule runat="server" StartRow="True" ControlSize="XM" LabelsWidth="S"/>
		    <px:PXSelector ID="edCustomerCD" runat="server" DataField="CustomerCD">
            </px:PXSelector>
            <px:PXTextEdit ID="edCompanyName" runat="server" DataField="CompanyName">
            </px:PXTextEdit>
            <px:PXTextEdit ID="edContactName" runat="server" DataField="ContactName">
            </px:PXTextEdit>
            <px:PXTextEdit ID="edPhone" runat="server" DataField="Phone">
            </px:PXTextEdit>
            <px:PXTextEdit ID="edFax" runat="server" DataField="Fax">
            </px:PXTextEdit>
            <px:PXLayoutRule runat="server" StartColumn="True" ControlSize="M" LabelsWidth="S">
            </px:PXLayoutRule>
            <px:PXTextEdit ID="edAddress" runat="server" DataField="Address">
            </px:PXTextEdit>
            <px:PXTextEdit ID="edCity" runat="server" DataField="City">
            </px:PXTextEdit>
            <px:PXSelector ID="edCountryCD" runat="server" DataField="CountryCD" CommitChanges="True">
            </px:PXSelector>
            <px:PXTextEdit ID="edRegion" runat="server" DataField="Region" CommitChanges="True">
            </px:PXTextEdit>
            <px:PXTextEdit ID="edPostalCode" runat="server" DataField="PostalCode">
            </px:PXTextEdit>
		</Template>
		<AutoSize Container="Window" Enabled="True" MinHeight="200" />
	</px:PXFormView>
</asp:Content>
