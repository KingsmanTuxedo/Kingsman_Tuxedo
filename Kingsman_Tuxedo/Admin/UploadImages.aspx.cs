using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kingsman_Tuxedo.Admin
{
    public partial class UploadImages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["id"];
            string filename = productId + ".jpg";

            CurrentImage.ImageUrl = "~/ProductImages/" + filename;
        }

        protected void BtnImgUpload_Click(object sender, EventArgs e)
        {
            string productId = Request.QueryString["id"];

            string filename = productId + ".jpg";
            string saveLocation = Server.MapPath("~/ProductImages/" + filename);

            FileUploadControl.SaveAs(saveLocation);
        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/List.aspx");
        }
    }
}