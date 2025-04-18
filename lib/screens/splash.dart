import 'package:flutter/material.dart';
import 'package:todoapp/screens/addtask_page.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import 'package:todoapp/screens/tasklist_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void goToNext(BuildContext context) {
    Future.delayed(const Duration(seconds: 0), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const MyList(),
        ), // Make sure Task widget exists
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      goToNext(context);
    });

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo_splash.jpg",
              width: 200,
              height: 200,
            ),
            Text(
              "Welcome to Todo App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
              ),
            ),
            SimpleCircularProgressBar(
              progressStrokeWidth: 4,
              backStrokeWidth: 0,
              animationDuration: 2,
              size: 48,
              mergeMode: true,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
