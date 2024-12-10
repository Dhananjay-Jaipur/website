import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class HomePage extends StatelessWidget {
  final homeKey;

  const HomePage({super.key, required Key this.homeKey});

  Widget Desktop(final currentHeight, final currentWidth, context) {
    return SizedBox(
      key: homeKey,
      height: currentHeight * 0.7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          WidgetAnimator(
            atRestEffect: WidgetRestingEffects.fidget(),
            child: Container(
              margin: const EdgeInsets.only(top: 55),
              height: currentHeight * 0.8,
              width: currentWidth / 2.2,
              // constraints: const BoxConstraints(maxWidth: 350),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: const DecorationImage(
                  image: AssetImage("asset/images/logo.png"),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 15,
                    offset:
                        const Offset(3, 3), // changes position of shadow (x,y)
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextAnimator(
                'Dr. Flutter 🙏',
                atRestEffect: WidgetRestingEffects.pulse(effectStrength: 0.6),
                style: TextStyle(color: Colors.white60, fontSize: 36),
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
                  """we are the profestional website & app developers help buissnes to thrive online, We are expert in creating responsive app with modern UI design. we are also very expert in creating website or web app providing a unified user experience across all devices.""",
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

  Widget Mobile(final currentHeight, final currentWidth) {
    return SizedBox(
      key: homeKey,
      height: currentHeight * 0.7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          WidgetAnimator(
            atRestEffect: WidgetRestingEffects.vibrate(),
            child: Container(
              height: currentWidth * 0.5,
              // width: currentWidth / 2.5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: const DecorationImage(
                  image: AssetImage("asset/images/logo.png"),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 15,
                    offset: const Offset(3, 3),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextAnimator(
                'Dr. Flutter 🙏',
                atRestEffect: WidgetRestingEffects.pulse(effectStrength: 0.6),
                style: TextStyle(color: Colors.white60, fontSize: 25),
                incomingEffect: WidgetTransitionEffects.incomingSlideInFromTop(
                    blur: const Offset(0, 20), scale: 2),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                constraints: const BoxConstraints(maxWidth: 350),
                child: const Text(
                  """we are the profestional website & app developers help buissnes to thrive online, We are expert in creating responsive app with modern UI design. we are also very expert in creating website or web app providing a unified user experience across all devices.""",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
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
      return Desktop(currentHeight, currentWidth, context);
    } else {
      return Mobile(currentHeight, currentWidth);
    }
  }
}
