<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScubaDivingReview1.aspx.cs" Inherits="Assignment1_ScubaDivingReview_N01374963.ScubaDivingReview1" %>

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
            <asp:Textbox runat="server" ID="client_firstname" />
        </section>
        <section>
            <label>What is your last name?</label> <!-- input field -->
            <asp:TextBox runat="server" ID="client_lastname"/>
        </section>
        
        <section>
        <h2>Which Scuba Site Did You Visit?</h2> <!-- drop down list -->
        <div>
            <asp:DropDownList runat="server" ID="scuba_sites">
                <asp:listitem text="St Vincent" />
                <asp:listitem text="St Thomas" />
                <asp:ListItem Text="St Lucia" />
            </asp:DropDownList>
        </div>
        </section>

        <section>
            <h2> Who was your instructor?</h2> <!-- radio buttons -->
            <div>
                <asp:RadioButtonList runat="server">
                    <asp:ListItem Text="Ricardo" />
                    <asp:ListItem Text="Samuel" />
                    <asp:ListItem Text="Enrique" />
                </asp:RadioButtonList>
            </div>
        </section>
        <section>
            <h2> Please check off which fish you saw</h2> <!-- checkbox -->
            <asp:CheckBoxList ID="aspx_fish" runat="server">
                <asp:ListItem Text="clown fish" Value="fish1" />
                <asp:ListItem Text="angel fish" Value="fish2" />
                <asp:ListItem Text="swordfish" Value="fish3" />
                <asp:ListItem Text="hammerhead shark" Value="fish4" />
                <asp:ListItem Text="stingray" Value="fish5" />
            </asp:CheckBoxList>
        </section>
        <section>
            <asp:Button Text="Enter" runat="server" />
        </section>

    </form>
</body>
</html>
