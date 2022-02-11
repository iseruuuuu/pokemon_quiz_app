import 'package:flutter/material.dart';

class KeyboardItem extends StatelessWidget {
  const KeyboardItem({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  final Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(5.0),
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
