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
        child: Center(
          child: SizedBox(
            width: 250.0,
            child: DefaultTextStyle(
              style: GoogleFonts.lato(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors
                    .black, // You might want to change the color of the text to make it visible on the image
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('e-vesping',
                      speed: const Duration(milliseconds: 100)),
                ],
                isRepeatingAnimation: true,
                repeatForever: false,
                onFinished: _controller.navigateToHome,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
