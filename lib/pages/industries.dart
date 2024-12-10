import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class IndustryPage extends StatelessWidget {
  const IndustryPage({super.key});

  Widget Desktop(currentHeight, currentWidth) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextAnimator(
                'industries we worked for 🏭',
                atRestEffect: WidgetRestingEffects.pulse(effectStrength: 0.6),
                style: TextStyle(color: Colors.white60, fontSize: 30),
                incomingEffect: WidgetTransitionEffects.incomingSlideInFromTop(
                    blur: const Offset(0, 20), scale: 2),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: currentWidth * 0.4,
                child: const Text(
                  """We are a leading solution provider for Internet based applications and websites. Our services are unique combination of user-friendly design and strong Internet marketing plans. As a premier mobile app development company, we are experts in developing native and cross-platform mobile apps suitable for any industry.""",
                  style: TextStyle(color: Colors.white54, fontSize: 17),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          SizedBox(
            height: currentHeight * 0.6,
            child: CarouselSlider(
              items: [
                Image.asset("asset/images/farm.gif"),
                Image.asset("asset/images/gym.gif"),
                Image.asset("asset/images/hotel.gif"),
                Image.asset("asset/images/restraunt.gif"),
              ],
              options: CarouselOptions(autoPlay: true, scrollPhysics: NeverScrollableScrollPhysics()), // Disable touch-based scrolling,
            ),
          ),
        ],
      ),
    );
  }

  Widget Mobile(currentHeight, currentWidth) {
    return Column(
      children: [
        SizedBox(
          height: currentHeight * 0.3,
          child: CarouselSlider(
            items: [
              Image.asset("asset/images/farm.gif"),
              Image.asset("asset/images/gym.gif"),
              Image.asset("asset/images/hotel.gif"),
              Image.asset("asset/images/restraunt.gif"),
            ],
            options: CarouselOptions(autoPlay: true, scrollPhysics: NeverScrollableScrollPhysics()), // Disable touch-based scrolling,
          ),
        ),
        TextAnimator(
          'industries we worked for 🏭',
          atRestEffect: WidgetRestingEffects.pulse(effectStrength: 0.6),
          style: TextStyle(color: Colors.white60, fontSize: 20),
          incomingEffect: WidgetTransitionEffects.incomingSlideInFromTop(
              blur: const Offset(0, 20), scale: 2),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: currentHeight * 0.03,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    if (currentWidth >= 900) {
      return Desktop(currentHeight, currentWidth);
    } else {
      return Mobile(currentHeight, currentWidth);
    }
  }
}
