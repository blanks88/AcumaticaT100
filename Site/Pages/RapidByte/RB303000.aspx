<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="RB303000.aspx.cs" Inherits="Page_RB303000" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
    <px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%" SuspendUnloading="False" TypeName="RB.RapidByte.ReceiptEntry" PrimaryView="Receipts">
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
    <px:PXFormView ID="form" runat="server" DataSourceID="ds" Style="z-index: 100" 
		Width="100%" DataMember="Receipts" TabIndex="1000">
		<Template>
			<px:PXLayoutRule runat="server" StartRow="True" ControlSize="SM" LabelsWidth="S"/>
		    <px:PXDropDown ID="edDocType" runat="server" DataField="DocType">
            </px:PXDropDown>
            <px:PXSelector ID="edDocNbr" runat="server" DataField="DocNbr" AutoRefresh="True">
            </px:PXSelector>
            <px:PXCheckBox ID="edReleased" runat="server" DataField="Released" Text="Released" Enabled="False">
            </px:PXCheckBox>
            <px:PXDateTimeEdit ID="edLastModifiedDateTime" runat="server" DataField="LastModifiedDateTime" Enabled="False" Size="SM">
            </px:PXDateTimeEdit>
            <px:PXLayoutRule runat="server" StartColumn="True" ControlSize="XM" LabelsWidth="S">
            </px:PXLayoutRule>
            <px:PXSelector ID="edSupplierID" runat="server" DataField="SupplierID">
            </px:PXSelector>
            <px:PXDateTimeEdit ID="edDocDate" runat="server" DataField="DocDate">
            </px:PXDateTimeEdit>
            <px:PXTextEdit ID="edExtDocNbr" runat="server" DataField="ExtDocNbr">
            </px:PXTextEdit>
            <px:PXLayoutRule runat="server" ColumnSpan="2">
            </px:PXLayoutRule>
            <px:PXTextEdit ID="edDescription" runat="server" DataField="Description">
            </px:PXTextEdit>
            <px:PXLayoutRule runat="server" StartColumn="True" ControlSize="S" LabelsWidth="S">
            </px:PXLayoutRule>
            <px:PXSelector ID="edCreatedByID" runat="server" DataField="CreatedByID" DisplayMode="Text" Enabled="False">
            </px:PXSelector>
            <px:PXNumberEdit ID="edTotalQty" runat="server" DataField="TotalQty" Enabled="False">
            </px:PXNumberEdit>
            <px:PXNumberEdit ID="edTotalCost" runat="server" DataField="TotalCost" Enabled="False">
            </px:PXNumberEdit>
		</Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
    <px:PXGrid ID="grid" runat="server" DataSourceID="ds" Style="z-index: 100" 
		Width="100%" Height="150px" SkinID="Details" TabIndex="100">
		<Levels>
			<px:PXGridLevel DataKeyNames="DocType,DocNbr,LineNbr" DataMember="ReceiptTransactions">
			    <Columns>
                    <px:PXGridColumn DataField="ProductID" Width="140px" CommitChanges="True">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="Description" Width="200px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="TranQty" TextAlign="Right" Width="100px" CommitChanges="True">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="UnitPrice" TextAlign="Right" Width="100px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="Unit" Width="80px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="ConversionFactor" TextAlign="Right" Width="100px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="StockUnit" Width="80px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="ExtPrice" TextAlign="Right" Width="100px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                </Columns>
			</px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" />
	</px:PXGrid>
</asp:Content>
