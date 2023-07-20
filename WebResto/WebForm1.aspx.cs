using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebResto
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            if (Session["login"] != null)
            {
                if (Session["login"].ToString() == "failed")
                {
                    Label1.Text = " Username atau Password anda salah!";
                    Label1.Visible = true;
                    Session["login"] = null;
                }
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            LoginControl LC = new LoginControl();
            if(LC.cekLogin(Login1.UserName, Login1.Password) == true)
            {
                int role = LC.GetRoleUser(Login1.UserName, Login1.Password);
                if (role == 1)
                {
                    User U = new User(Login1.UserName, Login1.Password, role);
                    Session["userdata"] = null;
                    Session.Add("userdata", U);
                    Response.Redirect("WebHome.aspx");
                }
                else
                {
                    Session["login"] = null;
                    Session.Add("login", "failed");
                    Response.Redirect("WebForm1.aspx");
                }
            }
            else
            {
                Session["login"] = null;
                Session.Add("login", "failed");
                Response.Redirect("WebForm1.aspx");
            }
        }
    }
}