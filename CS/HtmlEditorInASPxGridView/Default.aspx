<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1" Namespace="DevExpress.Web"
    TagPrefix="dxe" %>

<%@ Register Assembly="DevExpress.Web.ASPxSpellChecker.v15.1" Namespace="DevExpress.Web.ASPxSpellChecker"
    TagPrefix="dxwsc" %>
<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v15.1" Namespace="DevExpress.Web.ASPxHtmlEditor"
    TagPrefix="dxhe" %>
<%@ Register Assembly="DevExpress.Web.v15.1" Namespace="DevExpress.Web"
    TagPrefix="dxwgv" %>
 

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
                    <dxhe:ASPxHtmlEditor ID="ASPxHtmlEditor1" runat="server" Html='<%# Eval("DescriptionHtml") %>'><SettingsImageUpload><ValidationSettings AllowedContentTypes="image/jpeg,image/pjpeg,image/gif,image/png,image/x-png"></ValidationSettings></SettingsImageUpload>
<Toolbars>
                <dxhe:HtmlEditorToolbar>
                    <Items>
                        <dxhe:ToolbarCutButton>
                        </dxhe:ToolbarCutButton>
                        <dxhe:ToolbarCopyButton>
                        </dxhe:ToolbarCopyButton>
                        <dxhe:ToolbarPasteButton>
                        </dxhe:ToolbarPasteButton>
                        <dxhe:ToolbarUndoButton BeginGroup="True">
                        </dxhe:ToolbarUndoButton>
                        <dxhe:ToolbarRedoButton>
                        </dxhe:ToolbarRedoButton>
                        <dxhe:ToolbarRemoveFormatButton BeginGroup="True">
                        </dxhe:ToolbarRemoveFormatButton>
                        <dxhe:ToolbarSuperscriptButton BeginGroup="True">
                        </dxhe:ToolbarSuperscriptButton>
                        <dxhe:ToolbarSubscriptButton>
                        </dxhe:ToolbarSubscriptButton>
                        <dxhe:ToolbarInsertOrderedListButton BeginGroup="True">
                        </dxhe:ToolbarInsertOrderedListButton>
                        <dxhe:ToolbarInsertUnorderedListButton>
                        </dxhe:ToolbarInsertUnorderedListButton>
                        <dxhe:ToolbarIndentButton BeginGroup="True">
                        </dxhe:ToolbarIndentButton>
                        <dxhe:ToolbarOutdentButton>
                        </dxhe:ToolbarOutdentButton>
                        <dxhe:ToolbarInsertLinkDialogButton BeginGroup="True">
                        </dxhe:ToolbarInsertLinkDialogButton>
                        <dxhe:ToolbarUnlinkButton>
                        </dxhe:ToolbarUnlinkButton>
                        <dxhe:ToolbarInsertImageDialogButton>
                        </dxhe:ToolbarInsertImageDialogButton>
                        <dxhe:ToolbarCheckSpellingButton BeginGroup="True">
                        </dxhe:ToolbarCheckSpellingButton>
                    </Items>
                </dxhe:HtmlEditorToolbar>
                <dxhe:HtmlEditorToolbar>
                    <Items>
                        <dxhe:ToolbarParagraphFormattingEdit Width="120px">
                            <Items>
                                <dxhe:ToolbarListEditItem Text="Normal" Value="p" />
                                <dxhe:ToolbarListEditItem Text="Heading  1" Value="h1" />
                                <dxhe:ToolbarListEditItem Text="Heading  2" Value="h2" />
                                <dxhe:ToolbarListEditItem Text="Heading  3" Value="h3" />
                                <dxhe:ToolbarListEditItem Text="Heading  4" Value="h4" />
                                <dxhe:ToolbarListEditItem Text="Heading  5" Value="h5" />
                                <dxhe:ToolbarListEditItem Text="Heading  6" Value="h6" />
                                <dxhe:ToolbarListEditItem Text="Address" Value="address" />
                                <dxhe:ToolbarListEditItem Text="Normal (DIV)" Value="div" />
                            </Items>
                        </dxhe:ToolbarParagraphFormattingEdit>
                        <dxhe:ToolbarFontNameEdit>
                            <Items>
                                <dxhe:ToolbarListEditItem Text="Times New Roman" Value="Times New Roman" />
                                <dxhe:ToolbarListEditItem Text="Tahoma" Value="Tahoma" />
                                <dxhe:ToolbarListEditItem Text="Verdana" Value="Verdana" />
                                <dxhe:ToolbarListEditItem Text="Arial" Value="Arial" />
                                <dxhe:ToolbarListEditItem Text="MS Sans Serif" Value="MS Sans Serif" />
                                <dxhe:ToolbarListEditItem Text="Courier" Value="Courier" />
                            </Items>
                        </dxhe:ToolbarFontNameEdit>
                        <dxhe:ToolbarFontSizeEdit>
                            <Items>
                                <dxhe:ToolbarListEditItem Text="1 (8pt)" Value="1" />
                                <dxhe:ToolbarListEditItem Text="2 (10pt)" Value="2" />
                                <dxhe:ToolbarListEditItem Text="3 (12pt)" Value="3" />
                                <dxhe:ToolbarListEditItem Text="4 (14pt)" Value="4" />
                                <dxhe:ToolbarListEditItem Text="5 (18pt)" Value="5" />
                                <dxhe:ToolbarListEditItem Text="6 (24pt)" Value="6" />
                                <dxhe:ToolbarListEditItem Text="7 (36pt)" Value="7" />
                            </Items>
                        </dxhe:ToolbarFontSizeEdit>
                        <dxhe:ToolbarBoldButton BeginGroup="True">
                        </dxhe:ToolbarBoldButton>
                        <dxhe:ToolbarItalicButton>
                        </dxhe:ToolbarItalicButton>
                        <dxhe:ToolbarUnderlineButton>
                        </dxhe:ToolbarUnderlineButton>
                        <dxhe:ToolbarStrikethroughButton>
                        </dxhe:ToolbarStrikethroughButton>
                        <dxhe:ToolbarJustifyLeftButton BeginGroup="True">
                        </dxhe:ToolbarJustifyLeftButton>
                        <dxhe:ToolbarJustifyCenterButton>
                        </dxhe:ToolbarJustifyCenterButton>
                        <dxhe:ToolbarJustifyRightButton>
                        </dxhe:ToolbarJustifyRightButton>
                        <dxhe:ToolbarJustifyFullButton>
                        </dxhe:ToolbarJustifyFullButton>
                        <dxhe:ToolbarBackColorButton BeginGroup="True">
                        </dxhe:ToolbarBackColorButton>
                        <dxhe:ToolbarFontColorButton>
                        </dxhe:ToolbarFontColorButton>
                    </Items>
                </dxhe:HtmlEditorToolbar>
            </Toolbars>
</dxhe:ASPxHtmlEditor>
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
                <dxwgv:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True"/>
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
