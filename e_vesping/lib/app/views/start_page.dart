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
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          width: 250.0,
          child: DefaultTextStyle(
            style: GoogleFonts.lato(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
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
    );
  }
}
