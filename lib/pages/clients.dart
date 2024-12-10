import 'package:flutter/material.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({super.key});

  Widget Desktop(final currentHeight, final currentWidth) {
    return Container(
      height: currentHeight * 0.5,
      width: currentWidth,
      //color: Colors.black45,
      child: Column(
        children: [
          const SizedBox(
            height: 22,
          ),
          const Text(
            "-- clients --",
            style: TextStyle(fontSize: 40, color: Colors.white60),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(33),
                height: currentHeight * 0.3,
                width: currentWidth * 0.2,
                child: Image.asset(
                  "asset/images/radiant-skin-clinic.jpg",
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                padding: const EdgeInsets.all(33),
                height: currentHeight * 0.3,
                width: currentWidth * 0.2,
                child: Image.asset(
                  "asset/images/sunrise.jpeg",
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                padding: const EdgeInsets.all(33),
                height: currentHeight * 0.3,
                width: currentWidth * 0.2,
                child: Image.asset(
                  "asset/images/kirana-king.jpg",
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget Mobile(final currentHeight, final currentWidth) {
    return Container(
      height: currentHeight * 0.22,
      width: currentWidth,
      // color: Colors.black45,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: const Text(
              "-- clients --",
              style: TextStyle(fontSize: 40, color: Colors.white60),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(6),
                width: currentWidth * 0.2,
                child: Image.asset(
                  "asset/images/radiant-skin-clinic.jpg",
                ),
              ),
              Container(
                padding: EdgeInsets.all(6),
                width: currentWidth * 0.2,
                child: Image.asset(
                  "asset/images/sunrise.jpeg",
                ),
              ),
              Container(
                padding: EdgeInsets.all(6),
                width: currentWidth * 0.2,
                child: Image.asset(
                  "asset/images/kirana-king.jpg",
                ),
              ),
            ],
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
