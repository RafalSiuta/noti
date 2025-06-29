import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../../providers/settings_provider/settings_provider.dart';
import '../../utils/constants/const_values.dart';
import '../../utils/dimensions/screen_type.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/cards/theme_card.dart';
import '../../widgets/carousel/carousel_slider.dart';
import '../../widgets/headers/sliver_header.dart';
import '../../widgets/headers/small_header.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(
        builder: (context, settingsProvider, child) {
          var headerHeight = SizeInfo.sliverHeaderHeight;
      var mediaQuery = MediaQuery.of(context);
      var sizeInfo = SizeInfo(
          screenType: getScreenType(mediaQuery), screenSize: mediaQuery.size);

      var columnCount = SizeInfo.gridColumnCount;
      double topMargin = SizeInfo.pageTopMargin;
      return CustomScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(top: topMargin),
            sliver: SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeader(
                    paddingHorizontal: 8.0,
                    height: headerHeight,
                    child: const SmallHeader(
                      title: 'Shapes',
                    ))),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const Carousel(),
            ]),
          ),
          SliverPersistentHeader(
              pinned: true,
              delegate: SliverHeader(
                  paddingHorizontal: 8.0,
                  height: headerHeight,
                  child: const SmallHeader(
                    title: 'Themes',
                  ))),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            sliver: AnimationLimiter(
              child: SliverGrid.count(
                  crossAxisSpacing:
                      sizeInfo.screenType == ScreenType.tablet ? 12.0 : 8.0,
                  mainAxisSpacing:
                      sizeInfo.screenType == ScreenType.tablet ? 12.0 : 8.0,
                  crossAxisCount: columnCount,
                  childAspectRatio: 2 / 2,
                  children: List.generate(
                      settingsProvider.themes.themesListCounter, (index) {
                        var theme = settingsProvider.themes.themesList[index];
                    return AnimationConfiguration.staggeredGrid(
                      columnCount: columnCount,
                      position: index,
                      duration: headerDuration,
                      child: ScaleAnimation(
                        scale: scaleStartValue,
                        child: FadeInAnimation(
                            child: ThemeCard(
                          onChangeTheme: () =>
                              settingsProvider.setCustomTheme(theme.id),
                          themeData: settingsProvider.themes.themesList[index],
                        )),
                      ),
                    );
                  })),
            ),
          )
        ],
      );
    });
  }
}
