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
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web.ASPxHtmlEditor
Imports DevExpress.Web

Partial Public Class ImagePropertiesForm
	Inherits HtmlEditorUserControl
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		ckbCreateThumbnail.ClientVisible = Not String.IsNullOrEmpty(HtmlEditor.SettingsImageUpload.UploadImageFolder)
		CreateConstrainProportionsImages()
	End Sub
	Protected Overrides Function GetChildDxEdits() As ASPxEditBase()
		Return New ASPxEditBase() {lblSize, cmbSize, lblWidth, spnWidth, lblPixelWidth, lblHeight, spnHeight, lblPixelHeight, lblImagePosition, cmbImagePosition, lblImageDescription, txbDescription, ckbCreateThumbnail, lblThumbnailFileName, txbThumbnailFileName }
	End Function
	Protected Sub CreateConstrainProportionsImages()
		Dim imgTop As New Image()
		HtmlEditor.GetInsertImageDialogConstrainProportionsTop().AssignToControl(imgTop, False)
		cellContarainTop.Controls.Add(imgTop)

		Dim imgBottom As New Image()
		HtmlEditor.GetInsertImageDialogConstrainProportionsBottom().AssignToControl(imgBottom, False)
		cellContarainBottom.Controls.Add(imgBottom)

		Dim imgSwitcherOn As New Image()
		imgSwitcherOn.ID = "imgOn"
		HtmlEditor.GetInsertImageDialogConstrainProportionsMiddleOn().AssignToControl(imgSwitcherOn, False)
		cellContarainSwitcher.Controls.Add(imgSwitcherOn)

		Dim imgSwitcherOff As New Image()
		imgSwitcherOff.ID = "imgOff"
		HtmlEditor.GetInsertImageDialogConstrainProportionsMiddleOff().AssignToControl(imgSwitcherOff, False)
		cellContarainSwitcher.Controls.Add(imgSwitcherOff)

		imgSwitcherOn.Attributes.Add("onclick", "aspxConstrainProportionsSwicthClick(event, '" & imgSwitcherOff.ClientID & "')")
		imgSwitcherOff.Attributes.Add("onclick", "aspxConstrainProportionsSwicthClick(event,'" & imgSwitcherOn.ClientID & "')")
		imgSwitcherOff.Style.Add("display", "none")
	End Sub
End Class
