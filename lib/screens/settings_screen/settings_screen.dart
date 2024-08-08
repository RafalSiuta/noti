import 'package:flutter/material.dart';
import 'package:noti/screens/settings_screen/sets_screen.dart';
import 'package:noti/screens/settings_screen/theme_screen.dart';
import 'package:provider/provider.dart';

import '../../models/menu_model/nav_model.dart';
import '../../models/menu_model/screen_model.dart';
import '../../providers/settings_provider.dart';
import '../../styles/shapes/shapes.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/navigators/side_nav.dart';
import 'about_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late PageController _pageController;

  int _currentPage = 0;

  onPageChange(int page) {
    setState(() {
      _pageController.jumpToPage(page);
      _currentPage = page;
    });
  }

  final List<ScreenModel> _pages = [
    ScreenModel(
      page: const ThemeScreen(),
      title: NavModel(
        title: 'Themes',
      ),
    ),
    ScreenModel(
      page: const SetsScreen(),
      title: NavModel(
        title: 'Settings',
      ),
    ),
    ScreenModel(
        page: const AboutScreen(),
        title: NavModel(
          title: 'About',
        ))
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: _currentPage);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var navIconSize = SizeInfo.leadingAndTrailingIconSize;
    return Scaffold(
        key: widget.key,
        resizeToAvoidBottomInset: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Consumer<SettingsProvider>(
          builder: (context, settingsProvider, child) {
            return Theme(
              data: settingsProvider.getTheme(),
              child: Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  const BackgroundShape(),
                  SafeArea(
                    child: Container(
                      key: widget.key,
                      child: Row(
                        children: [
                          Expanded(
                              child: Center(
                                  child: PageView.builder(
                                      physics: const BouncingScrollPhysics(
                                          parent:
                                              AlwaysScrollableScrollPhysics()),
                                      itemCount: _pages.length,
                                      controller: _pageController,
                                      onPageChanged: onPageChange,
                                      itemBuilder: (context, index) {
                                        return _pages
                                            .map((e) => e.page!)
                                            .toList()
                                            .elementAt(index);
                                      }))),
                          SideNav(
                            leading: IconButton(
                                padding: const EdgeInsets.all(20),
                                onPressed: () async {
                                  Navigator.pop(context, true);
                                  setState(() {});
                                },
                                icon:
                                    Icon(Icons.arrow_back, size: navIconSize)),
                            itemCount: _pages.length,
                            titles: _pages.map((e) => e.title!).toList(),
                            selectedItem: _currentPage,
                            onTap: (int sel) {
                              onPageChange(sel);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
