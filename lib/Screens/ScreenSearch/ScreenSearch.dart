import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:wady/core/Constants.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

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
          SizedBox(height: MediaQuery.of(context).size.height * 0.09),
          const Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: CupertinoSearchTextField(
              backgroundColor: Colors.white70,
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding:
                EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.4),
            child: const Text(
              "Search Results",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
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
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 30,
                      ),
                      child: ListTile(
                        title: Text(
                          "Coimbatore",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Row(
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
