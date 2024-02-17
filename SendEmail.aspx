<%@ Page Language="C#" EnableEventValidation="False" AutoEventWireup="true" CodeBehind="SendEmail.aspx.cs" Inherits="SendEmail.SendEmail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SendEnail</title>
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="head"><u class="underline"><h3>Send e-mail</h3></u></div>
    <section class="contact" id="contact">
    <div class="container">
        <div class="contact-heading">
            <h3>Contact us</h3>
        </div>
        <div class="contact-grids">
            <div class=" col-md-6 contact-form">
                <form action="#" method="post">
                    <asp:TextBox ID="txtTitle" placeholder="Title..." runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtYourName" placeholder="Your name..." runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtEmail" placeholder="Mail address..." runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtMessage" placeholder="Message..." Height="150px" TextMode="MultiLine" runat="server"></asp:TextBox>
                    <div class="submit"><asp:Button ID="Button3" type="submit" value="submit" runat="server" Text="Send" OnClick="Button3_Click" CausesValidation="False"/></div>
                </form>
            </div>
            <div class=" col-md-6 map">
             <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d9209.117080539663!2d149.11776463952384!3d-35.30810420075509!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b164cdf9cd8edeb%3A0x500ea6ea76956b0!2zQ2FwaXRhbCBIaWxsINCQ0YPRgdGC0YDQsNC70LjRmNGB0LrQsCDQv9GA0LXRgdGC0L7QvdC40YfQutCwINGC0LXRgNC40YLQvtGA0LjRmNCwIDI2MDAsINCQ0YPRgdGC0YDQsNC70LjRmNCw!5e0!3m2!1ssr!2srs!4v1708004364977!5m2!1ssr!2srs" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </div>
</section>
        <div style="align-content: center; align-items: center; align-self: center; text-align: center;"><hr style="height:1px;border-width:0;color:gray;background-color:gray" /></div>
        <div style="align-content: center; align-items: center; align-self: center; text-align: center; padding-top: 10px;">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/createdBy.bmp" />
        </div>
    </div>
    </form>
</body>
</html>
