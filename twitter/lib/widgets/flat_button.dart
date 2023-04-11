import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  CustomFlatButton(
    {Key? key,
    required this.label,
    required this.onPressed()
    }
  ): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(50, 20, 50, 0),
        child: TextButton(
          onPressed: () => onPressed(),
          child: Center(
            child: Container(
              child: Text(
                label,
                style: TextStyle(
                  //color: Colors.black,
                  fontSize: 42,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
