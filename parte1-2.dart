
class Producto {
  String nombre;
  double precio;
  String categoria;

  Producto(this.nombre, this.precio, this.categoria);

  void mostrarDetalles() {
    print('Nombre: $nombre');
    print('Precio: \$${precio.toStringAsFixed(2)}');
    print('Categoría: $categoria');
  }
}

class Electronico extends Producto {
  int garantia;

  Electronico(String nombre, double precio, String categoria, this.garantia)
      : super(nombre, precio, categoria);

  @override
  void mostrarDetalles() {
    super.mostrarDetalles(); 
    print('Garantía: $garantia meses');
  }
}

void main() {
  var producto = Producto('Laptop', 1500.00, 'Tecnología');
  producto.mostrarDetalles();

  print('');

  var electronico = Electronico('Smartphone', 800.00, 'Tecnología', 24);
  electronico.mostrarDetalles();
}
