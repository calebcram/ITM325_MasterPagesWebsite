<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MasterPagesAssignment.ContentPages.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Articles" runat="server">
    <article>
        <h2><a href="Article1.aspx">My Skills</a></h2>
        <p>
           I'm a game developer studying GIMM (Gaming Interactive Media and Mobile Technology) at Boise State University. I love all aspects of game design, from coding and conceptualizing to rigging and animating. I enjoy bringing my artistic creativity to life through technology in new and fascinating ways and I hope to help build the future of mixed reality and spatial computing.
        </p>
        <footer>
            Author: Caleb Cram &nbsp; March 10, 2021
        </footer>
    </article>
    <article>
        <h2><a href="Article2.aspx">Art</a></h2>
         <p>
             This is a series of digital low poly portraits of personal friends of mine which were shot with an IPhone 7 and edited using Photoshop. One very interesting part of this project for me was coming to the realization that color can incredibly effectively be used to show or imply structure within an art piece. 
             My low poly portrait "Unicorn Dreams" was recently put on exhibit on Boise State Universities' campus as part of an on campus art competition.
         </p>
        <footer>
            Author: Caleb Cram &nbsp; March 10, 2021
        </footer>
    </article>
    <article>
        <h2><a href="Article4.aspx">XR Projects</a></h2>
        <p>
            This is a portfolio containing some examples of my work in Augmented, Virtual and Mixed Reality using various VR and MR HMD's (Head Mounted Devices) along with mobile devices and web-based desktop portals.
        </p>
        <footer>
            Author: Caleb Cram &nbsp; March 10, 2021
        </footer>
    </article>
    <article>
        <h2><a href="Article3.aspx">Where does it come from</a></h2>
        <p>
            Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words...
        </p>
        <footer>
            Author: Caleb Cram &nbsp; March 10, 2021
        </footer>
    </article>
</asp:Content>
