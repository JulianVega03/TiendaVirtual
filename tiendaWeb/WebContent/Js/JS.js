
$(".link-detalle").click(function(event) {
	$("#contenedor").load('detalle.jsp');
});       
$("#link-iniciarRegistrar").click(function(event) {
	$("#contenedor").load('login.jsp');
});
$("#link-carrito").click(function(event) {
	$("#contenedor").load('carrito.jsp');
});
$(".link-catalogo").click(function(event) {
	$("#contenedor").load('catalogo.jsp');
});
$("#link-informacion").click(function(event) {
	$("#contenedor").load('informacion.jsp');
});
$("#link-desarrolladores").click(function(event) {
	$("#contenedor").load('desarrolladores.jsp');
});
$("#link-quienesSomos").click(function(event) {
	$("#contenedorInfo").load('quienesSomos.jsp');
});
$("#link-mision").click(function(event) {
	$("#contenedorInfo").load('mision.jsp');
});
$("#link-vision").click(function(event) {
	$("#contenedorInfo").load('vision.jsp');
});

(function($) {
	$('.menu-toggle > a').on('click', function (e) {
		e.preventDefault();
		$('#responsive-nav').toggleClass('active');
	})
})(jQuery);
