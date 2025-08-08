import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  
  final String label;
  final Function()? onTap;

  const Button({
    super.key,
    this.onTap,
    required this.label});
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
     child:  Container(
        height: 51,
        width: 303,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(32)
        ),
        child: Center(
            child: Text(
                label.toUpperCase(),
                style: TextStyle(
                    color: Color(0xFF013568),
                    fontSize: 16
                ),
            ),
        ),
    )
    );
  }
}