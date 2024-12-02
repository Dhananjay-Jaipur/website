import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class ProjectPage extends StatelessWidget {

  final projectKey;

  const ProjectPage({super.key, required Key this.projectKey});

  Widget Single(final _currentHeight, final _currentWidth){
    return Column(
      key: projectKey,

      children: [
        Container(
          margin: const EdgeInsets.only(top: 60,),
          width: _currentWidth,
          //constraints: const BoxConstraints(minHeight: 350),
          decoration: const BoxDecoration(
            color: Colors.black54,
          ),

          child: Column(
            children: [

              SizedBox(height: 22,),

              Text("🔴 Live Projects", style: TextStyle(fontSize: 30, color: Colors.white60),),

              SizedBox(height: _currentHeight * 0.05,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [

                  Container(
                    height: _currentHeight * 0.35,
                    width: _currentWidth * 0.3,
                    child: Image.asset("asset/images/birla.png"),
                  ),


                  Wrap(
                    direction: Axis.vertical,
                    children: [
                      Column(
                        children: [
                          Link(
                            uri: Uri.parse("https://play.google.com/store/apps/details?id=com.responseinfoway.alay&pcampaignid=web_share"),
                            target: LinkTarget.blank,
                            builder: (context, link) =>  InkWell(
                              onTap: link,
                              child: Container(
                                padding: const EdgeInsets.all(33),
                                height: _currentHeight/3,
                                width: _currentWidth/3,
                                constraints: const BoxConstraints(minHeight: 50, minWidth: 50, maxHeight: 130, maxWidth: 130),
                                child: Image.asset("asset/images/playstore.png",),
                              ),
                            ),
                          ),

                          const Text("android", style: TextStyle(fontSize: 16, color: Colors.white54), textAlign: TextAlign.center,),
                        ],
                      ),


                      Column(
                        children: [
                          Link(
                            uri: Uri.parse("https://apps.apple.com/in/app/aalay/id6670717672"),
                            target: LinkTarget.blank,
                            builder: (context, link) => InkWell(
                              onTap: link,
                              child: Container(
                                padding: const EdgeInsets.all(33),
                                height: _currentHeight/3,
                                width: _currentWidth/3,
                                constraints: const BoxConstraints(minHeight: 50, minWidth: 50, maxHeight: 130, maxWidth: 130),
                                child: Image.asset("asset/images/app-store.png",),
                              ),
                            ),
                          ),

                          const Text("ios", style: TextStyle(fontSize: 16, color: Colors.white54), textAlign: TextAlign.center,),
                        ],
                      ),
                    ],
                  ),

                ],
              ),

              SizedBox(height: _currentHeight * 0.025,),
              Divider(),
              SizedBox(height: _currentHeight * 0.025,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [

                  Container(
                    height: _currentHeight * 0.35,
                    width: _currentWidth * 0.3,
                    child: Image.asset("asset/images/carman.png"),
                  ),


                  Wrap(
                    direction: Axis.vertical,
                    children: [
                      Column(
                        children: [
                          Link(
                            uri: Uri.parse("https://play.google.com/store/apps/details?id=com.responseinfoway.carmanhkd&hl=en_IN"),
                            target: LinkTarget.blank,
                            builder: (context, link) =>  InkWell(
                              onTap: link,
                              child: Container(
                                padding: const EdgeInsets.all(33),
                                height: _currentHeight/3,
                                width: _currentWidth/3,
                                constraints: const BoxConstraints(minHeight: 50, minWidth: 50, maxHeight: 130, maxWidth: 130),
                                child: Image.asset("asset/images/playstore.png",),
                              ),
                            ),
                          ),

                          const Text("android", style: TextStyle(fontSize: 16, color: Colors.white54), textAlign: TextAlign.center,),
                        ],
                      ),


                      Column(
                        children: [
                          Link(
                            uri: Uri.parse("https://apps.apple.com/in/app/hilcarman/id1662338110"),
                            target: LinkTarget.blank,
                            builder: (context, link) => InkWell(
                              onTap: link,
                              child: Container(
                                padding: const EdgeInsets.all(33),
                                height: _currentHeight/3,
                                width: _currentWidth/3,
                                constraints: const BoxConstraints(minHeight: 50, minWidth: 50, maxHeight: 130, maxWidth: 130),
                                child: Image.asset("asset/images/app-store.png",),
                              ),
                            ),
                          ),

                          const Text("ios", style: TextStyle(fontSize: 16, color: Colors.white54), textAlign: TextAlign.center,),
                        ],
                      ),
                    ],
                  ),

                ],
              ),

              SizedBox(height: _currentHeight * 0.05,),

            ],
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: _currentWidth/8, right: _currentWidth/8),
          height: 950,
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),

          child: Column(
            children: [

              const SizedBox(height: 30,),

              const Text("projects", style: TextStyle(fontSize: 40, color: Colors.white),),

              const SizedBox(height: 40,),

          Center(
            child: Column(
              children: [
                // weather app
                Container(
                  height: _currentHeight,
                  width: _currentWidth,
                  constraints: const BoxConstraints(minHeight: 50, minWidth: 50, maxHeight: 180, maxWidth: 300),
                  child: Wrap(
                    children: [
                      Container(
                        height: _currentHeight,
                        width: _currentWidth,
                        child: ClipRRect(borderRadius: BorderRadius.circular(20),
                          child: Link(
                            uri: Uri.parse("https://github.com/Dhananjay-Jaipur/weather-app-flutter"),
                            target: LinkTarget.blank,
                            builder: (context, link) => Container(
                              constraints: const BoxConstraints(maxHeight: 50, maxWidth: 50),
                              child: InkWell(
                                onTap: link,
                                child: Image.asset("asset/images/weathr-removebg-preview.png", fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),

                // chat GPT app
                Container(
                  height: _currentHeight,
                  width: _currentHeight,
                  constraints: const BoxConstraints(minHeight: 5, minWidth: 5, maxHeight: 180, maxWidth: 300),
                  child: Wrap(
                    children: [

                      Container(
                        height: _currentHeight,
                        width: _currentWidth,
                        child: ClipRRect(borderRadius: BorderRadius.circular(20),
                          child: Link(
                            uri: Uri.parse("https://github.com/Dhananjay-Jaipur/chatGPT-clone-flutter"),
                            target: LinkTarget.blank,
                            builder: (context, link) => Container(
                              constraints: const BoxConstraints(maxHeight: 50, maxWidth: 50),
                              child: InkWell(
                                onTap: link,
                                child: Image.asset("asset/images/ChatGPT-for-iPhone.jpg", fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),

                // spotify app
                Container(
                  height: _currentHeight,
                  width: _currentHeight,
                  constraints: const BoxConstraints(minHeight: 5, minWidth: 5, maxHeight: 180, maxWidth: 300),
                  child: Wrap(
                    children: [
                      Container(
                        height: _currentHeight,
                        width: _currentWidth,
                        child: ClipRRect(borderRadius: BorderRadius.circular(20),
                          child: Link(
                            uri: Uri.parse("https://github.com/Dhananjay-Jaipur/music-player-app-flutter"),
                            target: LinkTarget.blank,
                            builder: (context, link) => Container(
                              constraints: const BoxConstraints(maxHeight: 50, maxWidth: 50),
                              child: InkWell(
                                onTap: link,
                                child: Image.asset("asset/images/spotify.png", fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),

                // weather app
                Container(
                  height: _currentHeight,
                  width: _currentHeight,
                  constraints: const BoxConstraints(minHeight: 5, minWidth: 5, maxHeight: 180, maxWidth: 300),
                  child: Wrap(
                    children: [
                      Container(
                        height: _currentHeight,
                        width: _currentWidth,
                        child: ClipRRect(borderRadius: BorderRadius.circular(20),
                          child: Link(
                            uri: Uri.parse("https://github.com/Dhananjay-Jaipur/E-commerce-app-flutter"),
                            target: LinkTarget.blank,
                            builder: (context, link) => Container(
                              constraints: const BoxConstraints(maxHeight: 50, maxWidth: 50),
                              child: InkWell(
                                onTap: link,
                                child: Image.asset("asset/images/stor.png", fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),

              ],
            ),
          ),

            ],
          ),
        ),
      ],
    );
  }

  Widget Double(final _currentHeight, final _currentWidth){
    return Column(
      key: projectKey,

      children: [
        Container(
          margin: const EdgeInsets.only(top: 60,),
          // height: 100,
          width: _currentWidth,
          constraints: const BoxConstraints(minHeight: 350),
          decoration: const BoxDecoration(
            color: Colors.black54,
          ),

          child: Column(
            children: [

              SizedBox(height: 22,),

              Text("🔴 Live Projects", style: TextStyle(fontSize: 40, color: Colors.white60),),

              SizedBox(height: _currentHeight * 0.05,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [

                  Container(
                    height: _currentHeight * 0.35,
                    width: _currentWidth * 0.3,
                      child: Image.asset("asset/images/birla.png"),
                  ),


                  Wrap(
                    children: [
                      Column(
                        children: [
                          Link(
                            uri: Uri.parse("https://play.google.com/store/apps/details?id=com.responseinfoway.alay&pcampaignid=web_share"),
                            target: LinkTarget.blank,
                            builder: (context, link) => InkWell(
                              onTap: link,
                              child: Container(
                                margin: const EdgeInsets.only(top: 40, left: 40, right: 40),
                                padding: const EdgeInsets.all(33),
                                height: _currentHeight / 3,
                                width: _currentWidth / 3,
                                constraints: const BoxConstraints(
                                    minHeight: 50,
                                    minWidth: 50,
                                    maxHeight: 130,
                                    maxWidth: 130),
                                child: Image.asset("asset/images/playstore.png",),
                              ),
                            ),
                          ),

                          const Text("android", style: TextStyle(fontSize: 16, color: Colors.white54), textAlign: TextAlign.center,),
                        ],
                      ),


                      Column(
                        children: [
                          Link(
                            uri: Uri.parse("https://apps.apple.com/in/app/aalay/id6670717672"),
                            target: LinkTarget.blank,
                            builder: (context, link) => InkWell(
                              onTap: link,
                              child: Container(
                                margin: const EdgeInsets.only(top: 40, left: 40, right: 40),
                                padding: const EdgeInsets.all(33),
                                height: _currentHeight / 3,
                                width: _currentWidth / 3,
                                constraints: const BoxConstraints(
                                    minHeight: 50,
                                    minWidth: 50,
                                    maxHeight: 130,
                                    maxWidth: 130),
                                child: Image.asset("asset/images/app-store.png",),
                              ),
                            ),
                          ),

                          const Text("ios", style: TextStyle(fontSize: 16, color: Colors.white54), textAlign: TextAlign.center,),
                        ],
                      ),
                    ],
                  ),

                ],
              ),
            
              SizedBox(height: _currentHeight * 0.05,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [

                  Container(
                    height: _currentHeight * 0.35,
                    width: _currentWidth * 0.3,
                      child: Image.asset("asset/images/carman.png"),
                  ),


                  Wrap(
                    children: [
                      Column(
                        children: [
                          Link(
                            uri: Uri.parse("https://play.google.com/store/apps/details?id=com.responseinfoway.carmanhkd&hl=en_IN"),
                            target: LinkTarget.blank,
                            builder: (context, link) => InkWell(
                              onTap: link,
                              child: Container(
                                margin: const EdgeInsets.only(top: 40, left: 40, right: 40),
                                padding: const EdgeInsets.all(33),
                                height: _currentHeight / 3,
                                width: _currentWidth / 3,
                                constraints: const BoxConstraints(
                                    minHeight: 50,
                                    minWidth: 50,
                                    maxHeight: 130,
                                    maxWidth: 130),
                                child: Image.asset("asset/images/playstore.png",),
                              ),
                            ),
                          ),

                          const Text("android", style: TextStyle(fontSize: 16, color: Colors.white54), textAlign: TextAlign.center,),
                        ],
                      ),


                      Column(
                        children: [
                          Link(
                            uri: Uri.parse("https://apps.apple.com/in/app/hilcarman/id1662338110"),
                            target: LinkTarget.blank,
                            builder: (context, link) => InkWell(
                              onTap: link,
                              child: Container(
                                margin: const EdgeInsets.only(top: 40, left: 40, right: 40),
                                padding: const EdgeInsets.all(33),
                                height: _currentHeight / 3,
                                width: _currentWidth / 3,
                                constraints: const BoxConstraints(
                                    minHeight: 50,
                                    minWidth: 50,
                                    maxHeight: 130,
                                    maxWidth: 130),
                                child: Image.asset("asset/images/app-store.png",),
                              ),
                            ),
                          ),

                          const Text("ios", style: TextStyle(fontSize: 16, color: Colors.white54), textAlign: TextAlign.center,),
                        ],
                      ),
                    ],
                  ),

                ],
              ),
            
              SizedBox(height: _currentHeight * 0.05,),
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: _currentWidth/4.5, right: _currentWidth/4.5),
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),

          child: Column(
            children: [

              const SizedBox(height: 30,),

              const Text("projects", style: TextStyle(fontSize: 40, color: Colors.white),),

              const SizedBox(height: 40,),

              Center(
                child: Column(
                  children: [
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        // e-commerce app
                        Column(
                          children: [

                            Container(
                              height: _currentHeight,
                              width: _currentWidth,
                              constraints: const BoxConstraints(minHeight: 50, minWidth: 50, maxHeight: 300, maxWidth: 150),
                              child: ClipRRect(borderRadius: BorderRadius.circular(20),
                                child: Link(
                                  uri: Uri.parse("https://github.com/Dhananjay-Jaipur/E-commerce-app-flutter"),
                                  target: LinkTarget.blank,
                                  builder: (context, link) => Container(
                                    constraints: const BoxConstraints(maxHeight: 50, maxWidth: 50),
                                    child: InkWell(
                                      onTap: link,
                                      child: Image.asset("asset/images/stor.png", fit: BoxFit.cover,),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 10,),

                            const Text("E-commerce app", style: TextStyle(fontSize: 12, color: Colors.white), textAlign: TextAlign.center,),

                            const SizedBox(height: 10,),

                            Container(
                              height: _currentHeight,
                              width: _currentWidth,
                              constraints: const BoxConstraints(minHeight: 50, minWidth: 50, maxHeight: 90, maxWidth: 300),
                              child: const Text("""In this app I use backend on firebase, with some navigator properties and responsiveness""", style: TextStyle(color: Colors.white38, fontSize: 12) ,textAlign: TextAlign.left,),
                            ),
                          ],
                        ),

                        const Spacer(),

                        // chatGPT app
                        Column(
                          children: [

                            Container(
                              height: _currentHeight,
                              width: _currentWidth,
                              constraints: const BoxConstraints(minHeight: 50, minWidth: 50, maxHeight: 300, maxWidth: 150),
                              child: ClipRRect(borderRadius: BorderRadius.circular(20),
                                child: Link(
                                  uri: Uri.parse("https://github.com/Dhananjay-Jaipur/chatGPT-clone-flutter"),
                                  target: LinkTarget.blank,
                                  builder: (context, link) => Container(
                                    constraints: const BoxConstraints(maxHeight: 50, maxWidth: 50),
                                    child: InkWell(
                                      onTap: link,
                                      child: Image.asset("asset/images/ChatGPT-for-iPhone.jpg", fit: BoxFit.cover,),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 10,),

                            const Text("chatGPT app", style: TextStyle(fontSize: 12, color: Colors.white), textAlign: TextAlign.center,),

                            const SizedBox(height: 10,),

                            Container(
                              height: _currentHeight,
                              width: _currentWidth,
                              constraints: const BoxConstraints(minHeight: 50, minWidth: 50, maxHeight: 90, maxWidth: 300),
                              child: const Text("""It is built on top of OpenAI's GPT-3.5 family of large language models, and is fine-tuned with responsive UI""", style: TextStyle(color: Colors.white38, fontSize: 12) ,textAlign: TextAlign.left,),
                            ),
                          ],
                        ),

                      ],
                    ),

                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        // spotify app
                        Column(
                          children: [

                            Container(
                              height: _currentHeight,
                              width: _currentWidth,
                              constraints: const BoxConstraints(minHeight: 50, minWidth: 50, maxHeight: 300, maxWidth: 150),
                              child: ClipRRect(borderRadius: BorderRadius.circular(20),
                                child: Link(
                                  uri: Uri.parse("https://github.com/Dhananjay-Jaipur/music-player-app-flutter"),
                                  target: LinkTarget.blank,
                                  builder: (context, link) => Container(
                                    constraints: const BoxConstraints(maxHeight: 50, maxWidth: 50),
                                    child: InkWell(
                                      onTap: link,
                                      child: Image.asset("asset/images/spotify.png", fit: BoxFit.cover,),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 10,),

                            const Text("Spotify clone", style: TextStyle(fontSize: 12, color: Colors.white), textAlign: TextAlign.center,),

                            const SizedBox(height: 10,),

                            Container(
                              height: _currentHeight,
                              width: _currentWidth,
                              constraints: const BoxConstraints(minHeight: 50, minWidth: 50, maxHeight: 90, maxWidth: 300),
                              child: const Text("""Fully Functional music player with UI like Spotify app. Users can make their own playlist or collect liked songs""", style: TextStyle(color: Colors.white38, fontSize: 12) ,textAlign: TextAlign.left,),
                            ),
                          ],
                        ),

                        const Spacer(),

                        // weather app
                        Column(
                          children: [

                            Container(
                              height: _currentHeight,
                              width: _currentWidth,
                              constraints: const BoxConstraints(minHeight: 50, minWidth: 50, maxHeight: 300, maxWidth: 150),
                              child: ClipRRect(borderRadius: BorderRadius.circular(20),
                                child: Link(
                                  uri: Uri.parse("https://github.com/Dhananjay-Jaipur/weather-app-flutter"),
                                  target: LinkTarget.blank,
                                  builder: (context, link) => Container(
                                    constraints: const BoxConstraints(maxHeight: 50, maxWidth: 50),
                                    child: InkWell(
                                      onTap: link,
                                      child: Image.asset("asset/images/weathr-removebg-preview.png", fit: BoxFit.cover,),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 10,),

                            const Text("weather app", style: TextStyle(fontSize: 12, color: Colors.white), textAlign: TextAlign.center,),

                            const SizedBox(height: 10,),

                            Container(
                              height: _currentHeight,
                              width: _currentWidth,
                              constraints: const BoxConstraints(minHeight: 50, minWidth: 50, maxHeight: 90, maxWidth: 300),
                              child: const Text("""It fetch data from the api and provide real-time data on temperature, humidity, wind speed, precipitation, and more.""", style: TextStyle(color: Colors.white38, fontSize: 12) ,textAlign: TextAlign.left,),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    final _currentWidth = MediaQuery.of(context).size.width;
    final _currentHeight = MediaQuery.of(context).size.height;

    if(_currentWidth >= 1100)
      return Double(_currentHeight, _currentWidth);
    else
      return Single(_currentHeight, _currentWidth);

  }
}
