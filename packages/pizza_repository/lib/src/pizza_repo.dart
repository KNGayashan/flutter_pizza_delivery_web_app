import 'dart:typed_data';

import 'models/models.dart';

abstract class PizzaRepo {
  Future<List<Pizza>> getPizza();

  Future<String> sendImage(Uint8List file, String name);

  Future<void> createPizza(Pizza pizza);
}
