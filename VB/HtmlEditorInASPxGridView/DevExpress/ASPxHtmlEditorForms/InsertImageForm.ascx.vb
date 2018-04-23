'
'{************************************************************************************}
'{                                                                                    }
'{   DO NOT MODIFY THIS FILE!                                                         }
'{                                                                                    }
'{   It will be overwritten without prompting when a new version becomes              }
'{   available. All your changes will be lost.                                        }
'{                                                                                    }
'{   This file contains the default template and is required for the form             }
'{   rendering. Improper modifications may result in incorrect behavior of            }
'{   dialog forms.                                                                    }
'{                                                                                    }
'{************************************************************************************}
'

Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.IO
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web.ASPxHtmlEditor
Imports DevExpress.Web

Partial Public Class InsertImageForm
	Inherits HtmlEditorUserControl

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		ckbSaveToServer.ClientVisible = HtmlEditor.Settings.AllowInsertDirectImageUrls AndAlso Not String.IsNullOrEmpty(HtmlEditor.SettingsImageUpload.UploadImageFolder)
		rblFromThisComputer.ClientEnabled = Not String.IsNullOrEmpty(HtmlEditor.SettingsImageUpload.UploadImageFolder)
	End Sub
	Protected Overrides Function GetChildDxEdits() As ASPxEditBase()
		Return New ASPxEditBase() { rblFromTheWeb, rblFromThisComputer, txbInsertImageUrl, ckbSaveToServer, ckbMoreImageOptions }
	End Function
	Protected Overrides Function GetChildDxButtons() As ASPxButton()
		Return New ASPxButton() { btnInsertImage, btnChangeImage, btnInsertImage, btnInsertImageCancel }
	End Function
	Protected Overrides Function GetChildDxHtmlEditorRoundPanel() As ASPxHtmlEditorRoundPanel
		Return rpInsertImage
	End Function

	Protected Function SaveUploadFile() As String
		Dim fileName As String = ""
		If uplImage.HasFile Then
			Dim uploadFolder As String = HtmlEditor.SettingsImageUpload.UploadImageFolder
			fileName = MapPath(uploadFolder) + uplImage.FileName
			Try
				uplImage.SaveAs(fileName, False)
			Catch e1 As IOException
				fileName = MapPath(uploadFolder) + uplImage.GetRandomFileName()
				uplImage.SaveAs(fileName)
			End Try
		End If
		Return Path.GetFileName(fileName)
	End Function
	Protected Sub uplImage_FileUploadComplete(ByVal sender As Object, ByVal args As DevExpress.Web.FileUploadCompleteEventArgs)
		Try
			args.CallbackData = SaveUploadFile()
		Catch e As Exception
			args.IsValid = False
			args.ErrorText = e.Message
		End Try
	End Sub
End Class