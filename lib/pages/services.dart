import 'package:flutter/material.dart';

class ServicesPage extends StatefulWidget {
  final skillKey;
  final context;

  const ServicesPage(
      {super.key, required Key this.skillKey, required this.context});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  Widget Desktop(final currentHeight, final currentWidth) {
    return Container(
      key: widget.skillKey,
      margin: const EdgeInsets.only(
        top: 60,
      ),
      height: 100,
      width: currentWidth,
      constraints: const BoxConstraints(minHeight: 350),
      decoration: const BoxDecoration(
        color: Colors.black54,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 22,
          ),
          const Text(
            "SERVICES",
            style: TextStyle(fontSize: 40, color: Colors.white60),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // hybrid app
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40, left: 40, right: 40),
                    padding: const EdgeInsets.all(33),
                    height: currentHeight / 3,
                    width: currentWidth / 3,
                    constraints: const BoxConstraints(
                        minHeight: 50,
                        minWidth: 50,
                        maxHeight: 130,
                        maxWidth: 130),
                    child: Image.asset(
                      "asset/icon/mobile-development.png",
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "app",
                    style: TextStyle(fontSize: 16, color: Colors.white54),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),

              const SizedBox(
                width: 20,
              ),

              // web
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40, left: 40, right: 40),
                    padding: const EdgeInsets.all(33),
                    height: currentHeight / 3,
                    width: currentWidth / 3,
                    constraints: const BoxConstraints(
                        minHeight: 50,
                        minWidth: 50,
                        maxHeight: 130,
                        maxWidth: 130),
                    child: Image.asset(
                      "asset/icon/globe.png",
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "website",
                    style: TextStyle(fontSize: 16, color: Colors.white54),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),

              // AI/ML
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40, left: 40, right: 40),
                    padding: const EdgeInsets.all(33),
                    height: currentHeight / 3,
                    width: currentWidth / 3,
                    constraints: const BoxConstraints(
                        minHeight: 50,
                        minWidth: 50,
                        maxHeight: 130,
                        maxWidth: 130),
                    child: Image.asset(
                      "asset/icon/electronic-accessory.png",
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "AI/ML",
                    style: TextStyle(fontSize: 16, color: Colors.white54),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),

              // soft skill
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40, left: 40, right: 40),
                    padding: const EdgeInsets.all(33),
                    height: currentHeight / 3,
                    width: currentWidth / 3,
                    constraints: const BoxConstraints(
                        minHeight: 50,
                        minWidth: 50,
                        maxHeight: 130,
                        maxWidth: 130),
                    child: Image.asset(
                      "asset/icon/meeting.png",
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "buissness support",
                    style: TextStyle(fontSize: 16, color: Colors.white54),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget Mobile(final currentHeight, final currentWidth) {
    return Container(
      key: widget.skillKey,
      margin: const EdgeInsets.only(
        top: 60,
      ),
      height: currentHeight * 0.33,
      width: currentWidth,
      decoration: const BoxDecoration(
        color: Colors.black54,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 22,
          ),
          const Text(
            "SERVICES",
            style: TextStyle(fontSize: 40, color: Colors.white60),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // hybrid app
                Column(
                  children: [
                    Container(
                      width: 50,
                      child: Image.asset(
                        "asset/icon/mobile-development.png",
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "app",
                      style: TextStyle(fontSize: 16, color: Colors.white54),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),

                // web
                Column(
                  children: [
                    Container(
                      width: 50,
                      child: Image.asset(
                        "asset/icon/globe.png",
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "website",
                      style: TextStyle(fontSize: 16, color: Colors.white54),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),

                // AI/ML
                Column(
                  children: [
                    Container(
                      width: 50,
                      child: Image.asset(
                        "asset/icon/electronic-accessory.png",
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "AI/ML",
                      style: TextStyle(fontSize: 16, color: Colors.white54),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    if (currentWidth >= 800) {
      return Desktop(currentHeight, currentWidth);
    } else {
      return Mobile(currentHeight, currentWidth);
    }
  }
}
