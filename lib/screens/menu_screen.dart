import 'package:coffee_shop_flutter/models/drink_menu_model.dart';
import 'package:coffee_shop_flutter/widgets/menu_card_widget.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
        titleTextStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag_outlined, color: Colors.black87),
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) =>
            MenuCardWidget(drinkMenuModel: DrinkMenuModel.drinksMenu[index]),
        itemCount: DrinkMenuModel.drinksMenu.length,
      ),
    );
  }
}
