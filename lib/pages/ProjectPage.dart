import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class ProjectPage extends StatelessWidget {
  final projectKey;

  const ProjectPage({super.key, required Key this.projectKey});

  Widget Double(final currentHeight, final currentWidth) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: TextAnimator(
            'Projects',
            atRestEffect: WidgetRestingEffects.pulse(effectStrength: 0.6),
            style: TextStyle(color: Colors.white60, fontSize: 40),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: currentHeight * 0.6,
          width: double.infinity,
          child: CarouselSlider(
            items: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("asset/images/project8.jpeg"),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("asset/images/project9.jpeg"),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("asset/images/project1.jpeg"),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("asset/images/project2.jpeg"),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("asset/images/project3.jpeg"),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("asset/images/project4.jpeg"),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("asset/images/project5.jpeg"),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("asset/images/project6.jpeg"),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("asset/images/project7.jpeg"),
              ),
            ],
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              enlargeFactor: 0.4,
              viewportFraction: 0.5,
              //scrollPhysics: NeverScrollableScrollPhysics()
            ),
          ),
        ),
      ],
    );
  }

  Widget Single(final currentHeight, final currentWidth) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: TextAnimator(
            'Projects',
            atRestEffect: WidgetRestingEffects.pulse(effectStrength: 0.6),
            style: TextStyle(color: Colors.white60, fontSize: 40),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: currentHeight * 0.6,
          width: currentWidth * 0.8,
          child: StackedCardCarousel(
            spaceBetweenItems: currentHeight * 0.3,
            items: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("asset/images/project8.jpeg"),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("asset/images/project9.jpeg"),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("asset/images/project1.jpeg"),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("asset/images/project2.jpeg"),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("asset/images/project3.jpeg"),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("asset/images/project4.jpeg"),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("asset/images/project5.jpeg"),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("asset/images/project6.jpeg"),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("asset/images/project7.jpeg"),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    if (currentWidth >= 900) {
      return Double(currentHeight, currentWidth);
    } else {
      return Single(currentHeight, currentWidth);
    }
  }
}
