import 'package:flutter/material.dart';
import '../../widgets/cards/app_icon_card.dart';
import 'home_screen.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _scaleAnimation;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 700), value: 0.1);

    _scaleAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    );
    _animationController.forward().then((value) => Future.delayed(
        const Duration(milliseconds: 700),
        () => Navigator.pushReplacement(
            context,
            PageRouteBuilder(
                pageBuilder: (context, anim, ani2) =>
                    HomeScreen(key: widget.key),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  var slide = Tween<Offset>(
                          begin: const Offset(0.0, 1.0),
                          end: const Offset(0.0, 0.0))
                      .animate(CurvedAnimation(
                          parent: _animationController, curve: Curves.easeIn));

                  return SlideTransition(position: slide, child: child);
                }))));

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: widget.key,
      backgroundColor: const Color(0xFFEEEEEE),
      body: Center(
        child: ScaleTransition(
          scale: _scaleAnimation,
          alignment: Alignment.center,
          child: const AppIconCard(
            cardSize: 120,
            isLauncher: true,
          ),
        ),
      ),
    );
  }
}
