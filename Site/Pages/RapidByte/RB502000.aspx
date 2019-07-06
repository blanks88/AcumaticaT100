<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="RB502000.aspx.cs" Inherits="Page_RB502000" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
    <px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%" PrimaryView="Filter" TypeName="RB.RapidByte.ReorderProcess">
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
    <px:PXFormView ID="form" runat="server" DataSourceID="ds" Style="z-index: 100" 
		Width="100%" DataMember="Filter" TabIndex="2700">
		<Template>
			<px:PXLayoutRule runat="server" StartRow="True" ControlSize="S" LabelsWidth="S" Merge="True"/>
		    <px:PXNumberEdit ID="edDiscrepancy" runat="server" DataField="Discrepancy" CommitChanges="True">
            </px:PXNumberEdit>
            <px:PXCheckBox ID="edActiveProducts" runat="server" DataField="ActiveProducts" Text="Active products only" CommitChanges="True">
            </px:PXCheckBox>
		    <px:PXLayoutRule runat="server">
            </px:PXLayoutRule>
		</Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
    <px:PXGrid ID="grid" runat="server" DataSourceID="ds" Style="z-index: 100" 
		Width="100%" Height="150px" SkinID="Inquire" TabIndex="800" SyncPosition="True">
		<Levels>
			<px:PXGridLevel DataKeyNames="ProductCD" DataMember="Records">
			    <RowTemplate>
                    <px:PXSelector ID="edSupplierID" runat="server" DataField="SupplierID" AutoRefresh="True">
                    </px:PXSelector>
                </RowTemplate>
			    <Columns>
                    <px:PXGridColumn AllowCheckAll="True" DataField="Selected" TextAlign="Center" Type="CheckBox" Width="60px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="ProductCD" Width="140px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="ProductName" Width="200px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="Discrepancy" TextAlign="Right" Width="100px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="SupplierID" Width="140px" CommitChanges="True">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="SupplierProduct__SupplierUnit" Width="80px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="SupplierProduct__SupplierPrice" TextAlign="Right" Width="100px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="AvailQty" TextAlign="Right" Width="100px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="StockUnit" Width="80px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="UnitPrice" TextAlign="Right" Width="100px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                </Columns>
			</px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" />
	</px:PXGrid>
</asp:Content>
