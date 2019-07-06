<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormView.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="RB101000.aspx.cs" Inherits="Page_RB101000" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormView.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
    <px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%" TypeName="RB.RapidByte.SetupMaint" PrimaryView="LastNumbers">
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
    <px:PXFormView ID="form" runat="server" DataSourceID="ds" Style="z-index: 100" Width="100%" DataMember="LastNumbers" TabIndex="800">
		<Template>
			<px:PXLayoutRule runat="server" StartRow="True" ControlSize="SM" LabelsWidth="SM"/>
		    <px:PXTextEdit ID="edReceiptLastDocNbr" runat="server" DataField="ReceiptLastDocNbr">
            </px:PXTextEdit>
            <px:PXTextEdit ID="edReturnLastDocNbr" runat="server" DataField="ReturnLastDocNbr">
            </px:PXTextEdit>
            <px:PXTextEdit ID="edSalesOrderLastNbr" runat="server" DataField="SalesOrderLastNbr">
            </px:PXTextEdit>
            <px:PXCheckBox ID="edAutoNumbering" runat="server" AlignLeft="True" DataField="AutoNumbering" Text="Auto Numbering">
            </px:PXCheckBox>
		</Template>
		<AutoSize Container="Window" Enabled="True" MinHeight="200" />
	</px:PXFormView>
</asp:Content>
