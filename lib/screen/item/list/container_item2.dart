import 'package:flutter/material.dart';

class ContainerItem2 extends StatelessWidget {
  const ContainerItem2({
    Key? key,
    required this.text,
    required this.isCollect,
  }) : super(key: key);

  final String text;
  final bool isCollect;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(5.0),
      width: MediaQuery.of(context).size.width / 7,
      height: MediaQuery.of(context).size.width / 7,
      decoration: BoxDecoration(
        color: isCollect ? Colors.blue : Colors.red,
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
