import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String label;
  Function onPressed;
  CustomFlatButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext action) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ElevatedButton(
        onPressed: () => null,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
                side: BorderSide(color: Colors.blue)
            ),),),),);
  }
}
