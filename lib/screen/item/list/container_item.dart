import 'package:flutter/material.dart';

class ContainerItem extends StatelessWidget {
  const ContainerItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      width: MediaQuery.of(context).size.width / 5.2,
      height: MediaQuery.of(context).size.width / 5.2,
      decoration: BoxDecoration(
        color: Colors.black12,
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
