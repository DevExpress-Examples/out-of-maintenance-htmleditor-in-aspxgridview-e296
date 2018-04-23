using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web.ASPxGridView;
using DevExpress.Web.ASPxHtmlEditor;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
    }
    protected void ASPxGridView1_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e) {
        ASPxGridView grid = sender as ASPxGridView;
        e.NewValues["ID"] = Guid.NewGuid().ToString().Replace("-", "");
        ASPxHtmlEditor htmlEditor = ASPxGridView1.FindEditFormTemplateControl("ASPxHtmlEditor1") as ASPxHtmlEditor;
        e.NewValues["DescriptionHtml"] = htmlEditor.Html;
    }
    protected void ASPxGridView1_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e) {
        ASPxGridView grid = sender as ASPxGridView;
        ASPxHtmlEditor htmlEditor = ASPxGridView1.FindEditFormTemplateControl("ASPxHtmlEditor1") as ASPxHtmlEditor;
        e.NewValues["DescriptionHtml"] = htmlEditor.Html;
    }
}