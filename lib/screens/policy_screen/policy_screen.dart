import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/settings_provider/settings_provider.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/headers/sliver_header.dart';
import '../../widgets/headers/small_header.dart';
import '../../widgets/responsive/column_row_builder.dart';



class PolicyScreen extends StatelessWidget {
  const PolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double topMargin = SizeInfo.pageTopMargin;
    var headerHeight = SizeInfo.sliverHeaderHeight;
    var navIconSize = SizeInfo.leadingAndTrailingIconSize;

    var titleFontSize = SizeInfo.settingsCardTitleFontSize;
    var descriptionFontSize = SizeInfo.settingsCardDescriptionFontSize;

    const marginContainer = EdgeInsets.all(8.0);
    return Consumer<SettingsProvider>(builder: (context,settingsProvider,child){
      return
        Scaffold(key:key,
          resizeToAvoidBottomInset: false,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: Theme(
            data: settingsProvider.getTheme(),
            child: Stack(
              children:[

                CustomScrollView(
                  key: key,
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
                              // maxHeight: headerHeight + 5,
                              // minHeight: headerHeight,
                              child: const SmallHeader(
                                title: 'PrivacyPolicy',
                              ))),
                    ),
                    SliverList(
                      delegate: SliverChildListDelegate([
                        ColumnBuilder(
                          itemCount: settingsProvider.policyList.policyListCounter,
                          itemBuilder: (context, index) {
                            final policy = settingsProvider.policyList.policy[index];
                            return Padding(
                              padding: marginContainer ,
                              child: RichText(
                                  text: TextSpan(
                                      text: '${policy.title}\n',
                                      style:  Theme.of(context)
                                          .textTheme
                                          .headlineMedium!
                                          .copyWith(fontSize: titleFontSize, height: 2.0),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: policy.link,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(fontSize: descriptionFontSize, height: 1.8),
                                        )
                                      ]),
                              ),
                            );
                          },
                        )
                      ]),
                    ),
                  ]),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      padding: const EdgeInsets.all(20),
                      onPressed: () async {
                        Navigator.pop(context, true);
                      },
                      icon:
                      Icon(
                          Icons.arrow_back,
                          color: Theme.of(context).textTheme.displayLarge!.color,
                          size: navIconSize)),
                ),

            ]
            ),
          ),
        );
    });


  }
}
