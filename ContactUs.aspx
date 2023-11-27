<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Lab3.MasterPages.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../style.css/StyleContactUsPage.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script type="text/javascript">
        function confirmSubmit() {
            return confirm("Are you sure you want to submit the form?");
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contactus-container">
        <p class="auto-style2"><strong>Contact Us</strong></p></div>
        <h3>Office Information</h3>

        <div class="contactus2-container">
            <div class="imageoffice-container">
                <asp:Image ID="Image1" runat="server" Height="380px" Width="721px" ImageUrl="~/Resources/OfficeContactUs.png" style="text-align: center" /> &nbsp;
            </div>

            <div class="contact-container">
                <span class="auto-style4"><strong>Zelskieee & Co.</strong></span><br />
                <p><br />
                    <strong><i class="fas fa-phone"></i> Telephone Number:</strong> <a href="tel:07-800-8000">07-800 8000</a><br /><br />
                    <strong><i class="fas fa-fax"></i> Fax Number:</strong> <a href="tel:07-800-7000">07-800 7000</a><br /><br />
                    <strong><i class="fab fa-linkedin"></i> Social Media:</strong> <a href="https://www.linkedin.com/in/arif-azinuddin-a3788b22b/" target="_blank">LinkedIn</a><br />
                </p>
            </div>
            </div>

        <h3>Our Location</h3>
        <div class="map-container">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3987.722348120588!2d103.0820799!3d1.8572606!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31d05eaa459d0ab9%3A0x495f817bef16f0a1!2sUniversiti%20Tun%20Hussein%20Onn%20Malaysia%20(UTHM)!5e0!3m2!1sen!2smy!4v1698741371550!5m2!1sen!2smy"
        width="1325" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
            </iframe>
        </div>

        <h3>Our Staff</h3>
        <div class="profile-container">
    <div class="box-container">
        <div class="details-container">
            <div class="staff-container">
                <div class="image-container">
                    <asp:Image ID="Image2" runat="server" Height="128px" ImageUrl="~/Resources/ArifContactUs.png" Width="128px" />
                </div>
                <strong>Name:</strong> Arif Azinuddin<br />
                <strong>Age: </strong>21<br />
                <strong>Nationality:</strong> Malaysia<br />
                <strong>Position:</strong> IT Support Technician<br />
                <strong>Hobby:</strong> Reading Online Article<br />
            </div>
        </div>
    </div>
</div>

        <h3>Get In Touch</h3>
        <div class="contact-form-container">
    <p class="form-instruction">Feel free to comment below:</p>

    <div class="form-group">
         <label>Student ID:</label>
               <asp:TextBox ID="id" runat="server" CssClass="form-control" required></asp:TextBox>
    </div>

     <div class="form-group">
         <label>Name:</label>
                <asp:TextBox ID="name" runat="server" CssClass="form-control" required></asp:TextBox>
     </div>

    <div class="form-group">
         <label>Email:</label>
           <asp:TextBox ID="email" runat="server" CssClass="form-control" required></asp:TextBox>
    </div>

     <div class="form-group">
         <label>Comment:</label>
                <asp:TextBox ID="comment" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" required></asp:TextBox>
     </div>

      <asp:Button ID="submitButton" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="submitForm_Click" OnClientClick="return confirmSubmit();"></asp:Button>
</div>

</asp:Content>
