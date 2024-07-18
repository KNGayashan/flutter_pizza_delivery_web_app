import 'package:flutter/material.dart';

import 'package:pizza_repository/pizza_repository.dart';
import 'package:pizzamania_admin/src/constants/colors.dart';
import 'package:pizzamania_admin/src/modules/home/components/macro.dart';

class DetailsScreen extends StatelessWidget {
  final Pizza pizza;
  const DetailsScreen(this.pizza, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: greyColor),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 500,
                height: 500 - (40),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: greyColor, offset: Offset(3, 3), blurRadius: 5),
                  ],
                  image: DecorationImage(
                    image: NetworkImage(pizza.picture),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 500,
                height: 400 - (40),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: greyColor,
                      offset: Offset(3, 3),
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Text(
                              pizza.name,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Rs ${(pizza.price - (pizza.price * (pizza.discount / 100))).toInt()}",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  Text(
                                    "Rs ${pizza.price}",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: greyColor,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              pizza.description,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: greyColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          ShowMacroWidegt(
                            title: "Calories",
                            value: pizza.macros.calories,
                            icon: Icons.flash_on,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ShowMacroWidegt(
                            title: "Protein",
                            value: pizza.macros.proteins,
                            icon: Icons.egg_alt_outlined,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ShowMacroWidegt(
                            title: "Fat",
                            value: pizza.macros.fat,
                            icon: Icons.oil_barrel_rounded,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ShowMacroWidegt(
                            title: "Carbs",
                            value: pizza.macros.carbs,
                            icon: Icons.breakfast_dining_outlined,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              elevation: 3.0,
                              backgroundColor: blackColor,
                              foregroundColor: whiteColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                          child: const Text(
                            "Buy Now",
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
