<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="RB302000.aspx.cs" Inherits="Page_RB302000" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
    <px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%" PrimaryView="Shipments" SuspendUnloading="False" TypeName="RB.RapidByte.ShipmentEntry">
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
    <px:PXFormView ID="form" runat="server" DataSourceID="ds" Style="z-index: 100" 
		Width="100%" DataMember="Shipments" TabIndex="1000">
		<Template>
			<px:PXLayoutRule runat="server" StartRow="True" ControlSize="SM" LabelsWidth="S"/>
		    <px:PXSelector ID="edShipmentNbr" runat="server" DataField="ShipmentNbr">
            </px:PXSelector>
            <px:PXDropDown ID="edShipmentType" runat="server" DataField="ShipmentType" CommitChanges="True">
            </px:PXDropDown>
            <px:PXDateTimeEdit ID="edDeliveryDate" runat="server" DataField="DeliveryDate">
            </px:PXDateTimeEdit>
            <px:PXSelector ID="edCustomerID" runat="server" DataField="CustomerID">
            </px:PXSelector>
            <px:PXLayoutRule runat="server" ColumnSpan="3">
            </px:PXLayoutRule>
            <px:PXTextEdit ID="edDescription" runat="server" DataField="Description">
            </px:PXTextEdit>
            <px:PXLayoutRule runat="server" StartColumn="True" ControlSize="S" LabelsWidth="S">
            </px:PXLayoutRule>
            <px:PXDateTimeEdit ID="edShipmentDate" runat="server" DataField="ShipmentDate">
            </px:PXDateTimeEdit>
            <px:PXDropDown ID="edStatus" runat="server" DataField="Status" CommitChanges="True">
            </px:PXDropDown>
            <px:PXDateTimeEdit ID="edDeliveryMaxDate" runat="server" DataField="DeliveryMaxDate">
            </px:PXDateTimeEdit>
            <px:PXLayoutRule runat="server" StartColumn="True" ControlSize="S" LabelsWidth="S">
            </px:PXLayoutRule>
            <px:PXNumberEdit ID="edTotalQty" runat="server" DataField="TotalQty" Enabled="False">
            </px:PXNumberEdit>
            <px:PXNumberEdit ID="edShippedQty" runat="server" DataField="ShippedQty" Enabled="False">
            </px:PXNumberEdit>
            <px:PXNumberEdit ID="edPendingQty" runat="server" DataField="PendingQty" Enabled="False">
            </px:PXNumberEdit>
		</Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
    <px:PXGrid ID="grid" runat="server" DataSourceID="ds" Style="z-index: 100" 
		Width="100%" Height="150px" SkinID="Details" TabIndex="-29936">
		<Levels>
			<px:PXGridLevel DataKeyNames="ShipmentNbr,ProductID" DataMember="ShipmentLines">
			    <RowTemplate>
                    <px:PXLayoutRule runat="server" StartRow="True" ControlSize="M" LabelsWidth="S" GroupCaption="Item Details">
                    </px:PXLayoutRule>
                    <px:PXSelector ID="edProductID" runat="server" DataField="ProductID" CommitChanges="True">
                    </px:PXSelector>
                    <px:PXTextEdit ID="edDescription" runat="server" DataField="Description">
                    </px:PXTextEdit>
                    <px:PXNumberEdit ID="edLineQty" runat="server" DataField="LineQty" CommitChanges="True">
                    </px:PXNumberEdit>
                    <px:PXCheckBox ID="edCancelled" runat="server" DataField="Cancelled" Text="Cancelled">
                    </px:PXCheckBox>
                    <px:PXLayoutRule runat="server" EndGroup="True">
                    </px:PXLayoutRule>
                    <px:PXLayoutRule runat="server" StartColumn="True" ControlSize="S" LabelsWidth="S" GroupCaption="Delivery">
                    </px:PXLayoutRule>
                    <px:PXDateTimeEdit ID="edShipmentDate" runat="server" DataField="ShipmentDate" CommitChanges="True">
                    </px:PXDateTimeEdit>
                    <px:PXDateTimeEdit ID="edShipmentTime" runat="server" DataField="ShipmentTime" TimeMode="True">
                    </px:PXDateTimeEdit>
                    <px:PXDateTimeEdit ID="edShipmentMinTime" runat="server" DataField="ShipmentMinTime" TimeMode="True">
                    </px:PXDateTimeEdit>
                    <px:PXDateTimeEdit ID="edShipmentMaxTime" runat="server" DataField="ShipmentMaxTime" TimeMode="True">
                    </px:PXDateTimeEdit>
                    <px:PXLayoutRule runat="server" EndGroup="True">
                    </px:PXLayoutRule>
                </RowTemplate>
                <Columns>
                    <px:PXGridColumn DataField="ProductID" Width="140px" CommitChanges="True">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="Description" Width="200px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="LineQty" TextAlign="Right" Width="100px" CommitChanges="True">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="Cancelled" TextAlign="Center" Type="CheckBox" Width="90px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="ShipmentDate" Width="120px" CommitChanges="True">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="ShipmentTime" Width="120px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="ShipmentMinTime" Width="120px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="ShipmentMaxTime" Width="120px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                </Columns>
			</px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" />
	    <Mode AllowFormEdit="True" />
	</px:PXGrid>
</asp:Content>
