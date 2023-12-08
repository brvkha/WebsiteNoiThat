<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ------>
       <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/> 
         
         <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
    <!-- Google Fonts Roboto -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" /> 
    <!-- MDB -->
    <link rel="stylesheet" href="css/mdb.min.css" />
    <!-- Custom styles -->
    <link rel="stylesheet" href="css/style.css" />
    
      <!-- Roboto Font -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700&display=swap"> 
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
  <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb-pro.min.css">
  <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb.ecommerce.min.css"> 
  <!-- Your custom styles (optional) -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> 
     
           <style>
      /* Carousel styling */
      #introCarousel,
      .carousel-inner,
      .carousel-item,
      .carousel-item.active {
        height: 100vh;
      }

      .carousel-item:nth-child(1) {
        background-image: url('images/banner1.jpg');
        background-repeat: no-repeat;
        background-size: 80% 80%;
        background-position: center center;
      }

      .carousel-item:nth-child(2) {
        background-image: url('images/banner2.jpg');
        background-repeat: no-repeat;
        background-size: 80% 80%;
        background-position: center center;
      }

      .carousel-item:nth-child(3) {
        background-image: url('images/banner3.jpg');
        background-repeat: no-repeat;
        background-size: 80% 80%;
        background-position: center center;
      }

      /* Height for devices larger than 576px */
      @media (min-width: 992px) {
        #introCarousel {
          margin-top: -58.59px;
        }
      }

      .navbar .nav-link {
        color: #fff !important;
      }
    </style>
    
    </head>
    <body class="skin-light" onload="loadAmountCart()">
        <jsp:include page="Menu.jsp"></jsp:include>
       
        
        
 <!-- Carousel wrapper -->
    <div id="introCarousel" class="carousel slide carousel-fade shadow-2-strong" data-mdb-ride="carousel" style="margin-top:35px;">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-mdb-target="#introCarousel" data-mdb-slide-to="0" class="active"></li>
        <li data-mdb-target="#introCarousel" data-mdb-slide-to="1"></li>
        <li data-mdb-target="#introCarousel" data-mdb-slide-to="2"></li>
      </ol>

      <!-- Inner -->
      <div class="carousel-inner">
        <!-- Single item -->
        <div class="carousel-item active">
         
        </div>

        <!-- Single item -->
        <div class="carousel-item">
          
        </div>

        <!-- Single item -->
        <div class="carousel-item">
          
        </div>
      </div>
      <!-- Inner -->

      <!-- Controls -->
      <a class="carousel-control-prev black" href="#introCarousel" role="button" data-mdb-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="false"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next black" href="#introCarousel" role="button" data-mdb-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    <!-- Carousel wrapper -->


            
            <div class="card-group" style="margin-top:50px;">
  <div class="card" style="border-style: none;">
    <img style="height:55px; width:64px; margin: auto;" src="images/iconfinder_truck.png">
    <div class="card-body">
      <h5 class="card-title" style="text-align:center">GIAO HÀNG TOÀN QUỐC</h5>
      <p class="card-text" style="text-align:center">Vận chuyển khắp Việt Nam</p>
    </div>
  </div>
  <div class="card" style="border-style: none;">
    <img class="card-img-top" style="height:55px; width:64px; margin: auto;" src="images/iconfinder_payment.png" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title" style="text-align:center">THANH TOÁN KHI NHẬN HÀNG</h5>
      <p class="card-text" style="text-align:center">Nhận hàng tại nhà rồi thanh toán</p>
    </div>
  </div>
  <div class="card" style="border-style: none;">
    <img class="card-img-top" style="height:55px; width:64px; margin: auto;" src="images/iconfinder_service_repair_phone_mobile_wrench_screw_driver.png" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title" style="text-align:center">BẢO HÀNH DÀI HẠN</h5>
      <p class="card-text" style="text-align:center">Bảo hàng lên đến 60 ngày</p>
    </div>
  </div>
  <div class="card" style="border-style: none;">
    <img class="card-img-top" style="height:55px; width:64px; margin: auto;" src="images/iconfinder_refresh.png" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title" style="text-align:center">ĐỔI HÀNG DỄ DÀNG</h5>
      <p class="card-text" style="text-align:center">Đổi hàng thoải mái trong 30 ngày</p>
    </div>
  </div>
</div>
            
           
            <div class="container">
              
        
            
              
             <div class="row" style="margin-top:25px">            
				<h1 style="text-align:center; width:100%" id="moiNhat">SẢN PHẨM MỚI NHẤT</h1>
                    <div class="col-sm-12">
                        <div id="contentMoiNhat" class="row">
                        <c:forEach items="${list8Last}" var="o">
                            <div class=" col-12 col-md-6 col-lg-3">
                                <div class="card">
                                <div class="view zoom z-depth-2 rounded">
                                    <img class="img-fluid w-100" src="${o.image}" alt="Card image cap">
                                   
                                     </div>
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-success btn-block">${o.price} VND</p>
                                            </div> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                  
                </div>

            </div>
            
            
             <div class="row" style="margin-top:25px">            
				<h1 style="text-align:center; width:100%" id="TQA">TỦ QUẦN ÁO MỚI NHẤT</h1>
                    <div class="col-sm-12">
                        <div id="contentTQA" class="row">
                        <c:forEach items="${list4TQALast}" var="o">
                            <div class="productTQA col-12 col-md-6 col-lg-3">
                                <div class="card">
                                 <div class="view zoom z-depth-2 rounded">
                                    <img class="img-fluid w-100" src="${o.image}" alt="Card image cap">
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-success btn-block">${o.price} VND</p>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                   <button onclick="loadMoreTQA()" class="btn btn-primary">Load more</button>
                </div>
            </div>
            
            
              <div class="row" style="margin-top:25px">            
				<h1 style="text-align:center; width:100%" id="BPN">BỘ PHÒNG NGỦ MỚI NHẤT</h1>
                    <div class="col-sm-12">
                        <div id="contentBPN" class="row">
                        <c:forEach items="${list4BPNLast}" var="o">
                            <div class="productBPN col-12 col-md-6 col-lg-3">
                                <div class="card">
                                <div class="view zoom z-depth-2 rounded">
                                    <img class="img-fluid w-100" src="${o.image}" alt="Card image cap">
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}</p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-success btn-block">${o.price} VND</p>
                                            </div>
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                   <button onclick="loadMoreBPN()" class="btn btn-primary">Load more</button>
                </div>
            </div>
            
            
             <div class="row" style="margin-top:50px">            
                    <div class="col-sm-12">
                        <div id="content" class="row">
                            <div class=" col-12 col-md-12 col-lg-6">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt" style="text-align:center; font-size:18pt; color:#b57b00;">Về chúng tôi</h4>
                                        <h2 class="card-title show_txt" style="text-align:center; font-size:24pt;">Furniture Store</h2>
                                        <p style="text-align:center;">Uy tín đã được khẳng định qua thời gian, đây chính là địa chỉ tin cậy dành cho những người yêu thẩm mỹ và muốn trang trí không gian sống của mình với nội thất đẳng cấp. </p> 
                                        <p> Chúng tôi chuyên cung cấp nội thất cao cấp, đa dạng về kiểu dáng và chất lượng, mang đến cho khách hàng trải nghiệm mua sắm không giới hạn tại Hà Nội và thành phố Hồ Chí Minh.</p>
										<p>Hãy đến với chúng tôi, nơi bạn có thể biến không gian sống của mình thành một tác phẩm nghệ thuật độc đáo
										 và phản ánh phong cách cá nhân. </p>
										<p> Với cam kết về chất lượng và sự đa dạng trong thiết kế,
										  chúng tôi là đối tác tin cậy của bạn trong việc trang trí không gian sống theo cách độc đáo và tinh tế nhất.</p>                  
                                    </div>  
                            </div>
                            <div class=" col-12 col-md-12 col-lg-6">
                                    <img class="card-img-top" src="images/showroom.gif" alt="Card image cap">        
                            </div>
                    </div>
                </div>
            </div>
            
            
            
            
            
        </div>

        <jsp:include page="Footer.jsp"></jsp:include>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
        
        	 function loadMore() {
                 var amount = document.getElementsByClassName("product").length;
                 $.ajax({
                     url: "/DoAn/load",
                     type: "get", //send it through get method
                     data: {
                         exits: amount
                     },
                     success: function (data) {
                         var row = document.getElementById("content");
                         row.innerHTML += data;
                     },
                     error: function (xhr) {
                         //Do Something to handle error
                     }
                 });
             }
        	 function loadMoreTQA() {
                 var amountTQA = document.getElementsByClassName("productTQA").length;
                 $.ajax({
                     url: "/DoAn/loadTQA",
                     type: "get", //send it through get method
                     data: {
                         exitsTQA: amountTQA
                     },
                     success: function (dataTQA) {
                         document.getElementById("contentTQA").innerHTML += dataTQA;
                         
                     },
                     error: function (xhr) {
                         //Do Something to handle error
                     }
                 });
             }
        	 function loadMoreBPN() {
                 var amountBPN = document.getElementsByClassName("productBPN").length;
                 $.ajax({
                     url: "/DoAn/loadBPN",
                     type: "get", //send it through get method
                     data: {
                         exitsBPN: amountBPN
                     },
                     success: function (dataBPN) {
                         document.getElementById("contentBPN").innerHTML += dataBPN;
                         
                     },
                     error: function (xhr) {
                         //Do Something to handle error
                     }
                 });
             }
             function searchByName(param){
                 var txtSearch = param.value;
                 $.ajax({
                     url: "/DoAn/searchAjax",
                     type: "get", //send it through get method
                     data: {
                         txt: txtSearch
                     },
                     success: function (data) {
                         var row = document.getElementById("content");
                         row.innerHTML = data;
                     },
                     error: function (xhr) {
                         //Do Something to handle error
                     }
                 });
             }
             function load(cateid){
             	 $.ajax({
                      url: "/DoAn/category",
                      type: "get", //send it through get method
                      data: {
                          cid: cateid
                      },
                      success: function (responseData) {
                          document.getElementById("content").innerHTML = responseData;
                      }
                  });
             }    
             function loadAmountCart(){
             	 $.ajax({
                      url: "/DoAn/loadAllAmountCart",
                      type: "get", //send it through get method
                      data: {
                          
                      },
                      success: function (responseData) {
                          document.getElementById("amountCart").innerHTML = responseData;
                      }
                  });
             }         
        </script>  
   
  		
  		 <!-- MDB -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
    <!-- Custom scripts -->
    <script type="text/javascript" src="js/script.js"></script>
    
     <!-- SCRIPTS -->
  <!-- JQuery -->
  <script src="https://mdbootstrap.com/previews/ecommerce-demo/js/jquery-3.4.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/bootstrap.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.min.js"></script>
  <!-- MDB Ecommerce JavaScript -->
  <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.ecommerce.min.js"></script>
    </body>
</html>

