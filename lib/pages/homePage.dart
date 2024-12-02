import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final homeKey;

   HomePage({super.key, required Key this.homeKey});

  Container Desktop(final _currentHeight, final _currentWidth){
    return  Container(

      key: homeKey,

      // alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 5),
      padding: const EdgeInsets.only(top: 25),
      height: _currentHeight/2,
      constraints: const BoxConstraints(minHeight: 350),

      child: Row(
        children: [

          Container(
            margin: const EdgeInsets.only(top: 55),
            height: _currentHeight * 0.8,
            width: _currentWidth/2.2,
            // constraints: const BoxConstraints(maxWidth: 350),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage("asset/images/logo.png"),),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54.withOpacity(0.5),
                  spreadRadius: 10,
                  blurRadius: 15,
                  offset: Offset(3, 3), // changes position of shadow (x,y)
                ),
              ],
            ),
          ),

          SizedBox(width: _currentHeight / 30,),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.end,

            children: [
              Text("नमस्कार 🙏", style: TextStyle(color: Colors.white60, fontSize: 36),),

              const SizedBox(height: 10,),

              Container(
                constraints: const BoxConstraints(maxWidth: 350),
                child: const Text("""I am a full-stack web & app developer, the technology I use is flutter which creates hybrid apps, these app also can be published to their native app store and can accessed as a website""",
                  style: TextStyle(color: Colors.white54, fontSize: 17),
                  textAlign: TextAlign.left,
                ),
              ),
              
            ],
          ),
        ],
      ),
    );
  }

  Container Mobile(final _currentHeight, final _currentWidth){
    return Container(
      key: homeKey,
      // height: _currentHeight,
      //constraints: const BoxConstraints(minHeight: 350),
      child: Column(
        children: [

          Container(
            // margin: const EdgeInsets.only(top: 55),
            height: _currentHeight/2.5,
            width: _currentWidth/2.5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage("asset/images/logo.png"),),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54.withOpacity(0.5),
                  spreadRadius: 10,
                  blurRadius: 15,
                  offset: Offset(3, 3), // changes position of shadow (x,y)
                ),
              ],
            ),
          ),

          SizedBox(height: _currentHeight / 60,),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.end,

            children: [
              Text("नमस्कार 🙏", style: TextStyle(color: Colors.white60, fontSize: 36),),

              const SizedBox(height: 10,),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                constraints: const BoxConstraints(maxWidth: 350),
                child: const Text("""I am a full-stack web & app developer, the technology I use is flutter which creates hybrid apps, these app also can be published to their native app store and can accessed as a website or web app, providing a unified user experience across all platforms.""",
                  style: TextStyle(color: Colors.white70,),
                  textAlign: TextAlign.left,
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

    final _currentWidth = MediaQuery.of(context).size.width;
    final _currentHeight = MediaQuery.of(context).size.height;

    if(_currentWidth >= 800)
      return Desktop(_currentHeight, _currentWidth);
    else
      return Mobile(_currentHeight, _currentWidth);
  }
}
