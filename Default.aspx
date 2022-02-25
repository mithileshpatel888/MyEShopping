<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My E-Shopping Website</title>
      <script src="http://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous">

    </script>
 <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
   <meta http-equiv="X-UA-Compatible" content="IE-edge"/>
    <link href="css/custome.css" rel="stylesheet" />  
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
    <script>

        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "/Cart.aspx";
            });
        });

    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class ="navbar navbar-default navbar-fixed-top" role ="navigation">
            <div class ="container ">
                <div class ="navbar-header">
                    <button type="button" class ="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class ="sr-only">Toggle navigation</span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>

                    </button>
                    <a class ="navbar-brand" href ="Default.aspx" ><span ><img src="icons/images.png" alt="MyEShoppoing" height ="30" /></span>MyEShopping </a>

                </div>
                <div class ="navbar-collapse collapse">
                    <ul class ="nav navbar-nav navbar-right">
                        <li class ="active"><a href ="Default.aspx">Home</a> </li>
                         <li ><a href ="#">About</a> </li>
                        <li ><a href ="#">Contact US</a> </li>
                        <li ><a href ="#">Blog-</a> </li>
                        <li class ="drodown">
                            <a href ="#" class ="dropdown-toggle" data-toggle="dropdown">Products<b class ="caret"></b></a>
                            <ul class ="dropdown-menu ">
                                 <li> <a href ="Products.aspx">All Products</a></li>
                                 <li role="separator" class ="divider "></li> 
                                <li class ="dropdown-header ">Men</li>
                                <li role="separator" class ="divider "></li> 
                                <li> <a href ="#">Shirts</a></li>
                                <li> <a href ="#">Pants</a></li>
                                <li> <a href ="#">Denims</a></li>
                                <li role="separator" class ="divider "></li>
                                <li class ="dropdown-header ">Women</li>
                                <li role="separator" class ="divider "></li>
                                <li> <a href ="#">Top</a></li>
                                <li> <a href ="#">Leggings</a></li>
                                <li> <a href ="#">Denims</a></li>
                            </ul>
                           


                            </li>
                            <li>
                                <button id="btnCart" class="btn btn-primary navbar-btn " type="button">
                                Cart <span class="badge " id="pCount" runat="server"></span>

                            </button>
                            </li>                                 
                         <li  id="btnSignUP" runat="server"><a href ="SignUp.aspx">SignUp</a> </li>
                         <li  id="btnSignIN" runat="server"><a href ="SignIn.aspx">SignIn</a> </li>
                         <asp:Button ID="btnlogout" CssClass ="btn btn-default navbar-btn " runat="server" Text="Sign Out" OnClick="btnlogout_Click" />
                        <li />

                        </ul>
            </div>


                
        </div>

    

        </div>

        <!---image slider---->
        <div class="container">
  <h2>Carousel Example</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img style="height:320;width:100% " src="image slider/diwali.jpg" alt="Los Angeles" >

          <div class="carousel-caption">
          
          <p>50% off</p>
          <p><a class ="btn btn-lg btn-primary" href ="#" role ="button" > Buy Now</a></p>
        </div>
      </div>

      <div class="item">
        <img  style="height:320;width:100% " src="image slider/shoes1.jpg" alt="Chicago">
          <div class="carousel-caption">
             
          <p>20% off</p>
        </div>
      </div>
    
      <div class="item">
        <img  style="height:320;width:100% " src="image slider/mobile.jpg" alt="New york">
          <div class="carousel-caption">
           <h3> Mobile Shopping</h3>
          
          <p>25% off</p>
        </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
        </div>

        <!---image slider End---->


      

     
<div class="olContent f1"><h2 style="color:black">Search Product/Category</h2></div>
<div class="olSearch fr">
    <input type="text" placeholder="Search" name="searchKey" class="inputComn houseText form-control" />
    <div class="searchIcon">
        <button type="button" class="searchBtn">
            <img src="~/Images/searchIcon.png" />
        </button>
    </div>
       </div>

     <div class="row">
    <div class="col-md-12">
        <div class="page-header">
            <h2>Latest Launches <small>Trends Products</small></h2>
        </div>
    </div>
</div>

<div class="row product-container">

    <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
        <div class="thumbnail product-item" style="height:300px" >

            <img class="img-responsive" title="Click to View Product detail"
                 style="cursor:pointer;height:160px;width:100%"
               src="images/Realme-7.jpg"   />

           <div class="caption">
               <h5>Realme Camera Lens Protector 7 6GB RAM and 64GB</h5>
               <p>just ₹ 14,999.00.</p>
               <p>Limited Offers</p>
               <div class="product-item-badge">New</div>
           </div>
        </div>
    </div>
     <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
        <div class="thumbnail product-item" style="height:300px" >

            <img class="img-responsive" title="Click to View Product detail"
                 style="cursor:pointer;height:160px;width:100%"
                 src="images/oppo-a9-2020-vanilla-mint-price-where-to-buy-philippines-sale-preoder.jpg" />

           <div class="caption">
               <h5>Oppo A9 Casodon Camera Lens Protector 4GB RAM + 128GB ROM</h5>
               <p>just ₹ 14,990.00.</p>
               <p>Limited Offers </p>
               <div class="product-item-badge">New</div>
           </div>
        </div>
    </div>
     <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
        <div class="thumbnail product-item" style="height:300px" >

            <img class="img-responsive" title="Click to View Product detail"
                 style="cursor:pointer;height:160px;width:100%"
               src="images/1384446.jpg"    />

           <div class="caption">
               <h5>Samsung Galaxy A40 64GB Blue RAM 4GB</h5>
               <p>just ₹ 19,500.00.</p>
               <p>Limited Offers</p>
               <div class="product-item-badge">New</div>
           </div>
        </div>
    </div>
     <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
        <div class="thumbnail product-item" style="height:300px" >

            <img class="img-responsive" title="Click to View Product detail"
                 style="cursor:pointer;height:160px;width:100%"
                src="images/zzz.jpg"    />

           <div class="caption">
               <h5> Vivo Y17 Triple Camera 4GB RAM + 128GB ROM</h5>
               <p>just ₹ 18,990.00.</p>
               <p>Limited Offers</p>
               <div class="product-item-badge">New</div>
           </div>
        </div>
    </div>

      <div class="row">
    <div class="col-md-12">
        <div class="page-header">
             <h2>Top Deals on Devices <small>Trends Products</small></h2>
        </div>
   </div>
 </div>
     <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
        <div class="thumbnail product-item" style="height:300px" >

            <img class="img-responsive" title="Click to View Product detail"
                 style="cursor:pointer;height:160px;width:100%"
                src="images/91HnLmz7bsL._AC_SL1500_.jpg" />

           <div class="caption">
               <h5>JBL Xtreme Portable Wireless Bluetooth Speaker (Black)</h5>
               <p>₹ 1500.00.</p>
               <p>Diwali offers</p>
               <div class="product-item-badge">New</div>
           </div>
        </div>
    </div>
     <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom: 8px">
        <div class="thumbnail product-item" style="height:300px" >

            <img class="img-responsive" title="Click to View Product detail"
                 style="cursor:pointer;height:160px;width:100%"
             src="images/194-1945575_transparent-laptop-png-latest-dell-laptop-2018-png.png"  />

           <div class="caption">
               <h5> Dell Laptop 10th Generation Intel® Core™ i5-10210U </h5>
               <p>₹ 49,9900.00.</p>
               <p>Available</p>
               <div class="product-item-badge">New</div>
           </div>
        </div>
    </div>
     <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom: 8px">
        <div class="thumbnail product-item" style="height:300px" >

            <img class="img-responsive" title="Click to View Product detail"
                 style="cursor:pointer;height:160px;width:100%"
              src="images/81-3PyinvmL._SL1500_.jpg" />

           <div class="caption">
               <h5>Samsung 80cm (32") T4700 Smart HD TV </h5>
               <p>₹ 21,9900.00.</p>
               <p>Available</p>
               <div class="product-item-badge">New</div>
           </div>
        </div>
    </div>
     <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom: 8px">
        <div class="thumbnail product-item" style="height:300px" >

            <img class="img-responsive" title="Click to View Product detail"
                 style="cursor:pointer;height:160px;width:100%"
             src="images/zebronics-bt4440rucf-original-imaeafwzccgtczx8.jpeg" />

           <div class="caption">
               <h5> Zebronics BT4440 RUCF 60 Watt Bluetooth Home Theatre  (Black, 4.1) </h5>
               <p>₹ 2,879.00.</p>
               <p>Available</p>
               <div class="product-item-badge">New</div>
           </div>
        </div>
    </div>
      <div class="row">
    <div class="col-md-12">
        <div class="page-header">
             <h2>Men's And Girl's Footwear <small>Trends Products</small></h2>
        </div>
   </div>
 </div>
     <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom: 8px">
        <div class="thumbnail product-item" style="height:300px" >

            <img class="img-responsive" title="Click to View Product detail"
                 style="cursor:pointer;height:160px;width:100%"
              src="images/puma-hybrid-runner-fusefit-mens-1196-tested-1549051028.jpg"/>

           <div class="caption">
               <h5>PUMA Women's Hybrid Runner FUSEFIT </h5>
               <p>₹ 3,999.00.</p>
               <p>Available</p>
               <div class="product-item-badge">New</div>
           </div>
        </div>
    </div>
     <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom: 8px">
        <div class="thumbnail product-item" style="height:300px" >

            <img class="img-responsive" title="Click to View Product detail"
                 style="cursor:pointer;height:160px;width:100%"
             src="images/adidas-shoes-for-girls-1559056859.jpg" />

           <div class="caption">
               <h5> Adidas Shoes for Men and Girls Who Just Love </h5>
               <p>₹ 2,449.00.</p>
               <p>Available</p>
               <div class="product-item-badge">New</div>
           </div>
        </div>
    </div>
     <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom: 8px">
        <div class="thumbnail product-item" style="height:300px" >

            <img class="img-responsive" title="Click to View Product detail"
                 style="cursor:pointer;height:160px;width:100%"
              src="images/nike%20shoes.jpg"  />

           <div class="caption">
               <h5>  Nike Air Max 97 serena </h5>
               <p>₹ 4,779.00.</p>
               <p>Available</p>
               <div class="product-item-badge">New</div>
           </div>
        </div>
    </div>
     <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom: 8px">
        <div class="thumbnail product-item" style="height:300px" >

            <img class="img-responsive" title="Click to View Product detail"
                 style="cursor:pointer;height:160px;width:100%"
             src="images/golden-shoes.jpeg" />

           <div class="caption">
               <h5> Gold-Dipped Sneaker Concepts : golden  </h5>
               <p>₹ 3,559.00.</p>
               <p>Available</p>
               <div class="product-item-badge">New</div>
           </div>
        </div>
    </div>
</div>
        <!---Middle COntents start---->
        <hr />
        <div class ="container center ">
            <div class ="row ">
                <div class ="col-lg-4">
                    <img class ="img-circle " src="mobile/The-Best-Phones-of-2020.jpg" alt="thumb" width ="140" height ="140" />
                    <h2>Mobiles</h2>
                    <p> Featuring a 15.49-cm (6.1) all-screen Liquid Retina LCD and a glass and aluminum design, the iPhone 11 is as beautiful as it gets. Also, the IP68 rating ensures that is water-resistant up to 2 meters for 30 minutes....</p>
                    <p> <a class ="btn btn-default " href ="#" role="button" >View More &raquo;</a></p>

                </div>

                 <div class ="col-lg-4">
                    <img class ="img-circle " src="images/4cd62ca288a23d95f9fff0e116db2040.jpg" alt="thumb" width ="140" height ="140" />
                    <h2>Footwear</h2>
                    <p> Featuring a 15.49-cm (6.1) all-screen Liquid Retina LCD and a glass and aluminum design, the iPhone 11 is as beautiful as it gets. Also, the IP68 rating ensures that is water-resistant up to 2 meters for 30 minutes....</p>
                    <p> <a class ="btn btn-default " href ="#" role="button" >View More &raquo;</a></p>

                </div>


                 <div class ="col-lg-4">
                    <img class ="img-circle " src="images/unnamed (1).jpg" alt="thumb" width ="140" height ="140" />
                    <h2>Clothings</h2>
                    <p> Featuring a 15.49-cm (6.1) all-screen Liquid Retina LCD and a glass and aluminum design, the iPhone 11 is as beautiful as it gets. Also, the IP68 rating ensures that is water-resistant up to 2 meters for 30 minutes....</p>
                    <p> <a class ="btn btn-default " href ="#" role="button" >View More &raquo;</a></p>

                </div>

            </div>



        </div>

        <!---Middle COntents End---->



         <!---Footer COntents Start here---->
        <hr />
        <footer>
            <div class ="container ">
                <p class ="pull-right "><a href ="#">Back to top</a></p>
                <p>&copy;2020 Develop By- Mithilesh Patel &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="#">About</a>&middot;<a href ="#">Contact</a>&middot;<a href ="#">Products</a> </p>
            </div>

        </footer>
     
         <!---Footer COntents End---->


    </form>
    
    
</body>
</html>



  