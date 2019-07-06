<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormTab.master" AutoEventWireup="true"
    ValidateRequest="false" CodeFile="RB204000.aspx.cs" Inherits="Page_RB204000" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormTab.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" runat="Server">
    <px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%" PrimaryView="Suppliers" TypeName="RB.RapidByte.SupplierMaint">
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" runat="Server">
    <px:PXFormView ID="form" runat="server" DataSourceID="ds" Style="z-index: 100" Width="100%" DataMember="Suppliers" TabIndex="1700">
		<Template>
			<px:PXLayoutRule runat="server" StartRow="True" ControlSize="SM" LabelsWidth="XS"/>
		    <px:PXSelector ID="edSupplierCD" runat="server" DataField="SupplierCD">
            </px:PXSelector>
            <px:PXLayoutRule runat="server" StartColumn="True" ControlSize="M" LabelsWidth="S">
            </px:PXLayoutRule>
            <px:PXTextEdit ID="edCompanyName" runat="server" DataField="CompanyName">
            </px:PXTextEdit>
		</Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" runat="Server">
    <px:PXTab ID="tab" runat="server" Width="100%" Height="150px" DataSourceID="ds" DataMember="SelectedSupplier">
		<Items>
			<px:PXTabItem Text="Supplier Details">
			    <Template>
                    <px:PXLayoutRule runat="server" StartRow="True" ControlSize="XM" LabelsWidth="S">
                    </px:PXLayoutRule>
                    <px:PXTextEdit ID="edContactName" runat="server" DataField="ContactName">
                    </px:PXTextEdit>
                    <px:PXTextEdit ID="edPhone" runat="server" DataField="Phone">
                    </px:PXTextEdit>
                    <px:PXTextEdit ID="edFax" runat="server" DataField="Fax">
                    </px:PXTextEdit>
                    <px:PXTextEdit ID="edAddress" runat="server" DataField="Address">
                    </px:PXTextEdit>
                    <px:PXTextEdit ID="edCity" runat="server" DataField="City">
                    </px:PXTextEdit>
                    <px:PXSelector ID="edCountryCD" runat="server" DataField="CountryCD">
                    </px:PXSelector>
                    <px:PXTextEdit ID="edRegion" runat="server" DataField="Region">
                    </px:PXTextEdit>
                    <px:PXTextEdit ID="edPostalCode" runat="server" DataField="PostalCode">
                    </px:PXTextEdit>
                </Template>
			</px:PXTabItem>
			<px:PXTabItem Text="Products">
			    <Template>
                    <px:PXGrid ID="PXGrid1" runat="server" DataSourceID="ds" SkinID="DetailsInTab" Width="100%">
                        <Levels>
                            <px:PXGridLevel DataKeyNames="SupplierID,ProductID" DataMember="SupplierProducts">
                                <Columns>
                                    <px:PXGridColumn DataField="ProductID" Width="140px">
                                        <ValueItems MultiSelect="False">
                                        </ValueItems>
                                    </px:PXGridColumn>
                                    <px:PXGridColumn DataField="SupplierUnit" Width="80px">
                                        <ValueItems MultiSelect="False">
                                        </ValueItems>
                                    </px:PXGridColumn>
                                    <px:PXGridColumn DataField="ConversionFactor" TextAlign="Right" Width="100px">
                                        <ValueItems MultiSelect="False">
                                        </ValueItems>
                                    </px:PXGridColumn>
                                    <px:PXGridColumn DataField="SupplierPrice" TextAlign="Right" Width="100px">
                                        <ValueItems MultiSelect="False">
                                        </ValueItems>
                                    </px:PXGridColumn>
                                    <px:PXGridColumn DataField="Product__Active" TextAlign="Center" Type="CheckBox" Width="60px">
                                        <ValueItems MultiSelect="False">
                                        </ValueItems>
                                    </px:PXGridColumn>
                                    <px:PXGridColumn DataField="Product__StockUnit" Width="80px">
                                        <ValueItems MultiSelect="False">
                                        </ValueItems>
                                    </px:PXGridColumn>
                                    <px:PXGridColumn DataField="Product__UnitPrice" TextAlign="Right" Width="100px">
                                        <ValueItems MultiSelect="False">
                                        </ValueItems>
                                    </px:PXGridColumn>
                                    <px:PXGridColumn DataField="LastSupplierPrice" TextAlign="Right" Width="100px">
                                        <ValueItems MultiSelect="False">
                                        </ValueItems>
                                    </px:PXGridColumn>
                                    <px:PXGridColumn DataField="LastPurchaseDate" Width="120px">
                                        <ValueItems MultiSelect="False">
                                        </ValueItems>
                                    </px:PXGridColumn>
                                    <px:PXGridColumn DataField="MinOrderQty" TextAlign="Right" Width="100px">
                                        <ValueItems MultiSelect="False">
                                        </ValueItems>
                                    </px:PXGridColumn>
                                </Columns>
                            </px:PXGridLevel>
                        </Levels>
                        <AutoSize Enabled="True" />
                    </px:PXGrid>
                </Template>
			</px:PXTabItem>
		</Items>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" />
	</px:PXTab>
</asp:Content>
