class FoodModel {
  final String title;
  final String subtitle;
  final String imagepath;
  final double price;
  FoodModel({
    required this.title,
    required this.subtitle,
    required this.imagepath,
    required this.price,
  });
}

List<FoodModel> favouriteModel = [
  FoodModel(
      title: 'Noodle Soup',
      subtitle: 'Soup with beef',
      imagepath: 'assets/images/Noodle_Soup2.png',
      price: 450),
  FoodModel(
      title: 'Healthy Eating',
      subtitle: 'Healty mixed food',
      imagepath: 'assets/images/Healthy_Eating.png',
      price: 380),
  FoodModel(
      title: 'Beef Bibimbap',
      subtitle: 'spicy bibimbap sauce',
      imagepath: 'assets/images/Beef_Bibimbap.png',
      price: 870),
  FoodModel(
      title: 'italian Pizza',
      subtitle: 'Small (12”) 6 slices',
      imagepath: 'assets/images/italian_pizza.png',
      price: 540),
];
