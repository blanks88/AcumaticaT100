<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="RB401000.aspx.cs" Inherits="Page_RB401000" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
    <px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%" PrimaryView="Filter" TypeName="RB.RapidByte.SalesOrderInq">
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
    <px:PXFormView ID="form" runat="server" DataSourceID="ds" Style="z-index: 100" 
		Width="100%" DataMember="Filter" TabIndex="1000">
		<Template>
			<px:PXLayoutRule runat="server" StartRow="True" ControlSize="S" LabelsWidth="S" Merge="True"/>
		    <px:PXSelector ID="edCustomerID" runat="server" DataField="CustomerID" CommitChanges="True" Size="XM">
            </px:PXSelector>
            <px:PXDropDown ID="edStatus" runat="server" DataField="Status" CommitChanges="True" LabelWidth="50px">
            </px:PXDropDown>
		    <px:PXLayoutRule runat="server">
            </px:PXLayoutRule>
		</Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
    <px:PXGrid ID="grid" runat="server" DataSourceID="ds" Style="z-index: 100" 
		Width="100%" Height="150px" SkinID="Inquire" TabIndex="1200">
		<Levels>
			<px:PXGridLevel DataKeyNames="OrderNbr" DataMember="Orders">
			    <Columns>
                    <px:PXGridColumn DataField="OrderNbr" Width="140px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="OrderDate" Width="90px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="Status">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="CustomerID" Width="140px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="ShippedDate" Width="90px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                    <px:PXGridColumn DataField="OrderTotal" TextAlign="Right" Width="100px">
                        <ValueItems MultiSelect="False">
                        </ValueItems>
                    </px:PXGridColumn>
                </Columns>
			</px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" />
	</px:PXGrid>
</asp:Content>
