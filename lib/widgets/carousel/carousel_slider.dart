
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_animations/simple_animations.dart';

import '../../providers/settings_provider.dart';
import '../../utils/dimensions/size_info.dart';

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(
      builder: (context, settingsProvider, child) {
        var chevronIconSize = SizeInfo.switchButtonIconSize;
        var carouselHeight = SizeInfo.carouselHeight;
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider.builder(
                  itemCount: settingsProvider.shapesList.carouselListCounter,
                  carouselController: settingsProvider.carouselController,
                  options: CarouselOptions(
                      aspectRatio: 4.5 / 8,
                      height:
                          MediaQuery.of(context).size.height / carouselHeight,
                      initialPage: settingsProvider.currentShape,
                      enlargeCenterPage: true,
                      autoPlay: false,
                      reverse: true,
                      scrollPhysics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      enableInfiniteScroll: false,
                      scrollDirection: Axis.horizontal,
                      viewportFraction: 0.4,
                      pageSnapping: true,
                      onPageChanged: (index, function) {
                        settingsProvider.onActivityChange(index);
                      }),
                  itemBuilder: (context, index, hero) {
                    final carousel =
                        settingsProvider.shapesList.shapesList[index];
                    return PlayAnimationBuilder<double>(
                        tween: Tween<double>(begin: 0.5, end: 1.0),
                        duration: const Duration(milliseconds: 300),
                        delay: const Duration(milliseconds: 200),
                        curve: Curves.easeOut,
                        builder: (context, value, child) {
                          return Transform.scale(
                            scale: value,
                            child: Card(
                              //margin: const EdgeInsets.symmetric(vertical: 5.0),
                              elevation: 5,
                              surfaceTintColor:  Theme.of(context).colorScheme.background,
                              shape: const RoundedRectangleBorder(

                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                             // color: Theme.of(context).colorScheme.background,
                              shadowColor: Theme.of(context).shadowColor,
                              child: Padding(
                                padding: const EdgeInsets.all(.0),
                                child: ClipPath(
                                  clipper: carousel,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(15.0),
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomLeft,
                                          stops: const [0.0, 0.5, 1.0],
                                          colors: [
                                            Theme.of(context).primaryColor,
                                            Theme.of(context).primaryColorLight,
                                            Theme.of(context).primaryColorDark
                                          ],
                                        )),
                                  ),
                                ),
                              ),
                            ),
                          );
                        });
                  }),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                    splashColor: Colors.transparent,
                    onPressed: () => settingsProvider.goToPrevious(),
                    icon: Icon(
                      Icons.arrow_left,
                      size: chevronIconSize,
                    )),
                IconButton(
                    splashColor: Colors.transparent,
                    onPressed: () => settingsProvider.goToNext(),
                    icon: Icon(
                      Icons.arrow_right,
                      size: chevronIconSize,
                    )),
              ],
            ),
          ],
        ); //slider
      },
    );
  }
}
