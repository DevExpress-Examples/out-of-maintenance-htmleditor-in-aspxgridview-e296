<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.2" Namespace="DevExpress.Web.ASPxEditors"
	TagPrefix="dxe" %>

<%@ Register Assembly="DevExpress.Web.ASPxSpellChecker.v8.2" Namespace="DevExpress.Web.ASPxSpellChecker"
	TagPrefix="dxwsc" %>
<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v8.2" Namespace="DevExpress.Web.ASPxHtmlEditor"
	TagPrefix="dxhe" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v8.2" Namespace="DevExpress.Web.ASPxGridView"
	TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.2" Namespace="DevExpress.Web.ASPxEditors"
	TagPrefix="dxe" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
		<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Data_28072008.mdb"
			SelectCommand="SELECT * FROM [Table1]">
		</asp:AccessDataSource>
		<dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" Width="369px" OnRowInserting="ASPxGridView1_RowInserting" OnRowUpdating="ASPxGridView1_RowUpdating" DataSourceID="AccessDataSource1" KeyFieldName="ID">
			<Templates>
				<EditForm>
					<dxhe:ASPxHtmlEditor ID="ASPxHtmlEditor1" runat="server" Html='<%#Eval("DescriptionHtml")%>'><SettingsImageUpload><ValidationSettings AllowedContentTypes="image/jpeg,image/pjpeg,image/gif,image/png,image/x-png"></ValidationSettings></SettingsImageUpload></dxhe:ASPxHtmlEditor>
					<br />
					<div style="text-align: right; padding: 2px 2px 2px 2px">
						<dxwgv:ASPxGridViewTemplateReplacement ID="UpdateButton" ReplacementType="EditFormUpdateButton"
							runat="server">
						</dxwgv:ASPxGridViewTemplateReplacement>
						<dxwgv:ASPxGridViewTemplateReplacement ID="CancelButton" ReplacementType="EditFormCancelButton"
							runat="server">
						</dxwgv:ASPxGridViewTemplateReplacement>
					</div>
				</EditForm>
			</Templates>
			<Columns>
				<dxwgv:GridViewCommandColumn VisibleIndex="0">
					<EditButton Visible="True">
					</EditButton>
				</dxwgv:GridViewCommandColumn>
				<dxwgv:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1">
					<EditFormSettings Visible="False" />
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="Name" VisibleIndex="2">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="DescriptionHtml" VisibleIndex="3">
					<PropertiesTextEdit EncodeHtml="False">
					</PropertiesTextEdit>
				</dxwgv:GridViewDataTextColumn>
			</Columns>
		</dxwgv:ASPxGridView>        
	</form>
</body>
</html>
