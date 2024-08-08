import 'package:flutter/material.dart';

import '../../models/settings_model/policy/policy_rules_list.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/headers/sliver_header.dart';
import '../../widgets/headers/small_header.dart';
import '../../widgets/responsive/column_row_builder.dart';

class PolicyScreen extends StatelessWidget {
  const PolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PolicyList policyList = PolicyList();
    var titleSize = SizeInfo.taskCreatorDescription;
    var helpText = SizeInfo.noteCardTitle;
    var padding = SizeInfo.edgePadding;
    var titleStyle = Theme.of(context)
        .textTheme
        .headlineMedium!
        .copyWith(fontSize: titleSize, letterSpacing: 2);
    double cardSize = 50;
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
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.only(top: 24),
                sliver: SliverPersistentHeader(
                  pinned: true,
                  delegate: SliverHeader(
                    paddingHorizontal: padding,
                    maxHeight: 55,
                    minHeight: 50,
                    child: SizedBox(
                      width: cardSize,
                      height: cardSize,
                      child: Image.asset(
                        'assets/images/noti.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              SliverPersistentHeader(
                  pinned: true,
                  delegate: SliverHeader(
                      paddingHorizontal: 8.0,
                      maxHeight: 70,
                      minHeight: 60,
                      child: const SmallHeader(
                        title:
                            'Noti Privacy Policy \nLast modified 14 September 2021.',
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
                    itemCount: policyList.policyListCounter,
                    itemBuilder: (context, index) {
                      final list = policyList.policy[index];
                      if (index == 0) {
                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  list.icon,
                                  size: titleSize,
                                ),
                                SizedBox(
                                  width: titleSize,
                                ),
                                Expanded(
                                  child: RichText(
                                    text: TextSpan(
                                        text: "${list.title} \n",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge!
                                            .copyWith(fontSize: titleSize),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: list.link,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineLarge!
                                                  .copyWith(fontSize: helpText))
                                        ]),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: padding),
                              child: ColumnBuilder(
                                  itemCount: policyList.permissionsListCounter,
                                  itemBuilder: (context, index) {
                                    final listPermissions =
                                        policyList.permissions[index];
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          listPermissions.icon,
                                          size: helpText,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          child: RichText(
                                            text: TextSpan(
                                                text:
                                                    "${listPermissions.title} \n",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineLarge!
                                                    .copyWith(
                                                        fontSize: titleSize),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text:
                                                          listPermissions.link,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headlineLarge!
                                                          .copyWith(
                                                              fontSize:
                                                                  helpText))
                                                ]),
                                          ),
                                        ),
                                      ],
                                    );
                                  }),
                            )
                          ],
                        );
                      } else {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              list.icon,
                              size: titleSize,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                    text: "${list.title} \n",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge!
                                        .copyWith(fontSize: titleSize),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: list.link,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineLarge!
                                              .copyWith(fontSize: helpText))
                                    ]),
                              ),
                            ),
                          ],
                        );
                      }
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
