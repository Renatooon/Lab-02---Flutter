
abstract class EmpleadoTienda {
  String nombre;
  int horasTrabajadas;

  EmpleadoTienda(this.nombre, this.horasTrabajadas);

  double calcularSalario();

  void mostrarDetalles() {
    print('Nombre: $nombre');
    print('Horas trabajadas: $horasTrabajadas');
    print('Salario: \$${calcularSalario().toStringAsFixed(2)}');
  }
}

class Vendedor extends EmpleadoTienda {
  static const double tasaPorHora = 20.0;

  Vendedor(String nombre, int horasTrabajadas) : super(nombre, horasTrabajadas);

  @override
  double calcularSalario() {
    return horasTrabajadas * tasaPorHora;
  }
}

class Cajero extends EmpleadoTienda {
  static const double tasaPorHora = 15.0;

  Cajero(String nombre, int horasTrabajadas) : super(nombre, horasTrabajadas);

  @override
  double calcularSalario() {
    return horasTrabajadas * tasaPorHora;
  }
}

void main() {
  var vendedor = Vendedor('Carlos', 40);
  var cajero = Cajero('Ana', 30);

  vendedor.mostrarDetalles();
  print('');
  cajero.mostrarDetalles();
}
