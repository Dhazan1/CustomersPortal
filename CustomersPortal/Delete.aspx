<%@ Page Title="Cancel registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="CustomersPortal.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Delete a customer.</h3>
   
       <div>   
   <p> Enter the account to delete <asp:TextBox   ID="del"  runat="server"  /> </p>
   <p>   <asp:Button ID="delete" runat="server" Text="Delete" OnClick="delete_Click" />   </p>   
</div>
    <h3> For wrong omission please contact us at</h3>
    <address>
        Town planning<br />
       ilupeju lagos<br />
        <abbr title="Phone">Wema Number</abbr>
      Purple Academy
    </address>
   <asp:Label ID="lbDelete" runat="server" />
  
</asp:Content>
