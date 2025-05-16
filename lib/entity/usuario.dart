class Usuario {
  final String nombre;
  final String email;
  final int accionesTotales;
  final String ubicacion;
  final String fechaRegistro;
  final String nivel;
  final List<String> favoritas;

  Usuario({
    required this.nombre,
    required this.email,
    required this.accionesTotales,
    required this.ubicacion,
    required this.fechaRegistro,
    required this.nivel,
    required this.favoritas,
  });
}