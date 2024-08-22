class Service {
  final String name;
  final String description;
  final double price;

  Service({required this.name, required this.description, required this.price});

  factory Service.fromJson(Map<String, dynamic> json) {
    return Service(
      name: json['name'],
      description: json['description'],
      price: json['price'],
    );
  }
}