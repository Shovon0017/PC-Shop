class CartProductShowModel {
  List<CartProducts>? cartProducts;

  CartProductShowModel({this.cartProducts});

  CartProductShowModel.fromJson(Map<String, dynamic> json) {
    if (json['cartProducts'] != null) {
      cartProducts = <CartProducts>[];
      json['cartProducts'].forEach((v) {
        cartProducts!.add(new CartProducts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cartProducts != null) {
      data['cartProducts'] = this.cartProducts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CartProducts {
  String? id;
  String? images;
  String? name;
  String? category;
  String? brand;
  double? price;
  int? stock;
  Specifications? specifications;

  CartProducts(
      {this.id,
        this.images,
        this.name,
        this.category,
        this.brand,
        this.price,
        this.stock,
        this.specifications});

  CartProducts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    images = json['Images'];
    name = json['name'];
    category = json['category'];
    brand = json['brand'];
    price = json['price'];
    stock = json['stock'];
    specifications = json['specifications'] != null
        ? new Specifications.fromJson(json['specifications'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Images'] = this.images;
    data['name'] = this.name;
    data['category'] = this.category;
    data['brand'] = this.brand;
    data['price'] = this.price;
    data['stock'] = this.stock;
    if (this.specifications != null) {
      data['specifications'] = this.specifications!.toJson();
    }
    return data;
  }
}

class Specifications {
  int? cores;
  int? threads;
  String? baseClock;
  String? turboClock;
  String? cache;
  String? memory;
  String? boostClock;
  String? capacity;
  String? type;
  String? speed;
  String? latency;
  String? readSpeed;
  String? writeSpeed;

  Specifications(
      {this.cores,
        this.threads,
        this.baseClock,
        this.turboClock,
        this.cache,
        this.memory,
        this.boostClock,
        this.capacity,
        this.type,
        this.speed,
        this.latency,
        this.readSpeed,
        this.writeSpeed});

  Specifications.fromJson(Map<String, dynamic> json) {
    cores = json['cores'];
    threads = json['threads'];
    baseClock = json['base_clock'];
    turboClock = json['turbo_clock'];
    cache = json['cache'];
    memory = json['memory'];
    boostClock = json['boost_clock'];
    capacity = json['capacity'];
    type = json['type'];
    speed = json['speed'];
    latency = json['latency'];
    readSpeed = json['read_speed'];
    writeSpeed = json['write_speed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cores'] = this.cores;
    data['threads'] = this.threads;
    data['base_clock'] = this.baseClock;
    data['turbo_clock'] = this.turboClock;
    data['cache'] = this.cache;
    data['memory'] = this.memory;
    data['boost_clock'] = this.boostClock;
    data['capacity'] = this.capacity;
    data['type'] = this.type;
    data['speed'] = this.speed;
    data['latency'] = this.latency;
    data['read_speed'] = this.readSpeed;
    data['write_speed'] = this.writeSpeed;
    return data;
  }
}
