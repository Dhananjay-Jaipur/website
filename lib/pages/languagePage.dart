import 'package:flutter/material.dart';

class langPage extends StatelessWidget {
  final langKey;

  const langPage({super.key, required this.langKey});
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    return Container(
      // margin: const EdgeInsets.only(top: 60,),
      width: double.infinity,
      height: 180,
      constraints: const BoxConstraints(minHeight: 120),
      decoration: const BoxDecoration(
        color: Colors.black38,
      ),

      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // dart
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
                  // padding: const EdgeInsets.all(20),
                  height: currentHeight / 4,
                  width: currentWidth / 4,
                  constraints: const BoxConstraints(
                      minHeight: 20, minWidth: 20, maxHeight: 60, maxWidth: 60),
                  child: Image.asset(
                    "asset/icon/icons8-dart-48.png",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "dart",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            // C++
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
                  // padding: const EdgeInsets.all(20),
                  height: currentHeight / 4,
                  width: currentWidth / 4,
                  constraints: const BoxConstraints(
                      minHeight: 20, minWidth: 20, maxHeight: 60, maxWidth: 60),
                  child: Image.asset(
                    "asset/icon/icons8-c++-48.png",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "C++",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            // github
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
                  // padding: const EdgeInsets.all(20),
                  height: currentHeight / 4,
                  width: currentWidth / 4,
                  constraints: const BoxConstraints(
                      minHeight: 20, minWidth: 20, maxHeight: 60, maxWidth: 60),
                  child: Image.asset(
                    "asset/icon/1608908_github_icon.png",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "gitHub",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            // figma
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
                  // padding: const EdgeInsets.all(20),
                  height: currentHeight / 4,
                  width: currentWidth / 4,
                  constraints: const BoxConstraints(
                      minHeight: 20, minWidth: 20, maxHeight: 60, maxWidth: 60),
                  child: Image.asset(
                    "asset/icon/icons8-figma-48.png",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "figma",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            // sql
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
                  // padding: const EdgeInsets.all(20),
                  height: currentHeight / 4,
                  width: currentWidth / 4,
                  constraints: const BoxConstraints(
                      minHeight: 20, minWidth: 20, maxHeight: 60, maxWidth: 60),
                  child: Image.asset(
                    "asset/icon/sql-server.png",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "SQL",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            // python
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
                  // padding: const EdgeInsets.all(20),
                  height: currentHeight / 4,
                  width: currentWidth / 4,
                  constraints: const BoxConstraints(
                      minHeight: 20, minWidth: 20, maxHeight: 60, maxWidth: 60),
                  child: Image.asset(
                    "asset/icon/icons8-python-48.png",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "python",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            // java
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
                  // padding: const EdgeInsets.all(20),
                  height: currentHeight / 4,
                  width: currentWidth / 4,
                  constraints: const BoxConstraints(
                      minHeight: 20, minWidth: 20, maxHeight: 60, maxWidth: 60),
                  child: Image.asset(
                    "asset/icon/icons8-java-48.png",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "java",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            // linux
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
                  // padding: const EdgeInsets.all(20),
                  height: currentHeight / 4,
                  width: currentWidth / 4,
                  constraints: const BoxConstraints(
                      minHeight: 20, minWidth: 20, maxHeight: 60, maxWidth: 60),
                  child: Image.asset(
                    "asset/icon/linux.png",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Linux",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            // DSA
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
                  // padding: const EdgeInsets.all(20),
                  height: currentHeight / 4,
                  width: currentWidth / 4,
                  constraints: const BoxConstraints(
                      minHeight: 20, minWidth: 20, maxHeight: 60, maxWidth: 60),
                  child: Image.asset(
                    "asset/icon/hierarchy-structure.png",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "DSA",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            // c
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
                  // padding: const EdgeInsets.all(20),
                  height: currentHeight / 4,
                  width: currentWidth / 4,
                  constraints: const BoxConstraints(
                      minHeight: 20, minWidth: 20, maxHeight: 60, maxWidth: 60),
                  child: Image.asset(
                    "asset/icon/icons8-c-programming-48.png",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "C lang",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            // HTML
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
                  // padding: const EdgeInsets.all(20),
                  height: currentHeight / 4,
                  width: currentWidth / 4,
                  constraints: const BoxConstraints(
                      minHeight: 20, minWidth: 20, maxHeight: 60, maxWidth: 60),
                  child: Image.asset(
                    "asset/icon/icons8-html-5-48.png",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "HTML",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            // CSS
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
                  // padding: const EdgeInsets.all(20),
                  height: currentHeight / 4,
                  width: currentWidth / 4,
                  constraints: const BoxConstraints(
                      minHeight: 20, minWidth: 20, maxHeight: 60, maxWidth: 60),
                  child: Image.asset(
                    "asset/icon/icons8-css3-48.png",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "CSS",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            // Js
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
                  // padding: const EdgeInsets.all(20),
                  height: currentHeight / 4,
                  width: currentWidth / 4,
                  constraints: const BoxConstraints(
                      minHeight: 20, minWidth: 20, maxHeight: 60, maxWidth: 60),
                  child: Image.asset(
                    "asset/icon/icons8-javascript-48.png",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Js",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            // flutter
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
                  // padding: const EdgeInsets.all(20),
                  height: currentHeight / 4,
                  width: currentWidth / 4,
                  constraints: const BoxConstraints(
                      minHeight: 20, minWidth: 20, maxHeight: 60, maxWidth: 60),
                  child: Image.asset(
                    "asset/icon/icons8-flutter-48.png",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Flutter",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
