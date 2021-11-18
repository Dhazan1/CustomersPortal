<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CustomersPortal._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Welcome to WEMA BANK customer portal</h1>
        <p class="lead">New Registration</p>
        <p><a href="http://www.alat.ng" class="btn btn-primary btn-lg">Learn more about ALAT &raquo;</a></p>
    </div>
    <div>
       First Name <asp:TextBox   ID="FirstName"  runat="server"  />
       Last Name <asp:TextBox   ID="LastName"  runat="server"  />
      Account Number  <asp:TextBox   ID="AccountNumber"  runat="server"  />
      BVN <asp:TextBox   ID="BVN"  runat="server"  />
        <asp:Button ID="sender" Text="Send" runat="server" OnClick="Sender_Click" />
           <asp:Label ID="lbResult" runat="server" />
    </div>
    
      


</asp:Content>
