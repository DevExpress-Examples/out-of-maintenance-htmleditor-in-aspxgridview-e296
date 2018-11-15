<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/HtmlEditorInASPxGridView/Default.aspx) (VB: [Default.aspx.vb](./VB/HtmlEditorInASPxGridView/Default.aspx.vb))
* [Default.aspx.cs](./CS/HtmlEditorInASPxGridView/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/HtmlEditorInASPxGridView/Default.aspx.vb))
<!-- default file list end -->
# HtmlEditor in ASPxGridView


<p>This example illustrates how to use the ASPxHtmlEditor control in the ASPxGridView EditForm for editing text column data.</p><p>The ASPxHtmlEditor is defined within the <strong>ASPxGridView EditFormTemplate</strong> and bound with the "<strong>DescriptionHtml</strong>" column via the <a href="http://msdn.microsoft.com/en-us/library/ms178366.ASPX"><u>binding expression</u></a> (the "<strong>Eval</strong>" method).<br />
When using the "<strong>Eval</strong>" expression, it is necessary to capture the modified value/property and post it back to a datasource manually. See the <strong>Default.aspx.cs/Default.aspx.vb</strong> code behind source.</p><p>If you need to achieve the <strong>automatic Two-Way data binding functionality</strong>, use the "<strong>Bind</strong>" method instead of the "<strong>Eval</strong>" one.<br />
In this case, the server-side code for retrieving the editor value (the <strong>ASPxHtmlEditor.Html</strong> property) and putting it into the <strong>e.NewValues</strong> dictionary is no longer required (except of cases described in the <a href="https://www.devexpress.com/Support/Center/p/K18564">K18564: How to resolve issues with binding expressions</a> #1 KB Article).</p><p>In addition, take a look at the online <a href="http://demos.devexpress.com/ASPxGridViewDemos/GridEditing/TwoWayBinding.aspx"><u>Two-Way Binding</u></a> demo. It illustrates how to use different kinds of editors in a similar scenario.</p>

<br/>


