class Juice {

  const Juice({
    required this.name,
    required this.price,
    required this.rating,
    required this.image_url,
    required this.weight,
    required this.description,
  });

  final String name;
  final double price;
  final int rating;
  final String image_url;
  final String weight;
  final String description;


  factory Juice.fromJson(Map<String, dynamic> json) {
    String _name = json['name'];
    double _price = (json['price'] as double);
    int _rating = json['rating'];
    String _image_url = json['image_url'];
    String _weight = json['weight'];
    String _description = json['description']; 
    return Juice(
      name: _name,
      price: _price,
      rating: _rating,
      image_url: _image_url,
      weight: _weight,
      description: _description,
    );
  }

}