import 'package:flutter/material.dart';
import 'package:wady/core/Constants.dart';

class ScreenSaved extends StatelessWidget {
  const ScreenSaved({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: backgroundGradient,
      ),
      height: double.infinity,
      width: double.infinity,
      child: const Center(
        child: Text("Screen Saved"),
      ),
    );
  }
}
