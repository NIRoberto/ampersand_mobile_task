class Product {
  final String id;
  final String name;
  final ProductData? data;

  Product({
    required this.id,
    required this.name,
    this.data,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as String,
      name: json['name'] as String,
      data: json['data'] != null
          ? ProductData.fromJson(json['data'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'data': data?.toJson(),
    };
  }
}

class ProductData {
  final String? color;
  final String? capacity;
  final double? price;
  final String? generation;
  final int? year;
  final String? cpuModel;
  final String? hardDiskSize;
  final String? strapColour;
  final String? caseSize;
  final String? description;
  final double? screenSize;

  ProductData({
    this.color,
    this.capacity,
    this.price,
    this.generation,
    this.year,
    this.cpuModel,
    this.hardDiskSize,
    this.strapColour,
    this.caseSize,
    this.description,
    this.screenSize,
  });

  factory ProductData.fromJson(Map<String, dynamic> json) {
    return ProductData(
      color: json['color'] as String?,
      capacity: json['capacity'] ?? json['Capacity'] as String?,
      price: (json['price'] != null)
          ? double.tryParse(json['price'].toString())
          : null,
      generation: json['generation'] ?? json['Generation'] as String?,
      year: json['year'] as int?,
      cpuModel: json['CPU model'] as String?,
      hardDiskSize: json['Hard disk size'] as String?,
      strapColour: json['Strap Colour'] as String?,
      caseSize: json['Case Size'] as String?,
      description: json['Description'] as String?,
      screenSize: json['Screen size'] != null
          ? double.tryParse(json['Screen size'].toString())
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'color': color,
      'capacity': capacity,
      'price': price,
      'generation': generation,
      'year': year,
      'CPU model': cpuModel,
      'Hard disk size': hardDiskSize,
      'Strap Colour': strapColour,
      'Case Size': caseSize,
      'Description': description,
      'Screen size': screenSize,
    };
  }
}
