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
      child: Column(
        children: [
          const SizedBox(height: 60),
          const Text(
            "Saved cities will appear here.\nHold press to delete",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 165,
                  child: Card(
                    color: const Color.fromARGB(255, 214, 211, 211),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 30,
                      ),
                      child: ListTile(
                        title: const Text(
                          "Coimbatore",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: const Row(
                          children: [
                            Text(
                              "31",
                              style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 35,
                              ),
                              child: Text(
                                "\u1d52",
                                style: TextStyle(
                                  fontSize: 40,
                                ),
                              ),
                            ),
                          ],
                        ),
                        trailing: Image.asset(
                          "assests/images/moody.png",
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 1);
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
