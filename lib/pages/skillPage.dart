import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';

class Skillpage extends StatefulWidget {

  final skillKey;
  final context;

  const Skillpage({super.key, required Key this.skillKey, required this.context});

  @override
  State<Skillpage> createState() => _SkillpageState();
}

class _SkillpageState extends State<Skillpage> {
  Container Skill(final _currentHeight, final _currentWidth){

    return Container(

      key: widget.skillKey,

        margin: const EdgeInsets.only(top: 60,),
        height: 100,
        width: _currentWidth,
        constraints: const BoxConstraints(minHeight: 350),
        decoration: const BoxDecoration(
          color: Colors.black54,
        ),

        child: Column(
          children: [

            SizedBox(height: 22,),

            Text("SKILLS", style: TextStyle(fontSize: 40, color: Colors.white60),),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: context.scrollController,

              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  // hybrid app
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 40, left: 40, right: 40),
                        padding: const EdgeInsets.all(33),
                        height: _currentHeight/3,
                        width: _currentWidth/3,
                        constraints: const BoxConstraints(minHeight: 50, minWidth: 50, maxHeight: 130, maxWidth: 130),
                        child: Image.asset("asset/icon/mobile-development.png", color: Colors.white,),
                      ),

                      const SizedBox(height: 20,),

                      const Text("Hybrid app", style: TextStyle(fontSize: 16, color: Colors.white54), textAlign: TextAlign.center,),
                    ],
                  ),

                  const SizedBox(width: 20,),

                  // AI/ML
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 40, left: 40, right: 40),
                        padding: const EdgeInsets.all(33),
                        height: _currentHeight/3,
                        width: _currentWidth/3,
                        constraints: const BoxConstraints(minHeight: 50, minWidth: 50, maxHeight: 130, maxWidth: 130),
                        child: Image.asset("asset/icon/electronic-accessory.png", color: Colors.white,),
                      ),

                      const SizedBox(height: 20,),

                      const Text("AI/ML", style: TextStyle(fontSize: 16, color: Colors.white54), textAlign: TextAlign.center,),
                    ],
                  ),
                  const SizedBox(width: 20,),

                  // web
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 40, left: 40, right: 40),
                        padding: const EdgeInsets.all(33),
                        height: _currentHeight/3,
                        width: _currentWidth/3,
                        constraints: const BoxConstraints(minHeight: 50, minWidth: 50, maxHeight: 130, maxWidth: 130),
                        child: Image.asset("asset/icon/globe.png", color: Colors.white,),
                      ),

                      const SizedBox(height: 20,),

                      const Text("web", style: TextStyle(fontSize: 16, color: Colors.white54), textAlign: TextAlign.center,),
                    ],
                  ),
                  const SizedBox(width: 20,),

                  // soft skill
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 40, left: 40, right: 40),
                        padding: const EdgeInsets.all(33),
                        height: _currentHeight/3,
                        width: _currentWidth/3,
                        constraints: const BoxConstraints(minHeight: 50, minWidth: 50, maxHeight: 130, maxWidth: 130),
                        child: Image.asset("asset/icon/meeting.png", color: Colors.white,),
                      ),

                      const SizedBox(height: 20,),

                      const Text("soft skill", style: TextStyle(fontSize: 16, color: Colors.white54), textAlign: TextAlign.center,),
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

    final _currentWidth = MediaQuery.of(context).size.width;
    final _currentHeight = MediaQuery.of(context).size.height;

    return Skill(_currentHeight, _currentWidth);
  }
}
