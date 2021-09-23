part of 'models.dart';

enum FoodType { new_food, popular, recommended }

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;
  final List<FoodType> types;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate,
      this.types = const []});

  @override
  // TODO: implement props
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath:
          'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      name: 'Soup mie',
      description: 'Merupakan sebuah makanan yang sangat mahal',
      ingredients: 'kuah cabe bawah merah',
      price: 90000,
      rate: 4.7,
      types: [FoodType.new_food, FoodType.popular, FoodType.recommended]),
  Food(
      id: 2,
      picturePath:
          'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      name: 'Cabe goreng tambah ayam',
      description: 'Merupakan sebuah makanan yang sangat mahal',
      ingredients: 'kuah cabe bawah merah',
      price: 90000,
      rate: 4.7),
  Food(
      id: 3,
      picturePath:
          'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      name: 'ayam asam manis',
      description: 'Merupakan sebuah makanan yang sangat mahal',
      ingredients: 'kuah cabe bawah merah',
      price: 90000,
      rate: 4.7,
      types: [FoodType.new_food, FoodType.recommended]),
  Food(
      id: 4,
      picturePath:
          'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      name: 'Es Kelapa Gula Jawa',
      description: 'Merupakan sebuah makanan yang sangat mahal',
      ingredients: 'kuah cabe bawah merah',
      price: 90000,
      rate: 4.7,
      types: [FoodType.popular, FoodType.recommended]),
  Food(
      id: 5,
      picturePath:
          'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      name: 'Soup Buah ',
      description: 'Merupakan sebuah makanan yang sangat mahal',
      ingredients: 'kuah cabe bawah merah',
      price: 90000,
      rate: 4.7,
      types: [FoodType.recommended]),
  Food(
      id: 6,
      picturePath:
          'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      name: 'Soup Ayam Pedas',
      description: 'Merupakan sebuah makanan yang sangat mahal',
      ingredients: 'kuah cabe bawah merah',
      price: 90000,
      rate: 4.7,
      types: [FoodType.popular])
];
