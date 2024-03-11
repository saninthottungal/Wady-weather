import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:wady/core/Constants.dart';

class ScreenLobby extends StatelessWidget {
  const ScreenLobby({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: backgroundGradient),
      height: double.infinity,
      width: double.infinity,
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
            ),
            Text(
              "July 20, 2022",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 16),
            ),
            const SizedBox(height: 6),
            const Text(
              "Barcelona",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 250,
              height: 250,
              //color: Colors.red,
              child: FittedBox(
                child: Image.asset(
                  "assests/images/moody.png",
                ),
              ),
            ),
            // const SizedBox(height: 5),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "31",
                  style: TextStyle(
                    fontSize: 80,
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
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const Text(
              "Mostly Sunny",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(height: 35),
            //container

            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.9,
              //color: Colors.black26,
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(40)),

              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 50),
                child: Row(
                  children: [
                    const Column(
                      children: [
                        Icon(
                          Icons.cloud,
                          color: Colors.white,
                        ),
                        SizedBox(height: 2),
                        Text("24 km/h"),
                        SizedBox(height: 3),
                        Text("Wind"),
                      ],
                    ),
                    const SizedBox(width: 20),
                    SizedBox(
                      height: double.infinity,
                      child: Text(
                        "|",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w100,
                            color: Colors.grey.withOpacity(0.8)),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Column(
                      children: [
                        Icon(Icons.cloud, color: Colors.white),
                        SizedBox(height: 2),
                        Text("24 km/h"),
                        SizedBox(height: 3),
                        Text("Wind"),
                      ],
                    ),
                    const SizedBox(width: 20),
                    SizedBox(
                      height: double.infinity,
                      child: Text(
                        "|",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w100,
                            color: Colors.grey.withOpacity(0.8)),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Column(
                      children: [
                        Icon(Icons.cloud, color: Colors.white),
                        SizedBox(height: 2),
                        Text("24 km/h"),
                        SizedBox(height: 3),
                        Text("Wind"),
                      ],
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
