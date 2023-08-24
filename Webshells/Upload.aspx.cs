using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vulnerable_Web_Applications
{
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnUpload_Click (object Sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                // Get the name of the uploaded file
                string FileName = FileUpload1.FileName;
                // Save the uploaded file to the current directory
                // NOTE: This is part of the vulnerability - we are saving a file to
                //       a web published directory without checking its extension!
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/") + FileName);
            }
        }
    }
}