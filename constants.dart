import 'package:flutter/material.dart';
class GradientButton extends StatelessWidget {
  final Widget child;
  final  onPressed;
  final  gradient;
  GradientButton({
    required this.onPressed,
    required this.child,
     this.gradient });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
          child:
          Container(
            color: Colors.blue.shade900,
              constraints: BoxConstraints(
                  maxWidth: 300.0,
                  minHeight: 50.0),
              alignment: Alignment.center,
              child: child
          ),
        ),
    );
  }
}
