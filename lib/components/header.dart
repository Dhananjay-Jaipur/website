import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final homeKey;
  final skillKey;
  final experienceKey;
  final projectKey;
  final contactKey;

  const Header(
      {super.key,
      required Key this.homeKey,
      required Key this.skillKey,
      required Key this.projectKey,
      required Key this.contactKey,
      required Key this.experienceKey});

  Container Desktop() {
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
      height: 60,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.transparent,
      ),
      child: Row(
        children: [
          const Text(
            "</mr_developer/>",
            style: TextStyle(
              color: Colors.white54,
              fontSize: 40,
              fontFamily: "source code pro",
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {
              Scrollable.ensureVisible(homeKey.currentContext!);
            },
            child: const Text(
              "home",
              style: TextStyle(color: Colors.white54),
            ),
          ),
          TextButton(
            onPressed: () {
              Scrollable.ensureVisible(skillKey.currentContext!);
            },
            child: const Text(
              "skill",
              style: TextStyle(color: Colors.white54),
            ),
          ),
          TextButton(
            onPressed: () {
              Scrollable.ensureVisible(experienceKey.currentContext!);
            },
            child: const Text(
              "experience",
              style: TextStyle(color: Colors.white54),
            ),
          ),
          TextButton(
            onPressed: () {
              Scrollable.ensureVisible(projectKey.currentContext!);
            },
            child: const Text(
              "project",
              style: TextStyle(color: Colors.white54),
            ),
          ),
          TextButton(
            onPressed: () {
              Scrollable.ensureVisible(contactKey.currentContext!);
            },
            child: const Text(
              "contact",
              style: TextStyle(color: Colors.white54),
            ),
          ),
        ],
      ),
    );
  }

  Container Mobile() {
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
      height: 60,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.transparent,
      ),
      child: const Row(
        children: [
          const Text(
            "</mr_developer/>",
            style: TextStyle(
              color: Colors.white54,
              fontSize: 30,
              fontFamily: "source code pro",
            ),
          ),

          const Spacer(),

          // IconButton(onPressed: sideDrawer, icon: const Icon(Icons.menu),),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _currentWidth = MediaQuery.of(context).size.width;
    final _currentHeight = MediaQuery.of(context).size.height;

    if (_currentWidth >= 900)
      return Desktop();
    else
      return Mobile();
  }
}