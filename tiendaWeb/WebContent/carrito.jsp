<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- CONTAINER -->
<div class="container">
  <br>
  
<!-- ------------------------------------------------------------------------------------------------------------------------- -->
  <!-- MIGAS DE PAN -->
  <ol class="breadcrumb">
    <li><a href="index.jsp">Home</a></li>
    <li><a href="index.jsp">Catalogo</a></li>
    <li class="active">Carrito de Compras</li>
  </ol>
  <!-- MIGAS DE PAN -->
<!-- ------------------------------------------------------------------------------------------------------------------------- -->
  <!-- ROW -->
  <div class="row">
    <div class="container">
      <div class="col-xs-12 col-sm-1">
        <h5>Producto</h5>
      </div>
      <div class="col-xs-12 col-sm-3">
        <h5>Nombre</h5>
      </div>
      <div class="col-xs-12 col-sm-4">
        <h5>Descripción</h5>
      </div>
      <div class="col-xs-12 col-sm-1">
        <h5>Cantidad</h5>
      </div>
      <div class="col-xs-12 col-sm-2">
        <h5>Precio</h5>
      </div>
      <div class="col-xs-12 col-sm-1">
      <h5>Remover</h5>
      </div>
    </div>
  </div>
  <!-- /ROW -->
<!-- ------------------------------------------------------------------------------------------------------------------------- -->

     <c:forEach var="productosCart" items="${sessionScope.productosCarrito}">       
      
<!-- ------------------------------------------------------------------------------------------------------------------------- -->
  <!-- ROW -->
  <div class="row">
    <div class="container">
      <div class="col-xs-12 col-sm-1">
        <img class="img-responsive categorias-move" src="Img/productos/${productosCart.imagen }" style="max-height: 80px;">
      </div>
      <div class="col-xs-12 col-sm-3">
        <h6>${productosCart.nombre }</h6>
      </div>
      <div class="col-xs-12 col-sm-4">
        <h6>${productosCart.descripcion }</h6>
      </div>
      <div class="col-xs-12 col-sm-1">
        <input type="number" class="form-control" value="1">
      </div>
      <div class="col-xs-12 col-sm-2">
        <h5> $ ${productosCart.precio }</h5>
      </div>
      <div class="col-xs-12 col-sm-1">
        <button type="button" class="btn btn-default" aria-label="Left Align">
		  <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
		</button>
      </div>
    </div>
  </div>
  <!-- /ROW -->
<!-- ------------------------------------------------------------------------------------------------------------------------- -->
  <br>
  <hr>
   <c:set var = "salary" scope = "session" value = "${productosCart.precio}"/>
  </c:forEach>
  
  <br>
  
  <div class="form-group">
      <label class="control-label">TOTAL:</label>
      <div class="">
        <input type="text" class="form-control" value="$  <c:out value = "${salary}"/>" readonly="readonly">
      </div>
  </div>
  
  <button type="button" class="btn btn-primary " name="button">Finalizar Compra</button>
  <hr>
  <button type="button" class="btn btn-default link-catalogo"  name="button">Seguir Comprando</button>
  
  
</div>
<!-- /CONTAINER -->

<!-- JavaScript Propio -->
<script src="Js/JS.js"></script>
<!-- AJAX -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
