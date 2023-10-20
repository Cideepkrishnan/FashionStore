List<Map<String, dynamic>> shirts = [
  {
    "image":
        "https://images.pexels.com/photos/2897529/pexels-photo-2897529.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "name": "Regular fit",
    "price": "2000 ₹"
  },
  {
    "image":
        "https://i.pinimg.com/564x/fc/7f/1f/fc7f1f7095eb733cda53bfe7823bec65.jpg",
    "name": "Denim jacket",
    "price": "2300 ₹"
  },
  {
    "image":
        "https://i.pinimg.com/564x/e6/d5/60/e6d560e222ae2517e5e25edae5080297.jpg",
    "name": "Block-printed shirt",
    "price": "1999 ₹"
  },
  {
    "image":
        "https://i.pinimg.com/564x/dd/7b/5b/dd7b5bce81a343820ae3d02f08f7167c.jpg",
    "name": " Double-breasted suit",
    "price": "2700 ₹"
  },
  {
    "image":
        "https://i.pinimg.com/564x/b3/e7/ce/b3e7cee53d936a7a99ef6d88363c0997.jpg",
    "name": "check-shirt",
    "price": "2000 ₹"
  },
  {
    "image":
        "https://i.pinimg.com/564x/b0/af/6c/b0af6cbd2a28f8acf96d185e2f402666.jpg",
    "name": "Brown-shirt",
    "price": "2999 ₹"
  },
  {
    "image":
        "https://i.pinimg.com/564x/c3/7a/a3/c37aa31a5dcccdc6e0b0dd4fb1e0680f.jpg",
    "name": "Black-shirt",
    "price": "2500 ₹"
  },
  {
    "image":
        "https://i.pinimg.com/564x/bf/2a/0b/bf2a0bb7521bdb779198c0f7bf303f23.jpg",
    "name": " Regular slogan",
    "price": "2399 ₹"
  }
];

class CartModel {
  String? name;
  int? price;
  int? finalPrice;
  String? image;
  int? itemCount;

  CartModel({
    required this.name,
    required this.price,
    required this.image,
    required this.itemCount,
    required this.finalPrice,
  });
}
