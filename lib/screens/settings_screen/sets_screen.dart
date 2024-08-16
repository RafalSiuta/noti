import 'package:flutter/material.dart';
import 'package:noti/screens/settings_screen/settings_dialog.dart';
import 'package:provider/provider.dart';

import '../../providers/note_provider.dart';
import '../../providers/settings_provider.dart';
import '../../providers/task_provider.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/buttons/switch_btn.dart';
import '../../widgets/cards/settings_card.dart';
import '../../widgets/dialogs/custom_dialog.dart';
import '../../widgets/headers/sliver_header.dart';
import '../../widgets/headers/small_header.dart';
import '../../widgets/responsive/column_row_builder.dart';

class SetsScreen extends StatelessWidget {
  const SetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double topMargin = SizeInfo.pageTopMargin;
    return Consumer3<SettingsProvider, TaskProvider, NoteProvider>(
      builder: (context, settingsProvider, taskProvider, noteProvider, child) {
        return CustomScrollView(
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
                      maxHeight: 42,
                      minHeight: 40,
                      child: const SmallHeader(
                        title: 'Calendar',
                      ))),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                ColumnBuilder(
                  itemCount:
                      settingsProvider.calendarSets.calendarSettingsListCounter,
                  itemBuilder: (context, index) {
                    final calendarSettings = settingsProvider
                        .calendarSets.calendarSettingsList[index];
                    return SettingsCard(
                      title: calendarSettings.title!,
                      description: calendarSettings.description!,
                      child: SwitchBtn(
                          icon: Icons.circle,
                          value: calendarSettings.isOn,
                          onChanged: (val) {
                            settingsProvider
                                .onCalendarSettingsChange(calendarSettings);
                          }),
                    );
                  },
                )
              ]),
            ),
            SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeader(
                    paddingHorizontal: 8.0,
                    maxHeight: 42,
                    minHeight: 40,
                    child: const SmallHeader(
                      title: 'Notifications',
                    ))),
            SliverList(
              delegate: SliverChildListDelegate([
                ColumnBuilder(
                  itemCount: settingsProvider
                      .notificationSets.notificationSettingsListCounter,
                  itemBuilder: (context, index) {
                    final notificationSettings = settingsProvider
                        .notificationSets.notificationSettingsList[index];
                    return SettingsCard(
                      title: notificationSettings.title!,
                      description: notificationSettings.description!,
                      child: SwitchBtn(
                          icon: Icons.circle,
                          value: notificationSettings.isOn,
                          onChanged: (val) {
                            settingsProvider.onNotificationSettingsChange(
                                notificationSettings);
                          }),
                    );
                  },
                )
              ]),
            ),
            SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeader(
                    paddingHorizontal: 8.0,
                    maxHeight: 42,
                    minHeight: 40,
                    child: const SmallHeader(
                      title: 'Trash',
                    ))),
            SliverList(
              delegate: SliverChildListDelegate([
                ColumnBuilder(
                  itemCount:
                      settingsProvider.trashSets.trashSettingsListCounter,
                  itemBuilder: (context, index) {
                    final trashSets =
                        settingsProvider.trashSets.trashSettingsList[index];
                    return SettingsCard(
                      title: trashSets.title!,
                      description: trashSets.description!,
                      child: SwitchBtn(
                          icon: Icons.circle,
                          value: trashSets.isOn,
                          onChanged: (val) {
                            settingsProvider.onTrashSettingsChange(trashSets);
                            if (trashSets.isOn == true) {
                              _pickDate(context, index);
                            } else {
                              settingsProvider.cancelDeleteSettings(index);
                              if (index == 0) {
                                noteProvider.loadNoteListBySettingsValues(
                                    0, false);
                              } else {
                                taskProvider.loadTaskListFromSettings(0, false);
                              }
                            }
                          }),
                    );
                  },
                ),
              ]),
            ),
          ],
        );
      },
    );
  }

  static _pickDate(BuildContext context, int index) {
    showDialog(
        context: context,
        builder: (context) {
          return CustomDial(
              title: 'Delete old ${index == 0 ? "note" : "task"} after:',
              isBtnVisible: false,
              child: SizedBox(
                  width: MediaQuery.of(context).size.width - 30,
                  height: 250,
                  child: SliderDialog(
                    index: index,
                  )));
        });
  }
}
