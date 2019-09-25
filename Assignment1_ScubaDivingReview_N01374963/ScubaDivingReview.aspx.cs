using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1_ScubaDivingReview_N01374963
{
    public partial class ScubaDivingReview1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Page.Validate();
                if (Page.IsValid)
                {
                    string Client_Fname = client_firstname.Text.ToString();
                    string Client_Lname = client_lastname.Text.ToString();
                    string Client_Email = client_email.Text.ToString();
                    string Diving_Site = scuba_sites.Text.ToString();
                    string Diving_Instructor = diving_instructor.SelectedValue.ToString();
                    int Diving_Party = Convert.ToInt32(diving_party.Text);
                    int Animal_count = Convert.ToInt32(animal_count.Text);
                    // string Wildlife = marine_wildlife.Text.ToString();  //need to workout how to handle checkbox
                    string Enjoyment = enjoymentID.Text.ToString();


                    confirmationbox.InnerHtml = "Thank you for choosing Ezeey E's Scuba Crew, here is your review summary:" + "<br>";
                    confirmationbox.InnerHtml += "First name:" + Client_Fname + "<br>";
                    confirmationbox.InnerHtml += "Last name:" + Client_Lname + "<br>";
                    confirmationbox.InnerHtml += "Email:" + Client_Email + "<br>";
                    confirmationbox.InnerHtml += "Diving Instructor:" + Diving_Instructor + "<br>";
                    confirmationbox.InnerHtml += "Diving Party Size:" + (Diving_Party + 1) + " - ";
                    if (Diving_Party == 0)
                    {
                        confirmationbox.InnerHtml += "solo diving quest, lucky you!" + "<br>";
                    }
                    if (Diving_Party == 1)
                    {
                        confirmationbox.InnerHtml += "tandem diving adventures are the best!" + "<br>";
                    }
                    if (Diving_Party == 2)
                    {
                        confirmationbox.InnerHtml += "three musketeers taking on the deep blue sea!" + "<br>";
                    }
                    if (Diving_Party == 3)
                    {
                        confirmationbox.InnerHtml += "hope you all had fun!" + "<br>";
                    }
                    if (Diving_Party == 4)
                    {
                        confirmationbox.InnerHtml += "wow! what a party" + "<br>";
                    }
                    if (Diving_Party == 5)
                    {
                        confirmationbox.InnerHtml += "what a crew for an amazing journey!" + "<br>";
                    }
                    if (Diving_Party == 6)
                    {
                        confirmationbox.InnerHtml += "ain't no party like an S club party eh" + "<br>";
                    }


                    confirmationbox.InnerHtml += "You dove at: " + Diving_Site + "<br>";
                    /*  confirmationbox.InnerHtml += "Wild life seen:" + Wildlife + ' ';

                        if(Wildlife=true)
                     {
                         confirmationbox.InnerHtml += "You saw some wildlife, isn't that exciting!";
                     }
                         if(Wildlife=false)
                     {
                         confirmationbox.InnerHtml += "Maybe you'll see some wildlife next time!";
                     } 
                  Need to workout validation for checkboxes   
                  */

                    if (Animal_count >= 4 && Enjoyment == "yes")
                    {
                        rating.InnerHtml = "5"; 
                    }
                    
                    if  (Animal_count == 3 && Enjoyment == "yes")
                    {
                        rating.InnerHtml = "4";
                    } if  (Animal_count == 2 && Enjoyment == "yes")
                    {
                        rating.InnerHtml = "3";
                    } if  (Animal_count == 1 && Enjoyment == "yes")
                    {
                        rating.InnerHtml = "2";
                    }  if (Animal_count == 0 && Enjoyment == "yes")
                    {
                        rating.InnerHtml = "yes";
                    } if (Enjoyment == "0")
                    {
                        rating.InnerHtml = "0";
                    }
                }
            }
        }
    }
}