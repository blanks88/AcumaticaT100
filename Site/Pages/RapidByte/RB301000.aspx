<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="RB301000.aspx.cs" Inherits="Page_RB301000" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
    <px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%" TypeName="RB.RapidByte.SalesOrderEntry" PrimaryView="Orders" SuspendUnloading="False">
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
    <px:PXFormView ID="form" runat="server" DataSourceID="ds" Style="z-index: 100" 
		Width="100%" DataMember="Orders" TabIndex="1000">
		<Template>
			<px:PXLayoutRule runat="server" StartRow="True" ControlSize="S" LabelsWidth="S"/>
		    <px:PXSelector ID="edOrderNbr" runat="server" DataField="OrderNbr">
            </px:PXSelector>
            <px:PXDateTimeEdit ID="edOrderDate" runat="server" DataField="OrderDate">
            </px:PXDateTimeEdit>
            <px:PXDropDown ID="edStatus" runat="server" DataField="Status" Enabled="False">
            </px:PXDropDown>
            <px:PXCheckBox ID="edHold" runat="server" DataField="Hold" Text="Hold" CommitChanges="True">
            </px:PXCheckBox>
            <px:PXLayoutRule runat="server" StartColumn="True" ControlSize="XM" LabelsWidth="S">
            </px:PXLayoutRule>
            <px:PXSelector ID="edCustomerID" runat="server" DataField="CustomerID">
            </px:PXSelector>
            <px:PXDateTimeEdit ID="edRequiredDate" runat="server" DataField="RequiredDate">
            </px:PXDateTimeEdit>
            <px:PXDateTimeEdit ID="edShippedDate" runat="server" DataField="ShippedDate" Enabled="False">
            </px:PXDateTimeEdit>
            <px:PXLayoutRule runat="server" ColumnSpan="2">
            </px:PXLayoutRule>
            <px:PXTextEdit ID="edDescription" runat="server" DataField="Description">
            </px:PXTextEdit>
            <px:PXLayoutRule runat="server" StartColumn="True" ControlSize="XM" LabelsWidth="S">
            </px:PXLayoutRule>
            <px:PXNumberEdit ID="edLinesTotal" runat="server" DataField="LinesTotal" Enabled="False">
            </px:PXNumberEdit>
            <px:PXNumberEdit ID="edTaxTotal" runat="server" DataField="TaxTotal" Enabled="False">
            </px:PXNumberEdit>
            <px:PXNumberEdit ID="edOrderTotal" runat="server" DataField="OrderTotal" Enabled="False">
            </px:PXNumberEdit>
		</Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
    <px:PXGrid ID="grid" runat="server" DataSourceID="ds" Style="z-index: 100" 
		Width="100%" Height="150px" SkinID="Details" TabIndex="1200">
		<Levels>
			<px:PXGridLevel DataMember="OrderDetails">
			    <Columns>
                    <px:PXGridColumn DataField="ProductID" Width="140px" CommitChanges="True">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="UnitPrice" TextAlign="Right" Width="100px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="OrderQty" TextAlign="Right" Width="100px" CommitChanges="True">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="StockUnit" Width="80px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="TaxAmt" TextAlign="Right" Width="100px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="DiscPct" TextAlign="Right" Width="100px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="LinePrice" TextAlign="Right" Width="100px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                </Columns>
			</px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" />
	</px:PXGrid>
</asp:Content>
