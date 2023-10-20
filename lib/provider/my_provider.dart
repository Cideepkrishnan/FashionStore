import 'package:fashionstore/model/models.dart';
import 'package:flutter/material.dart';

class my_provider with ChangeNotifier {
  int value = 0;
  int itemCount = 1;
  int? total;
  bool isCartContains = false;
  List<CartModel> cartItems = [];
  // int price = 2000;
  void add() {
    value = value + 1;
    notifyListeners();
  }

  void remove() {
    value = value - 1;
    notifyListeners();
  }

  String priceCal(
    int price,
  ) {
    int? total = price * value;
    print(total);
    notifyListeners();
    return total.toString();
  }

  void addToCart(int index) {
    Iterable<CartModel> visibleItem =
        cartItems.where((item) => item.name!.contains(shirts[index]['name']));

    if (visibleItem.isEmpty) {
      cartItems.add(CartModel(
          name: shirts[index]['name'],
          price: shirts[index]['price'],
          finalPrice: total,
          image: shirts[index]['image'],
          itemCount: itemCount));
    } else {
      visibleItem.forEach((item) {
        item.itemCount = item.itemCount! + itemCount;
      });
    }
    notifyListeners();
  }

  void isCart(int index) {
    Iterable<CartModel> matchingItem =
        cartItems.where((item) => item.name!.contains(shirts[index]['name']));
    if (matchingItem.isEmpty) {
      isCartContains = false;
    } else {
      isCartContains = true;
    }
    notifyListeners();
  }

  void addCartItemCount(int index) {
    cartItems[index].itemCount = cartItems[index].itemCount! + 1;
    notifyListeners();
  }

  void removeCartItemCount(int index) {
    cartItems[index].itemCount = cartItems[index].itemCount! - 1;
    notifyListeners();
  }

  void deleteItem(index) {
    cartItems.removeAt(index);
    notifyListeners();
  }

  void resetItemCount() {
    itemCount = 1;
    notifyListeners();
  }
}
