<%@ Page Title="Current Customer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Modification.aspx.cs" Inherits="CustomersPortal.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Enter correct details for the customer.</h3>
    <p>Use this area to provide the informations needed</p>
     <div>
       First Name <asp:TextBox   ID="FirstName"  runat="server"  />
       Last Name <asp:TextBox   ID="LastName"  runat="server"  />
      Account Number  <asp:TextBox   ID="AccountNumber"  runat="server"  />
      BVN <asp:TextBox   ID="BVN"  runat="server"  />
        <asp:Button ID="sender" Text="Send" runat="server" OnClick="Sender_Clicked" />
           <asp:Label ID="lbResult" runat="server" />
    </div>
</asp:Content>
