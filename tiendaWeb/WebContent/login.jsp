<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	
<div class="container">

  <br>
<!-- ------------------------------------------------------------------------------------------------------------------------- -->
  <!-- MIGAS DE PAN -->
  <ol class="breadcrumb">
    <li><a href="index.jsp">Home</a></li>
    <li class="active">Iniciar Sesión / Registrarse</li>
  </ol>
  <!-- /MIGAS DE PAN -->
<!-- ------------------------------------------------------------------------------------------------------------------------- -->

  <h3 style="text-align: center">Comienza a disfrutar de ser uno de nuestros clientes DISTRICT</h3>
  <hr>
  <h4 style="text-align: center">Comleta los campos para realizar el registro</h4>
   <p id="result" style="text-align: center"></p>
  <br>
<!-- ------------------------------------------------------------------------------------------------------------------------- -->
  <!-- ROW -->
  <div class="row">
 
  <div class="col-xs-12 col-sm-1">
  </div>
  
    <!-- REGISTRO -->
    <div class="col-xs-12 col-sm-5">
      <div class="form"> 
         
       <form class="form-horizontal" method="post">
          <div class="form-group">
            <label class="col-lg-3 control-label">Nombre</label>
            <div class="col-lg-8">
              <input type="text" class="form-control" id="nombre" placeholder="Juan Andres">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Apellido</label>
            <div class="col-lg-8">
              <input type="text" class="form-control" id="apellido" placeholder="Perez">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Telefono</label>
            <div class="col-lg-8">
              <input type="text" class="form-control" id="telefono" placeholder="314-xxx-xx-xx" >
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Direccion</label>
            <div class="col-lg-8">
              <input type="text" class="form-control" id="direccion" placeholder="Calle falsa 1-2-3">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Fecha Nacimiento</label>
            <div class="col-lg-8">
              <input type="DATE" class="form-control" id="fechaNacimiento">
            </div>
          </div>
          <hr>
          <div class="form-group">
            <label class="col-lg-3 control-label">Email</label>
            <div class="col-lg-8">
              <input type="email" class="form-control" id="email" placeholder="email@ejemplo.com">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Contraseña</label>
            <div class="col-lg-8">
              <input type="password" class="form-control" id="clave" placeholder="Contraseña">
            </div>
          </div>
          <br>
         <button type="button" class="btn btn-primary" id="registrar" style="margin-left:40%">Registarme</button>
         
       </form>

      </div>
    </div>
    <!-- /REGISTRO -->
    
    <div class="col-xs-12 col-sm-1">
    </div>
    
    <!-- INICIO SESION -->
    <div class="col-xs-12 col-sm-4">
      
     <br><h4 style="text-align: center">Inicia Sesión Aquí</h4> <br>
      
     <div class="form">
       <form method="post">
       
          <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required>
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
          </div>
          
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" name="contraseña" class="form-control" id="exampleInputPassword1" placeholder="Password" required>
          </div>
          
          <button type="button" class="btn btn-primary" style="margin-left:36%" id="iniciar">Iniciar Sesión</button>
          
        </form>
      </div>
      
    </div>
    <!-- /INICIO SESION -->
     
    <div class="col-xs-12 col-sm-1">
    </div>
 
  </div>
  <!-- /ROW -->
<!-- ------------------------------------------------------------------------------------------------------------------------- -->

</div>
<!-- /CONTAINER -->


    <script type="text/javascript">
    $(document).ready(function(){
   	 $('#registrar').click(function(){
   	 var nombre = $('#nombre').val();
   	 var apellido = $('#apellido').val();
   	 var direccion = $('#direccion').val();
   	 var telefono = $('#telefono').val();
   	 var fechaNacimiento=$('#fechaNacimiento').val();
   	 var email = $('#email').val();
   	 var clave = $('#clave').val();
   	 $.ajax({
   		 type:'post',
   		 data:{nombre:nombre,apellido:apellido,direccion:direccion,telefono:telefono,email:email,clave:clave},
   		 url:'RegistroController',
   		 success:function(result){
   			 $('#result').html(result);
   		 }
   	 });
     });
   });

   $(document).ready(function(){
   	 $('#iniciar').click(function(){
   	 var emailS = $('#exampleInputEmail1').val();
   	 var claveS = $('#exampleInputPassword1').val();
   	 $.ajax({
   		 type:'post',
   		 data:{emailS:emailS,claveS:claveS},
   		 url:'InicioSesionController',
   		 success:function(result){
   			 $('#result').html(result);
   		 }
   	 });
     });
   });
	</script>
	
<br>
<hr>