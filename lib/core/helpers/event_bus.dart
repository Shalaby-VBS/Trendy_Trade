import 'package:event_bus/event_bus.dart';

import '../../modules/home/data/models/product_model.dart';

EventBus eventBus = EventBus();

class CartIconEvent {
  final List<ProductModel> cartItems;
  CartIconEvent(this.cartItems);
}

final List<ProductModel> cartItems = [];
