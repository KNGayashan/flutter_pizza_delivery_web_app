import 'package:flutter/material.dart';
import 'package:pizzamania_admin/src/constants/colors.dart';

class MyMacroWidegt extends StatelessWidget {
  final String title;
  final int value;
  final IconData icon;
  final TextEditingController controller;

  const MyMacroWidegt(
      {required this.title,
      required this.value,
      required this.icon,
      required this.controller,
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
              TextField(
                controller: controller,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                ),
                decoration: InputDecoration(
                  isDense: true,
                  suffixText: title == "Calories" ? '' : 'g',
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  title,
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
