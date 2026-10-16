
using System;

namespace OnlineEventRegistration
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (!chkTerms.Checked)
                {
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "Please accept Terms and Conditions.";
                    return;
                }

                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Registration Successful!";
            }
        }
    }
}
