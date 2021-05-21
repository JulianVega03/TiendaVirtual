<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!-- CONTAINER -->
<div class="container">

   <br>
<!-- ------------------------------------------------------------------------------------------------------------------------- -->
	 <!-- MIGAS DE PAN -->
		<ol class="breadcrumb">
		  <li><a href="index.jsp">Home</a></li>
		  <li class="active">Catálogo</li>
		</ol>
	 <!-- /MIGAS DE PAN -->
<!-- ------------------------------------------------------------------------------------------------------------------------- -->
     <!-- CABECERA -->
	  <div class="row">
	  
	        <!-- Filtro Categorias -->
		    <div class="col-xs-6 col-lg-6">
		      <div class="input-group">
		        <div class="input-group">
		          <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Filtrar por Categoria <span class="caret"></span></button>
		            <ul class="dropdown-menu">
			           <li><a href="#">Camisas</a></li>
			           <li><a href="#">Pantalones</a></li>
			           <li><a href="#">Bermudad</a></li>
			           <li role="separator" class="divider"></li>
			           <li><a href="#">Accesorios</a></li>
		            </ul>
		        </div>
		      </div>
		    </div>
		    
		    <!-- Barra Buscar -->
		    <div class="col-xs-6 col-lg-6">
		      <div class="input-group">
		        <input type="text" class="form-control" placeholder="Search for...">
		        <span class="input-group-btn">
		         <button class="btn btn-primary" type="button">Go!</button>
		        </span>
		      </div>
		    </div>
		    
	  </div>
	  <!-- /CABECERA -->
<!-- ------------------------------------------------------------------------------------------------------------------------- -->
     <!-- /CATALOGO -->
     <div class="row">
     
      <sql:setDataSource
	     driver ="com.mysql.jdbc.Driver"
	     url="jdbc:mysql://localhost:3306/tiendaweb"
	     user="root"
      />
      
	<sql:query var="productos">
	    select * from producto
	</sql:query>
	
	<c:forEach var="producto" begin="0" items="${productos.rows}">
	   <c:if test="${producto.stock>0}">
	   
		  <div class="col-xs-12 col-sm-3">
			<div class="thumbnail">
			   <!-- Imagen/Boton -->
			   <form action="detalle.jsp" method="post">
			  	      <input name="id" value="${producto.id}"style="display:none">
			          <input name="nombre" value="${producto.nombre}"style="display:none">
			          <input name="precio" value="${producto.precio}"style="display:none">
			          <input name="stock" value="${producto.stock}"style="display:none">
			          <input name="imagen" value="${producto.imagen}"style="display:none">
			          <input name="descripcion" value="${producto.descripcion}"style="display:none">
			          <input name="categoria" value="${producto.categoria}"style="display:none">
			      <button type="submit" id="btn-img"><img class="img-responsive categorias-move" src="Img/productos/${producto.imagen}"></button>
			   </form>
			   
			     <h4 style="text-align: center">${producto.nombre}</h4>
			     <p style="text-align: center">$ ${producto.precio}</p>
			     
			   <!-- row -->
			   <div class="row">
			      <!-- Boton Agregar Carrito -->
			      <div class="col-xs-6 col-sm-6">
			         <form action="AgregarCarritoController" method="post">
						 <input name="id_Producto" value="${producto.id}"style="display:none">
						 <button type="submit" class="btn btn-primary" ><i class="fa fa-shopping-cart"></i>  Add to Cart </button>
					  </form>
			       </div>
			       <!-- Ver Detalles -->
			       <div class="col-xs-6 col-sm-6">
			        <form action="detalle.jsp"  method="post">
			          <input name="id" value="${producto.id}"style="display:none">
			          <input name="nombre" value="${producto.nombre}"style="display:none">
			          <input name="precio" value="${producto.precio}"style="display:none">
			          <input name="stock" value="${producto.stock}"style="display:none">
			          <input name="imagen" value="${producto.imagen}"style="display:none">
			          <input name="descripcion" value="${producto.descripcion}"style="display:none">
			          <input name="categoria" value="${producto.categoria}"style="display:none">
					  <button type="submit" class="btn btn-default">Ver Detalles</button>
					 </form>
			       </div>
			   </div>
			   <!-- /row -->
			   
			  </div>
			</div>
			
		   </c:if>
		 </c:forEach>
		 				 
     </div>
      <!-- /CATALOGO -->
<!-- ------------------------------------------------------------------------------------------------------------------------- -->
 
</div>
<!-- /CONTAINER -->


<!-- JavaScript Propio -->
<script src="Js/JS.js"></script>
<!-- Ajax -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
