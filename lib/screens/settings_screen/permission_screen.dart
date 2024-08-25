import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/settings_provider.dart';
import '../../styles/shapes/shapes.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/buttons/switch_btn.dart';
import '../../widgets/cards/settings_card.dart';
import '../../widgets/headers/sliver_header.dart';
import '../../widgets/headers/small_header.dart';
import '../../widgets/responsive/column_row_builder.dart';


class PermissionScreen extends StatelessWidget {
  const PermissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double topMargin = SizeInfo.pageTopMargin;
    return Consumer<SettingsProvider>(
        builder: (context, settingsProvider, child) {
          return
            CustomScrollView(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.only(top: topMargin),
                  sliver: SliverPersistentHeader(
                      pinned: true,
                      delegate: SliverHeader(
                          paddingHorizontal: 8.0,
                          maxHeight: 42,
                          minHeight: 40,
                          child: const SmallHeader(
                            title: 'Permissions',
                          ))),

                ),
                SliverList(
                    delegate: SliverChildListDelegate(
                        [
                          ColumnBuilder(
                            itemCount:
                            settingsProvider.permissionSets.permissionSettingsListCounter,
                            itemBuilder: (context, index) {
                              final permissionSettings = settingsProvider
                                  .permissionSets.permissionSettingsList[index];
                              return SettingsCard(
                                title: permissionSettings.title!,
                                description: permissionSettings.description!,
                                child: SwitchBtn(
                                    icon: Icons.circle,
                                    value: permissionSettings.isOn,
                                    onChanged: (val) {
                                      settingsProvider
                                          .onPermissionSettingsChange(permissionSettings);
                                    }),
                              );
                            },
                          )
                        ]
                    ))
              ],
            );
        }
    );
  }
}
