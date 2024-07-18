import 'package:flutter/material.dart';
import 'package:pizzamania_admin/src/constants/colors.dart';

class ShowMacroWidegt extends StatelessWidget {
  final String title;
  final int value;
  final IconData icon;

  const ShowMacroWidegt(
      {required this.title,
      required this.value,
      required this.icon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                  color: lightgreyColor, offset: Offset(2, 2), blurRadius: 5)
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(
                icon,
                color: redColor,
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  title == "Calories"
                      ? "$value  \n$title"
                      : "$value mg \n$title",
                  style: const TextStyle(
                    fontSize: 10,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
