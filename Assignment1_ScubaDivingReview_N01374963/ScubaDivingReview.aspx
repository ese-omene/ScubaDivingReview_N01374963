<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScubaDivingReview.aspx.cs" Inherits="Assignment1_ScubaDivingReview_N01374963.ScubaDivingReview1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Scuba Diving Review</h1>
        <section>
            <label>What is your first name?</label> <!-- input field -->
            <asp:Textbox runat="server" ID="client_firstname"></asp:Textbox>
            <asp:RequiredFieldValidator runat="server" 
                EnableClientScript="true" 
                ErrorMessage="please enter your first name" 
                ControlToValidate="client_firstname">
            </asp:RequiredFieldValidator>
        </section>
        <section>
            <label>What is your last name?</label> <!-- input field -->
            <asp:TextBox runat="server" ID="client_lastname"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" 
                EnableClientScript="true" 
                ErrorMessage="please enter your last name" 
                ControlToValidate="client_lastname">
            </asp:RequiredFieldValidator>
        </section>
        <section>
            <label>What is your email address?</label> <!-- input field -->
            <asp:TextBox runat="server" ID="client_email"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server"
                EnableClientScript="true"
                ErrorMessage="please enter your email address"
                ControlToValidate="client_email">
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" 
                ControlToValidate="client_email" 
                ErrorMessage="please enter a valid email" 
                validationexpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
            </asp:RegularExpressionValidator> 
            <!-- source for regular expression validator, no author listed, used for email address entry,
                https://www.javatpoint.com/asp-net-web-form-regular-expression-validator  
                accessed on 9/21/2019-->
            </section>
        <section>
        <h2>Which Scuba Site Did You Visit?</h2> <!-- drop down list -->
        <div>
            <asp:DropDownList runat="server" ID="scuba_sites">
                <asp:ListItem Text="--please choose one--" value=""></asp:ListItem>
                <asp:listitem text="St Vincent" value="St Vincent" />
                <asp:listitem text="St Thomas" value="St Thomas" />
                <asp:ListItem Text="St Lucia" value="St Lucia" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" 
                EnableClientScript="true" 
                ErrorMessage="please choose your location" 
                ControlToValidate="scuba_sites">
            </asp:RequiredFieldValidator>
        </div>
        </section>

        <section>
            <h2> Who was your instructor?</h2> <!-- radio buttons -->
            <div>
            <asp:RadioButtonList runat="server" ID="diving_instructor">
                    <asp:ListItem Text="Ricardo" value="Ricardo" />
                    <asp:ListItem Text="Samuel" value="Samuel" />
                    <asp:ListItem Text="Enrique" value="Enrique" />
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator runat="server" 
                 EnableClientScript="true" 
                 ErrorMessage="please choose your instructor" 
                 ControlToValidate="diving_instructor">
            </asp:RequiredFieldValidator>
            </div>
        </section>
        <section>
            <h2>Tell us about your adventure!</h2>
            <label>How many other divers were in your party (max 5)?</label>
            <asp:TextBox runat="server" ID="diving_party"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server"
                EnableClientScript="true"
                ErrorMessge="please let us know how big your party was"
                ControlToValidate="diving_party"> <!-- because the minimum value for the range is zero, technically this will never run -->
            </asp:RequiredFieldValidator>
            <asp:RangeValidator runat="server" 
                EnableClientScript="true" 
                ControlToValidate="diving_party" 
                ErrorMessage="Please enter your party size 0-5" 
                MinimumValue="0" MaximumValue="5">
            </asp:RangeValidator>
        </section>
        <section>
            <label>How many animals did you see?</label>
            <asp:TextBox runat="server" ID="animal_count"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server"
                EnableClientScript="true"
                ErrorMessage="please tell us how many animals you saw"
                ControlToValidate="animal_count">
            </asp:RequiredFieldValidator>
            <asp:CompareValidator runat="server" 
                ControlToValidate="animal_count" 
                ValueToCompare="0" 
                Operator="GreaterThan" 
                ErrorMessage="Please enter a valid number">
            </asp:CompareValidator>
          <!-- decided to use a compare instead
              <asp:RangeValidator runat="server" EnableClientScript="true" ControlToValidate="animal_count" ErrorMessage="Please enter a number" MinimumValue="0" MaximumValue="9999"></asp:RangeValidator>
              -->
        </section>
        <section>
            <h2> Please check off any of the following marine wildlife you saw:</h2> <!-- checkbox -->
            <asp:CheckBoxList ID="marine_wildlife" runat="server">
                <asp:ListItem Text="clown fish" Value="wildlife1" />
                <asp:ListItem Text="angel fish" Value="wildlife2" />
                <asp:ListItem Text="killer whale" Value="wildlife3" />
                <asp:ListItem Text="puffin" Value="wildlife4" />
                <asp:ListItem Text="octopus" Value="wildlife5" />
            </asp:CheckBoxList>
            <!-- Do not have to worry about check box validation yet -->
        </section>
        <section>
            <h2> Did you have a good time?</h2> <!-- radio buttons -->
            <div> 
                <asp:RadioButtonList runat="server" ID="enjoymentID">
                    <asp:ListItem Text="Yes" value="yes" />
                    <asp:ListItem Text="No" value="no" />
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator runat="server" 
                    EnableClientScript="true" 
                    ErrorMessage="please choose yes or no" 
                    ControlToValidate="enjoymentID">
                </asp:RequiredFieldValidator>
            </div>
        </section>

        <section>
            <asp:ValidationSummary runat="server" ShowSummary="true" /> <!-- validation summary -->
        </section>
        <section id="confirmationbox" runat="server">
        </section>
        <section>
            <h2>Customer Rating</h2> <!-- review rating -->
            <p id="rating" runat="server"></p>
        </section>
        <section>
            <asp:Button Text="Enter" runat="server" />
        </section>
        
    </form>
</body>
</html>
