import 'package:e_vesping/app/controllers/start_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatelessWidget {
  final StartController _controller = Get.find<StartController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/bg_vesping.png'), // Replace with the path of your image
            fit: BoxFit.cover,
          ),
        ),
        child: Transform.translate(
          offset: const Offset(0.0, -50.0),
          child: Center(
            child: SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                style: GoogleFonts.lato(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText('e-vesping',
                        textStyle: GoogleFonts.lato(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                        curve: Curves.easeIn,
                        speed: const Duration(milliseconds: 150),
                        textAlign: TextAlign.start),
                    ColorizeAnimatedText('e-vesping',
                        colors: [
                          Colors.green,
                          Colors.blue,
                          Colors.yellow,
                          Colors.red,
                        ],
                        textDirection: TextDirection.ltr,
                        textStyle: GoogleFonts.lato(
                            fontSize: 40.0, fontWeight: FontWeight.bold),
                        speed: const Duration(
                          milliseconds: 400,
                        ),
                        textAlign: TextAlign.start),
                  ],
                  isRepeatingAnimation: false,
                  repeatForever: false,
                  onFinished: _controller.navigateToHome,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
