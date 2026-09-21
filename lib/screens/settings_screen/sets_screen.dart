import 'package:noti/screens/settings_screen/settings_dialog.dart';
import 'package:flutter/material.dart';
import 'package:noti/utils/extensions/string_extension.dart';
import 'package:noti/widgets/dialogs/warring_alert.dart';
import 'package:provider/provider.dart';
import '../../providers/note_provider/note_provider.dart';
import '../../providers/settings_provider/settings_provider.dart';
import 'package:noti/providers/task_provider/task_provider.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/buttons/switch_btn.dart';
import '../../widgets/cards/settings_card.dart';
import '../../widgets/dialogs/custom_dialog.dart';
import '../../widgets/headers/sliver_header.dart';
import '../../widgets/headers/small_header.dart';
import '../../widgets/responsive/column_row_builder.dart';
import '../../utils/internationalization/i18_extension.dart';

class SetsScreen extends StatelessWidget {
  const SetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double topMargin = SizeInfo.pageTopMargin;
    var switchIconSize = SizeInfo.switchButtonIconSize;
    var headerHeight = SizeInfo.sliverHeaderHeight;
    var btnPadding = SizeInfo.edgePadding;

    return Consumer3<SettingsProvider, TaskProvider, NoteProvider>(
      builder: (context, settingsProvider, taskProvider, noteProvider, child) {
        return CustomScrollView(
          key: key,
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          slivers: [
            //notifications list settings
            SliverPadding(
              padding: EdgeInsets.only(top: topMargin),
              sliver: SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeader(
                  paddingHorizontal: 8.0,
                  height: headerHeight,
                  child: SmallHeader(
                    title: context
                        .t("headers_text.header_notifications")
                        .capitalizeFirstLetter(),
                    // title: 'Calendar',
                  ),
                ),
              ),
            ),
            // SliverPersistentHeader(
            //     pinned: true,
            //     delegate: SliverHeader(
            //         paddingHorizontal: 8.0,
            //         height: headerHeight,
            //         child: SmallHeader(
            //             title:context.t("headers_text.header_notifications").capitalizeFirstLetter()
            //           // title: 'Notifications',
            //         ))),
            SliverList(
              delegate: SliverChildListDelegate([
                ColumnBuilder(
                  itemCount: settingsProvider
                      .notificationSets
                      .notificationSettingsListCounter,
                  itemBuilder: (context, index) {
                    final notificationSettings = settingsProvider
                        .notificationSets
                        .notificationSettingsList[index];
                    // print("WHATS WRONG WITH CARD TITLE: ${notificationSettings.title!} AND DESCRIPTION: ${notificationSettings.description!}");
                    return SettingsCard(
                      title: notificationSettings.title!,
                      description: notificationSettings.description!,
                      child: SwitchBtn(
                        value: notificationSettings.isOn!,
                        onChanged: (val) {
                          if (index == 0) {
                            settingsProvider.onNotificationSettingsChange(
                              notificationSettings,
                            );
                          } else {
                            settingsProvider.onNotificationSound(
                              notificationSettings,
                            );
                          }
                        },
                      ),
                      // SwitchBtn(
                      //     iconData: Icons.circle,
                      //     iconSize: switchIconSize,
                      //     value: notificationSettings.isOn,
                      //     onChanged: (val) {
                      //       if(index == 0){
                      //         settingsProvider.onNotificationSettingsChange(
                      //             notificationSettings);
                      //       }else{
                      //         settingsProvider.onNotificationSound(notificationSettings);
                      //       }
                      //
                      //     }),
                    );
                  },
                ),
              ]),
            ),
            //calendar settings
            SliverPadding(
              padding: EdgeInsets.zero,
              sliver: SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeader(
                  paddingHorizontal: 8.0,
                  height: headerHeight,
                  child: SmallHeader(
                    title: context
                        .t("headers_text.header_calendar")
                        .capitalizeFirstLetter(),
                    // title: 'Calendar',
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                ColumnBuilder(
                  itemCount:
                      settingsProvider.calendarSets.calendarSettingsListCounter,
                  itemBuilder: (context, index) {
                    final calendarSettings = settingsProvider
                        .calendarSets
                        .calendarSettingsList[index];
                    return SettingsCard(
                      title: calendarSettings.title!,
                      description: calendarSettings.description!,
                      child: SwitchBtn(
                        value: calendarSettings.isOn!,
                        onChanged: (val) {
                          settingsProvider.onCalendarSettingsChange(
                            calendarSettings,
                          );
                        },
                      ),
                      // ToogleCheck(
                      //     iconData: Icons.circle,
                      //     iconSize: switchIconSize,
                      //     value: calendarSettings.isOn,
                      //     onChanged: (val) {
                      //       settingsProvider
                      //           .onCalendarSettingsChange(calendarSettings);
                      //     }),
                    );
                  },
                ),
              ]),
            ),
            //trash settings
            SliverPersistentHeader(
              pinned: true,
              delegate: SliverHeader(
                paddingHorizontal: 8.0,
                height: headerHeight,
                child: SmallHeader(
                  title: context
                      .t("headers_text.header_trash")
                      .capitalizeFirstLetter(),
                  //title: 'Trash',
                ),
              ),
            ),
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
                      child: index <= 1
                          ? SwitchBtn(
                              value: trashSets.isOn!,
                              onChanged: (value) {
                                settingsProvider.onTrashSettingsChange(
                                  trashSets,
                                );
                                if (value) {
                                  _pickDate(context, index);
                                } else {
                                  _disableAutomaticDeletion(
                                    settingsProvider: settingsProvider,
                                    taskProvider: taskProvider,
                                    noteProvider: noteProvider,
                                    index: index,
                                  );
                                }
                              },
                            )
                          : IconButton(
                              icon: Icon(
                                Icons.delete_forever,
                                color: Theme.of(
                                  context,
                                ).textTheme.headlineMedium!.color,
                              ),
                              iconSize: switchIconSize,
                              onPressed: () {
                                _warringAlert(context, index, () {
                                  if (index == 2) {
                                    taskProvider.deleteAllTasks();
                                  } else if (index == 3) {
                                    noteProvider.deleteAllNotes();
                                  }
                                });
                              },
                            ),
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

  static Future<void> _pickDate(BuildContext context, int index) async {
    final wasConfirmed = await showDialog<bool>(
      context: context,
      builder: (context) {
        return CustomDial(
          title: index == 0
              ? 'dialogs_text.delete_old_notes_after'
              : 'dialogs_text.delete_old_tasks_after',
          isBtnVisible: false,
          child: SliderDialog(index: index),
        );
      },
    );

    if (!context.mounted) return;

    final settingsProvider = context.read<SettingsProvider>();
    final taskProvider = context.read<TaskProvider>();
    final noteProvider = context.read<NoteProvider>();

    if (wasConfirmed == true) {
      final months = settingsProvider
          .trashSets
          .trashSettings[index]
          .sliderValue!
          .floor();
      if (index == 0) {
        noteProvider.loadNoteListBySettingsValues(months, true);
      } else {
        taskProvider.loadTaskListFromSettings(months, true);
      }
      return;
    }

    _disableAutomaticDeletion(
      settingsProvider: settingsProvider,
      taskProvider: taskProvider,
      noteProvider: noteProvider,
      index: index,
    );
  }

  static void _disableAutomaticDeletion({
    required SettingsProvider settingsProvider,
    required TaskProvider taskProvider,
    required NoteProvider noteProvider,
    required int index,
  }) {
    settingsProvider.cancelDeleteSettings(index);
    if (index == 0) {
      noteProvider.loadNoteListBySettingsValues(0, false);
    } else {
      taskProvider.loadTaskListFromSettings(0, false);
    }
  }

  static void _warringAlert(
    BuildContext context,
    int index,
    VoidCallback confirm,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return WarringAlert(
          message: context.t(
            index == 2
                ? 'dialogs_text.delete_all_tasks_warning'
                : 'dialogs_text.delete_all_notes_warning',
          ),
          onConfirm: confirm,
        );
      },
    );
  }
}
