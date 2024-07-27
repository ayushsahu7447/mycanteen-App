import 'package:flutter/material.dart';

class submit extends StatelessWidget {
  submit({Key? key, required this.label, required this.width, required this.onCountSelected, required this.color}) : super(key: key);
  final String label;
  final double width;
  final VoidCallback onCountSelected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: 30.0, right: 30, bottom: 10),
      child: MaterialButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0))),
          color: color,
          highlightColor: Colors.white,
          splashColor: Colors.black87,
          child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: size.height/40, horizontal: width),
              child: Text(
                label,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              )),
          onPressed: () {onCountSelected();}
      ),
    );
  }
}
