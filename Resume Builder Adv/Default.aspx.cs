using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = Path.GetFileName(FileUpload1.FileName);
        path = path.Replace(" ", "");
        String filename1 = path;
        FileUpload1.SaveAs(Server.MapPath("~/Images/") + path);
        Label3.Text = "Image Uploaded and Saved in Server Successfully";
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }


}