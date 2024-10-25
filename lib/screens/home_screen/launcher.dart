import 'package:flutter/material.dart';
import '../../utils/prefs/prefs.dart';
import '../../widgets/cards/app_icon_card.dart';
import '../permission_screen/permission_screen_launcher.dart';
import 'home_screen.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}
class _MainState extends State<Main> with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _scaleAnimation;

  //final Prefs _prefs = Prefs();

  Future<void> checkFirstRun() async {
     // bool isFirstRun = await _prefs.restoreBool("notiFirstRun", true);
   // bool isFirstRun = _prefs.restoreBool("notiFirstRun", _isFirstRun!) ?? true;
      //todo remove before launch
      // if(isFirstRun == true){
      //   print("NOTI FIRST RUN value: $isFirstRun");
      // }else{
      //   print("NOTI NOT FIRST RUN value: $isFirstRun");
      // }
      _animationController.forward().then((_) async {
        await Future.delayed(const Duration(milliseconds: 350));

        if (mounted) {
          Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, anim, ani2) =>
              HomeScreen(key: widget.key),
              //isFirstRun ? const PermissionScreenLauncher() : HomeScreen(key: widget.key),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                var slide = Tween<Offset>(
                    begin: const Offset(0.0, 1.0),
                    end: const Offset(0.0, 0.0))
                    .animate(CurvedAnimation(
                    parent: _animationController, curve: Curves.easeIn));

                return SlideTransition(position: slide, child: child);
              },
            ),
          );
          //     .then((val){
          //    isFirstRun = false;
          //   _prefs.storeBool("notiFirstRun", isFirstRun);
          // });
        }

      });
  }

  @override
  void initState(){
    super.initState();

    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 350), value: 0.7);

    _scaleAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    );
    checkFirstRun();

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
          ),
        ),
      ),
    );
  }
}

