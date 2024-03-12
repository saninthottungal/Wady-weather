import 'package:flutter/material.dart';
import 'package:wady/core/Constants.dart';

class ScreenSettings extends StatelessWidget {
  const ScreenSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: backgroundGradient,
      ),
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Dark Mode",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Switch(
              value: true,
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
