Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Web.ASPxHtmlEditor

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
	End Sub
	Protected Sub ASPxGridView1_RowInserting(ByVal sender As Object, ByVal e As DevExpress.Web.Data.ASPxDataInsertingEventArgs)
		Dim grid As ASPxGridView = TryCast(sender, ASPxGridView)
		e.NewValues("ID") = Guid.NewGuid().ToString().Replace("-", "")
		Dim htmlEditor As ASPxHtmlEditor = TryCast(ASPxGridView1.FindEditFormTemplateControl("ASPxHtmlEditor1"), ASPxHtmlEditor)
		e.NewValues("DescriptionHtml") = htmlEditor.Html
	End Sub
	Protected Sub ASPxGridView1_RowUpdating(ByVal sender As Object, ByVal e As DevExpress.Web.Data.ASPxDataUpdatingEventArgs)
		Dim grid As ASPxGridView = TryCast(sender, ASPxGridView)
		Dim htmlEditor As ASPxHtmlEditor = TryCast(ASPxGridView1.FindEditFormTemplateControl("ASPxHtmlEditor1"), ASPxHtmlEditor)
		e.NewValues("DescriptionHtml") = htmlEditor.Html
	End Sub
End Class