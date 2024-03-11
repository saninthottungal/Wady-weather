import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScreenLobby extends StatelessWidget {
  const ScreenLobby({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
            ),
            const Text("July 20, 2022"),
            const SizedBox(height: 20),
            const Text(
              "Barcelona",
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 20),
            Image.asset(
              "assests/images/cloudysunny.png",
              scale: 5,
            ),
            const SizedBox(height: 5),
            const Text(
              "31",
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text("Mostly Sunny"),
            const SizedBox(height: 20),
            //container

            Container(
              height: MediaQuery.of(context).size.height * 0.14,
              width: MediaQuery.of(context).size.width * 0.9,
              //color: Colors.black26,
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(40)),

              child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 50),
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
