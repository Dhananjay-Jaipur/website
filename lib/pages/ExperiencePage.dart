import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class ExperiencePage extends StatelessWidget {

  final experienceKey;

  ExperiencePage({super.key, required Key this.experienceKey});

  Widget Desktop(final _currentHeight, final _currentWidth){
    return  Container(

      key: experienceKey,

      // alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 5),

      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: const Text("EXPERIENCE", style: TextStyle(fontSize: 40, color: Colors.white),),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween
            ,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Link(
                      uri: Uri.parse("https://g.co/kgs/ZH2jLNT"),
                      target: LinkTarget.blank,
                      builder: (context, link) => InkWell(
                          onTap: link,
                          child: Text(" Response Infoway 🏭", style: TextStyle(color: Colors.white60, fontSize: 32),),
                      )
                  ),

                  const SizedBox(height: 10,),

                  Container(
                    constraints: const BoxConstraints(maxWidth: 350),
                    child: const Text("""I am Highly skilled Flutter developer with extensive experience in building seamless Android, iOS, and web applications. Proven track record of delivering high-quality, scalable projects leveraging Dart and Flutter. Successfully completed numerous cross-platform projects, exceeding client expectations.""",
                      style: TextStyle(color: Colors.white54, fontSize: 10),
                      textAlign: TextAlign.left,
                    ),
                  ),

                ],
              ),


              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [

                  Text(
                    "aug-2024",
                    style: TextStyle(color: Colors.white54, fontSize: 17),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                        width: _currentWidth * 0.2,
                        child: Divider(
                          thickness: 4,
                          color: Color(0xFF568656),
                        ),
                    ),
                  ),

                  Text(
                    "nov-2024",
                    style: TextStyle(color: Colors.white54, fontSize: 17),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget Mobile(final _currentHeight, final _currentWidth){
    return Container(

      key: experienceKey,

      // alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 5),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: const Text("EXPERIENCE", style: TextStyle(fontSize: 40, color: Colors.white),),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Link(
                      uri: Uri.parse("https://g.co/kgs/ZH2jLNT"),
                      target: LinkTarget.blank,
                      builder: (context, link) => InkWell(
                        onTap: link,
                        child: Text("Response Infoway 🏭", style: TextStyle(color: Colors.white60, fontSize: 28),),
                      )
                  ),

                  const SizedBox(height: 10,),

                  Container(
                    child: const Text("""I am Highly skilled Flutter developer with extensive experience in building seamless Android, iOS, and web applications. Proven track record of delivering high-quality, scalable projects leveraging Dart and Flutter. Successfully completed numerous cross-platform projects, exceeding client expectations.""",
                    style: TextStyle(color: Colors.white54, fontSize: 10),
                      textAlign: TextAlign.left,
                    ),
                  ),

                ],
              ),

              SizedBox(
                width: _currentWidth * 0.1,
              ),


              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [

                  Text(
                    "aug-2024",
                    style: TextStyle(color: Colors.white54, fontSize: 17),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                      width: _currentWidth * 0.2,
                      child: Divider(
                        thickness: 4,
                        color: Color(0xFF568656),
                      ),
                    ),
                  ),

                  Text(
                    "nov-2024",
                    style: TextStyle(color: Colors.white54, fontSize: 17),
                  ),
                ],
              ),

            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    final _currentWidth = MediaQuery.of(context).size.width;
    final _currentHeight = MediaQuery.of(context).size.height;

    if(_currentWidth >= 900)
      return Desktop(_currentHeight, _currentWidth);
    else
      return Mobile(_currentHeight, _currentWidth);
  }
}
