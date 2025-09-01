class DrinkMenuModel {
  DrinkMenuModel({
    required this.typeName,
    required this.numberOfFalvors,
    required this.imagePath,
  });
  final String typeName;
  final int numberOfFalvors;
  final String imagePath;

  static List<DrinkMenuModel> drinksMenu = [
    DrinkMenuModel(
      typeName: 'Hot Coffee',
      numberOfFalvors: 22,
      imagePath: 'assets/images/Menu/HotCoffee.png',
    ),
    DrinkMenuModel(
      typeName: 'Hot Tea',
      numberOfFalvors: 3,
      imagePath: 'assets/images/Menu/HotTea.png',
    ),
    DrinkMenuModel(
      typeName: 'Cold Coffee',
      numberOfFalvors: 27,
      imagePath: 'assets/images/Menu/ColdCoffee.png',
    ),
    DrinkMenuModel(
      typeName: 'Cold Tea',
      numberOfFalvors: 12,
      imagePath: 'assets/images/Menu/ColdTea.png',
    ),
    DrinkMenuModel(
      typeName: 'Refreshers',
      numberOfFalvors: 9,
      imagePath: 'assets/images/Menu/Refreshers.png',
    ),
    DrinkMenuModel(
      typeName: 'Frappuccino Blended Beverage',
      numberOfFalvors: 13,
      imagePath: 'assets/images/Menu/FrappuccinoBlendedBeverage.png',
    ),
    DrinkMenuModel(
      typeName: 'Hot Chocolate, Lemonade & More',
      numberOfFalvors: 7,
      imagePath: 'assets/images/Menu/HotChocolateLemonadeMore.png',
    ),
  ];
}
