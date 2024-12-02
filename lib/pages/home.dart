import 'package:flutter/material.dart';
import 'package:portfolio/components/header.dart';
import 'package:portfolio/pages/ContactPage.dart';
import 'package:portfolio/pages/ExperiencePage.dart';
import 'package:portfolio/pages/ProjectPage.dart';
import 'package:portfolio/pages/homePage.dart';
import 'package:portfolio/pages/languagePage.dart';
import 'package:portfolio/pages/skillPage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    var homeKey = GlobalKey();
    var skillKey = GlobalKey();
    var experienceKey = GlobalKey();
    var projectKey = GlobalKey();
    var contactKey = GlobalKey();
    var langKey = GlobalKey();

      return Scaffold(

        backgroundColor: const Color(0xFF004953),

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,

            child: Column(
              children: [
                // HEADER:::
                Header(homeKey: homeKey, skillKey: skillKey, projectKey: projectKey, contactKey: contactKey, experienceKey: experienceKey,),

                // HOME:::
                HomePage(homeKey: homeKey,),

                // SKILL:::
                Skillpage(skillKey: skillKey, context: context,),

                // LANGUAGES KNOWN::::
                langPage(langKey: langKey,),

                // EXPERIENCE:::
                ExperiencePage(experienceKey: experienceKey),

                // PROJECTS:::
                ProjectPage(projectKey: projectKey,),

                // CONTACT:::
                Contactpage(contactKey: contactKey,),
              ],
            ),

        ),
      );
  }
}
