import 'package:flutter/material.dart';
import '../../providers/settings_provider/policy/librarys_list.dart';
import '../../utils/customPageRoute/custom_page_route.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/headers/sliver_header.dart';
import '../../widgets/headers/small_header.dart';
import '../../widgets/responsive/column_row_builder.dart';
import '../../widgets/web/web_link.dart';
import '../policy_screen/policy_screen.dart';

class LicenceScreen extends StatelessWidget {
  const LicenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LibList libList = LibList();
    var titleSize = SizeInfo.taskCreatorDescription;
    var helpText = SizeInfo.noteCardTitle;
    var padding = SizeInfo.edgePadding;
    var titleStyle = Theme.of(context)
        .textTheme
        .headlineMedium!
        .copyWith(fontSize: titleSize, letterSpacing: 2);
    double cardSize = 100;
    var headerHeight = SizeInfo.sliverHeaderHeight;
    return Scaffold(
      key: key,
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        key: key,
        padding:
            EdgeInsets.symmetric(horizontal: padding, vertical: padding * 2),
        child: CustomScrollView(
            key: key,
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.only(top: 24),
                sliver: SliverPersistentHeader(
                  pinned: true,
                  delegate: SliverHeader(
                    paddingHorizontal: padding,
                    height: headerHeight,
                    // maxHeight: 150,
                    // minHeight: 130,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: cardSize,
                          width: cardSize,
                          child: Image.asset(
                            'assets/images/noti.png',
                            width: cardSize,
                            height: cardSize,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Noti version: 1.0.0", style: titleStyle),
                            SizedBox(
                              width: padding,
                            ),
                            Text("Made by R85unit", style: titleStyle),
                            SizedBox(
                              width: padding,
                            ),
                            Text("Powered by", style: titleStyle),
                            const SizedBox(
                              width: 10.0,
                            ),
                            GestureDetector(
                              onTap: () async {
                                await Navigator.push(
                                    context,
                                    CustomPageRoute(
                                        child: const Web(
                                          link: 'https://flutter.dev',
                                        ),
                                        direction: AxisDirection.up));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Flutter",
                                    style: titleStyle,
                                  ),
                                  FlutterLogo(
                                    size: titleSize + 10,
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const SizedBox(
                                  width: 100.0,
                                ),
                                TextButton(
                                  onPressed: () async {
                                    await Navigator.push(
                                        context,
                                        CustomPageRoute(
                                            child: const PolicyScreen(),
                                            direction: AxisDirection.up));
                                  },
                                  child: Text("Privacy Policy",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              fontSize: helpText,
                                              letterSpacing: 2)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverPersistentHeader(
                  pinned: true,
                  delegate: SliverHeader(
                      paddingHorizontal: 8.0,
                      height: headerHeight,
                      // maxHeight: 70,
                      // minHeight: 60,
                      child: const SmallHeader(
                        title:
                            'This app is built thanks to external libraries and software',
                      ))),
              SliverList(
                  delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: const Divider(),
                ),
                Padding(
                  padding: EdgeInsets.all(padding),
                  child: ColumnBuilder(
                    itemCount: libList.libListCounter,
                    itemBuilder: (context, index) {
                      final list = libList.libs[index];
                      return GestureDetector(
                        onTap: () async {
                          await Navigator.push(
                              context,
                              CustomPageRoute(
                                  child: Web(
                                    link: list.link!,
                                  ),
                                  direction: AxisDirection.up));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              list.icon,
                              size: helpText,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "${list.title} \n",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(fontSize: helpText),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ]))
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        splashColor: Colors.transparent,
        elevation: 0,
        child: Icon(
          Icons.cancel,
          color: Theme.of(context).indicatorColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
