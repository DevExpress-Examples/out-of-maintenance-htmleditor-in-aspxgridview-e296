Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web.ASPxSpellChecker
Imports DevExpress.Web.ASPxEditors

Partial Public Class SpellCheckOptionsForm
	Inherits SpellCheckerUserControl
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		PrepareFormCheckBoxes()
		PrepareLanguagesCombo()
	End Sub

	Protected Overrides Function GetChildDxEdits() As ASPxEditBase()
		Return New ASPxEditBase() { chkbEmails, chkbMixedCase, chkbNumbers, chkbUpperCase, chkbUrls, comboLanguage, chkbTags }
	End Function

	Protected Overrides Function GetChildDxButtons() As ASPxButton()
		Return New ASPxButton() { btnCancel, btnOK }
	End Function

	Protected Sub PrepareFormCheckBoxes()
		Dim spellChecker As ASPxSpellChecker = (CType(NamingContainer, ASPxSpellChecker))
		chkbEmails.Checked = spellChecker.SettingsSpelling.IgnoreEmails
		chkbMixedCase.Checked = spellChecker.SettingsSpelling.IgnoreMixedCaseWords
		chkbNumbers.Checked = spellChecker.SettingsSpelling.IgnoreWordsWithNumber
		chkbUpperCase.Checked = spellChecker.SettingsSpelling.IgnoreUpperCaseWords
		chkbUrls.Checked = spellChecker.SettingsSpelling.IgnoreUrls
		chkbTags.Checked = spellChecker.SettingsSpelling.IgnoreMarkupTags
	End Sub
	Protected Sub PrepareLanguagesCombo()
		comboLanguage.Items.Clear()
		For i As Integer = 0 To SpellChecker.Dictionaries.Count - 1
			If comboLanguage.Items.FindByText(SpellChecker.Dictionaries(i).GetCulture().DisplayName) Is Nothing Then
				comboLanguage.Items.Add(SpellChecker.Dictionaries(i).GetCulture().DisplayName)
			End If
		Next i
		comboLanguage.SelectedItem = comboLanguage.Items.FindByText(SpellChecker.GetCulture().DisplayName)
	End Sub
End Class
