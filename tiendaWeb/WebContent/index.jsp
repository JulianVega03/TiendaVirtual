<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page import="java.util.ArrayList" %>
    <%@page import="entities.Producto" %>
    
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <title> Tienda Online - DISTRICT</title>
  
  <!-- Fuentes, Tipolog�a, letras -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

  <!-- CDN Bootstrap -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  <!-- CSS propio -->
  <link rel="stylesheet" href="Css/Style.css">

  <!-- Iconos -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css">
  
  <!-- Favicon -->
   <link rel="icon" href="https://district.com.ar/wp-content/uploads/2018/07/cropped-perro-solo-32x32.png" sizes="32x32"/>
</head>

<body>
<!-- ------------------------------------------------------------------------------------------------------------------------- -->
  <!-- HEADER -->
  <header class="navbar-fixed-top">
    <!-- TOP HEADER -->
    <div id="top-header">
    
    <!-- CONTAINER -->
      <div class="container">
      
        <ul class="header-links pull-right">
        
         <li><a href="#" id="link-iniciarRegistrar"><i class="fas fa-user-astronaut"></i>Registrarse / Iniciar Sesi�n</a></li>
         
         <li id="miCuenta"><a href="#"><i class="fas fa-user-alt"></i>Mi Cuenta <span class="caret"></span></a></li>
   
          <% ArrayList<Producto> productosCarrito = (ArrayList<Producto>)session.getAttribute("productosCarrito"); %>
          
         <li>
          <a href="#" id="link-carrito">
           <i class="fa fa-shopping-cart"></i>
             Cart [ <% if(productosCarrito!=null){ %> <%= productosCarrito.size() %> <% }else{ %>0<% } %> ]
          </a>
         </li>
         
         <li>
         <div class="menu-toggle"><a href="#"><i class="glyphicon glyphicon-menu-hamburger"></i><span>Menu</span></a></div>
         </li>
          
        </ul>
        
      </div>
      <!-- CONTAINER -->
      
    </div>
    <!-- /TOP HEADER -->
  </header>
  <!-- /HEADER -->
<!-- ------------------------------------------------------------------------------------------------------------------------- -->
  <!-- NAVEGACION -->
   <nav id="navigation">
   <!-- CONTAINER-->
    <div class="container">
      <br>
      <a href="index.jsp"><img src="Img/LOGO.png" id="nav-logo" alt="" class="img-responsive"></a>
      <br>
      <!-- responsive-nav -->
      <div id="responsive-nav">
      
        <ul class="main-nav nav navbar-nav">
        
          <li class="active"><a href="index.jsp">Home</a></li>
          <li><a href="#">Categor�as</a>
             <ul id="submenu">
               <li><a href="#" class="link-catalogo">Camisas</a></li>
               <li><a href="#" class="link-catalogo">Pantalones</a></li>
               <li><a href="#" class="link-catalogo">Bermudas</a></li>
               <li><a href="#" class="link-catalogo">Accesorios</a></li>
             </ul>
          </li>
          <li><a href="#" class="link-catalogo"> Cat�logo</a></li>
          <li><a href="#" id="link-informacion">Informaci�n</a></li>
          <li><a href="#" id="link-desarrolladores">Desarrolladores</a></li>
          
        </ul>
        
      </div>
      <!-- /responsive-nav -->
    </div>
    <!-- /CONTAINER -->
  </nav>
  <!-- /NAVEGACION -->
<!-- ------------------------------------------------------------------------------------------------------------------------- -->
 <!-- CONTENEDOR - AJAX -->
  <div id="contenedor">
  
    <br><img src="Img/promo.jpg" class="img-responsive img-anexos" alt="" width="100%"><br>
   
    <!-- CARRUSEL -->
    <div class="row">
      <div class="col-md-12">
        <div id="carousel-1" class="carousel slide" data-ride="carousel">
        
          <!-- Indicadores -->
          <ol class="carousel-indicators">
            <li data-target="#carousel-1" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-1" data-slide-to="1"></li>
            <li data-target="#carousel-1" data-slide-to="2"></li>
          </ol>
          
          <!-- contenedor de los slide -->
          <div class="carousel-inner c1" role="listbox">
          
            <!-- #1 -->
            <div class="item  active">
              <img src="Img/slide-1.jpg" class="img-responsive" alt="">
              <div class="carousel-caption">
                <h2>Comprar Ahora</h2>
                <button type="submit" class="btn btn-primary btn-lg link-catalogo" name="button">SHOP NOW</button>
              </div>
            </div>
            
            <!-- #2 -->
            <div class="item ">
              <img src="Img/item2.png" class="img-responsive" alt="">
              <div class="carousel-caption">
                <h2>Comprar Ahora</h2>
                <button type="submit" class="btn btn-default btn-lg link-catalogo" name="button">SHOP NOW</button>
              </div>
            </div>
            
            <!-- #3 -->
            <div class="item">
              <img src="Img/item.png" class="img-responsive">
              <div class="carousel-caption">
                <h2>Comprar Ahora</h2>
                <button type="submit" class="btn btn-default btn-lg link-catalogo" name="button">SHOP NOW</button>
              </div>
            </div>
            
          </div>
          
	        <!-- Controles -->
	        <a href="#carousel-1" class="left carousel-control" role="button" data-slide="prev">
	  			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	  			<span class="sr-only">Anterior</span>
	  		</a>
	        <a href="#carousel-1" class="right carousel-control" role="button" data-slide="next">
	  			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	  			<span class="sr-only">Siguiente</span>
	  		</a>
	  		  
        </div>
      </div>
    </div>
    <!-- /CARRUSEL -->

    <br><!-- ******************************************************************************************** -->

   <!-- CATEGORIAS -->
   <section class="container item-categorias">
    
      <h2 style="text-align: center">Categor�as</h2>
      <hr>
      <br>
      
      <!-- Row -->
      <div class="row">
      
        <div class="col-xs-6 col-sm-3">
          <div id="carousel-2" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner" role="listbox">
              <div class="item  active">
                <a href="#"><img src="Img/camisas.jpg" class="img-responsive categorias-move link-catalogo" alt=""></a>
                <div class="carousel-caption">
                  <button type="button" class="btn btn-primary link-catalogo" name="button">Camisas</button>
                </div>
              </div>
            </div>
          </div>
          <br>
        </div>

        <div class="col-xs-6 col-sm-3">
          <div id="carousel-1" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner" role="listbox">
              <div class="item  active">
                <a href="#"> <img src="Img/pantalones.jpg" class="img-responsive categorias-move link-catalogo" alt=""></a>
                <div class="carousel-caption">
                  <button type="button" class="btn btn-primary link-catalogo" name="button">Pantalones</button>
                </div>
              </div>
            </div>
          </div>
          <br>
        </div>

        <div class="col-xs-6 col-sm-3">
          <div id="carousel-1" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner" role="listbox">
              <div class="item  active">
                <a href="#"> <img src="Img/accesorios.jpg" class="img-responsive categorias-move link-catalogo" alt=""></a>
                <div class="carousel-caption">
                  <button type="button" class="btn btn-primary link-catalogo" name="button">Accesorios</button>
                </div>
              </div>
            </div>
          </div>
          <br>
        </div>
        
        <div class="col-xs-6 col-sm-3">
          <div id="carousel-1" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner" role="listbox">
              <div class="item  active">
                <a href="#"> <img src="Img/bermudas.jpg" class="img-responsive categorias-move link-catalogo" alt=""></a>
                <div class="carousel-caption">
                  <button type="button" class="btn btn-primary link-catalogo" name="button">Bermudas</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        
      </div>
      <!-- /Row -->
      
   </section>
   <!-- /CATEGORIAS -->

   <br><!-- ******************************************************************************************** -->

   <!-- NOVEDADES -->
    <section class="container">
    
      <h2 style="text-align: center">Novedades</h2>
      <hr>
      
      <!-- Row -->
      <div class="row">
      
        <div class="col-xs-12 col-sm-4">
          <div class="thumbnail">
            <img class="img-responsive img-novedades" src="Img/adaptable.png">
            <div class="caption">
              <h3 style="text-align: center">RESPONSIVE DESIGN</h3>
              <p style="text-align: center; color:red;">100%</p>
            </div>
          </div>
        </div>
        
        <div class="col-xs-12 col-sm-4">
          <div class="thumbnail">
            <img class="img-responsive img-novedades" src="Img/seguro.svg">
            <div class="caption">
              <h3 style="text-align: center">COMPRA SEGURA</h3>
              <p style="text-align: center; color:red;">$ 97% </p>
            </div>
          </div>
        </div>
        
        <div class="col-xs-12 col-sm-4">
          <div class="thumbnail">
            <img class="img-responsive img-novedades" src="Img/envio.png">
            <div class="caption">
              <h3 style="text-align: center">ENVIO GRATIS</h3>
              <p style="text-align: center; color:red;"> 99% </p>
            </div>
          </div>
        </div>
        
      </div>
      <!-- /Row -->
      
    </section>
    <!-- /NOVEDADES -->

  </div>  <!-- /CONTENEDOR - AJAX -->
<!-- ------------------------------------------------------------------------------------------------------------------------- -->
  <br>
  
  <!-- LogoPerro -->
  <a href="index.jsp"><img id="perro-aling" src="Img/logo-perro.png"></a>
  <!-- /LogoPerro -->
  
  <!-- SUSCRIBETE -->
  <section id="suscribirse">
    <form class="" action="index.html" method="post">
      <div class="row" id="Newsletter">
        <div class="row">
          <div class="col-xs-12 col-sm-12">
            <h2>Newsletter</h2>
            <br>
            <h4>Suscribete y s� el primero el recibir nuestras promociones de manera exclusiva.</h4>
            <br>
          </div>
        </div>

        <div class="col-xs-0 col-sm-3">
        </div>
        <div class="col-xs-2 col-sm-1">
          <label for="">Correo: </label>
        </div>
        <div class="col-xs-6 col-sm-3">
          <input type="email" class="form-control" name="" value="" placeholder="email@ejemplo.com">
        </div>
        <div class="col-xs-4 col-sm-2">
          <button type="submit" class="btn btn-primary" name="button">Suscribete</button>
        </div>
        <div class="col-xs-0 col-sm-3">
        </div>
        <br><br><br><br>
      </div>
    </form>
  </section>
  <!-- /SUSCRIBETE -->
<!-- ------------------------------------------------------------------------------------------------------------------------- -->
  <!-- FOOTER -->
  <footer id="footer">
    <!-- top footer -->
    <div class="section">
      <!-- container -->
      <div class="container">
      
        <!-- row -->
        <div class="row">
        
          <div class="col-md-3 col-xs-6">
            <div class="footer">
              <h3 class="footer-title">Acerca de</h3>
              <p>Herramientas utilizadas en el desarrollo del aplicativo web...</p>
              <ul class="footer-links">
                <li><a href="#"><i class="fa fa-map-marker"></i>C�cuta, Colombia</a></li>
                <li><a href="#"><i class="fa fa-phone"></i>+57 311-4441634</a></li>
                <li><a href="#"><i class="fa fa-envelope"></i>julian_bec@outlook.com</a></li>
              </ul>
            </div>
          </div>

          <div class="col-md-3 col-xs-6">
            <div class="footer">
              <h3 class="footer-title">Tecnologias</h3>
              <ul class="footer-links">
                <li><a href="#">JavaScript</a></li>
                <li><a href="#">Ajax</a></li>
                <li><a href="#">Html</a></li>
                <li><a href="#">Css 3</a></li>
                <li><a href="#">JSTL</a></li>
              </ul>
            </div>
          </div>

          <div class="clearfix visible-xs"></div>

          <div class="col-md-3 col-xs-6">
            <div class="footer">
              <h3 class="footer-title">Frameworks</h3>
              <ul class="footer-links">
                <li><a href="#">Bootstrap 3.3.7</a></li>
                <li><a href="#">MySql-Font</a></li>
                <li><a href="#">JSF</a></li>
                <li><a href="#">JPA</a></li>
                <li><a href="#">Hibernate (ORM)</a></li>
              </ul>
            </div>
          </div>

          <div class="col-md-3 col-xs-6">
            <div class="footer">
              <h3 class="footer-title">Software</h3>
              <ul class="footer-links">
                <li><a href="#">Atom</a></li>
                <li><a href="#">Eclipse</a></li>
                <li><a href="#">Google Chrome</a></li>
                <li><a href="#">Photoshop</a></li>
                <li><a href="#">Help</a></li>
              </ul>
            </div>
          </div>
          
        </div>
        <!-- /row -->
        
      </div>
      <!-- /container -->
    </div>
    <!-- /top footer -->
  </footer>
  <!-- /FOOTER -->
<!-- -------------------------------------------------------------------------------------------------------------------------------------- -->

  <!-- JQuery -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <!-- Bootstrap JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!-- JavaScript Propio -->
  <script src="Js/JS.js"></script>
  <!-- Ajax -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</body>

</html>