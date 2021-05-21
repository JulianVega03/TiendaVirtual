<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <title> Tienda Online - DISTRICT</title>
  
  <!-- Fuentes, Tipología, letras -->
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
  
<!-- CONTAINER -->    
<div class="container">

  <br>
<!-- ------------------------------------------------------------------------------------------------------------------------- -->
  <!-- MIGAS DE PAN -->
  <ol class="breadcrumb">
    <li><a href="index.jsp">Home</a></li>
    <li><a href="#" class="link-catalogo">Catalogo</a></li>
    <li class="active">Detalles</li>
  </ol>
  <!-- /MIGAS DE PAN -->
<!-- ------------------------------------------------------------------------------------------------------------------------- -->
  <!-- ROW -->
  <div class="row ">

    <hr>
    
    <div class="col-xs-12 col-sm-1"></div>

    <div class="col-xs-12 col-sm-5" style="margin-left:auto">
      <img style="display:block; margin:auto;" src="Img/productos/${param.imagen}" class="img-responsive categorias-move" width="400px">
    </div>

    <div class="col-xs-12 col-sm-5">
    
      <h2 style="text-align: center;"><b>${param.nombre}</b></h2>
      <hr>
      
      <h3 style="color:red; text-align: center;">$ ${param.precio }</h3>
      <hr>
      
      <div class="row">
      
       <div class="col-xs-4 col-sm-4">
         <h4>Disponibles</h4><input type="text" class="form-control" value="${param.stock}" readonly>
       </div>
       <div class="col-xs-8 col-sm-8">
         <h4>Id Producto</h4><input type="text" class="form-control" value="${param.id}" readonly>
       </div>
       
      </div>

      <hr>
      <h4>Descripción</h4>
      <p> ${param.descripcion} </p>
      
      <hr>
      <div class="row">
      
        <div class="col-xs-4 col-sm-4">
          <input type="number" class="form-control" value="1">
        </div>
        
        <div class="col-xs-8 col-sm-8">
          <form action="AgregarCarritoController" method="post">
			 <input name="id_Producto" value="${param.id}"style="display:none">
			 <button type="submit" class="btn btn-primary" ><i class="fa fa-shopping-cart"></i>  Add to Cart </button>
		  </form>
        </div>
        
      </div>
      <hr>
      
      <h4>Categoria</h4>
      <input type="text" class="form-control" name="" value="${param.categoria}" readonly>

    </div>

    <div class="col-xs-12 col-sm-1"></div>
    
  </div>
  <!-- /ROW -->
<!-- ------------------------------------------------------------------------------------------------------------------------- -->
  
  <br>
  <hr>
  
  <br>
  <img src="Img/divisor.jpg" class="img-responsive" alt="">
  <br>
  
</div>
<!-- /CONTAINER -->  
		    
  <!-- JavaScript Propio -->
  <script src="Js/JS.js"></script>
  <!-- AJAX -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  