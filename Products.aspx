<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <br />  


    <div class="row" style="padding-top:50px">
       <asp:repeater ID="rptrProducts" runat="server">
           <ItemTemplate>
        <div class="col-sm-3 col-md-3">
            <a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none;">
          <div class="thumbnail">              
              <img width="180px" class="thumbnail" <img src="images/ProductImages/<%# Eval("PID") %>/<%# Eval("imageName") %><%# Eval("Extention") %>" alt="<%# Eval("imageName") %>"/>
              <div class="caption"> 
                   <div class="probrand"><%# Eval (" BrandName") %>  </div>
                   <div class="proName"> <%# Eval ("PName") %> </div>
                   <div class="proPrice"> <span class="proOgPrice" > ₹ <%# Eval ("PPrice") %> </span> ₹ <%# Eval ("PSelPrice") %> <span class="proPriceDiscount"> Save <%# Eval("DiscAmount") %> </span></div> 
                   
              </div>
          </div>
                </a>
        </div>
               
               </ItemTemplate>
       </asp:repeater>
    </div>



    <%--second product--%>




    
    

</asp:Content>

