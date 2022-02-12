import 'package:flutter/material.dart';

class EnterButton extends StatelessWidget {
  const EnterButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 1, bottom: 1, right: 0, left: 0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 5,
        height: MediaQuery.of(context).size.width / 5,
        child: Theme(
          data: ThemeData(splashColor: Colors.white),
          child: Material(
            elevation: 0,
            clipBehavior: Clip.hardEdge,
            color: Colors.transparent,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              onPressed: onTap,
              child: Text(
                'Enter',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 23,
                  // fontSize: 50,
                ),
              ),
              color: Colors.orange,
              textColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
