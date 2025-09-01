import 'package:coffee_shop_flutter/models/drink_menu_model.dart';
import 'package:flutter/material.dart';

class MenuCardWidget extends StatelessWidget {
  const MenuCardWidget({super.key, required this.drinkMenuModel});
  final DrinkMenuModel drinkMenuModel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: size.height * 0.12,
            margin: const EdgeInsets.symmetric(vertical: 35, horizontal: 18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: size.width * 0.2),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * 0.4,
                      child: Text(
                        drinkMenuModel.typeName,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text('${drinkMenuModel.numberOfFalvors} different flavors'),
                  ],
                ),
              ],
            ),
          ),

          /// Image
          Positioned(
            bottom: 10,
            left: -20,
            child: Image.asset(
              drinkMenuModel.imagePath,
              width: 200,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
