import 'package:noti/screens/settings_screen/settings_dialog.dart';
import 'package:flutter/material.dart';
import 'package:noti/widgets/buttons/icon_button.dart';
import 'package:noti/widgets/dialogs/warring_alert.dart';
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
    var switchIconSize = SizeInfo.switchButtonIconSize;
    var headerHeight = SizeInfo.sliverHeaderHeight;
    var btnPadding = SizeInfo.edgePadding;

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
                      maxHeight: headerHeight,
                      minHeight: headerHeight - 2,
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
                          iconData: Icons.circle,
                          iconSize: switchIconSize,
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
                    maxHeight: headerHeight,
                    minHeight: headerHeight - 2,
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
                          iconData: Icons.circle,
                          iconSize: switchIconSize,
                          value: notificationSettings.isOn,
                          onChanged: (val) {
                            if(index == 0){
                              settingsProvider.onNotificationSettingsChange(
                                  notificationSettings);
                            }else{
                              settingsProvider.onNotificationSound(notificationSettings);
                            }

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
                    maxHeight: headerHeight,
                    minHeight: headerHeight - 2,
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
                      child: index <= 1 ? SwitchBtn(
                          iconData: Icons.circle,
                          iconSize: switchIconSize,
                          value: trashSets.isOn,
                          onChanged: (val) {
                            settingsProvider.onTrashSettingsChange(trashSets);
                            if (trashSets.isOn == true) {
                              _pickDate(context, index);
                            } else {
                              settingsProvider.cancelDeleteSettings(index);
                              if (index == 0 && trashSets.isOn == true) {
                                noteProvider.loadNoteListBySettingsValues(
                                    0, false);
                              } else if(index == 1 && trashSets.isOn == true){
                                taskProvider.loadTaskListFromSettings(0, false);
                              }
                            }
                          }): IconButton(
                              icon: Icon(Icons.delete_forever),
                              onPressed: (){
                                _warringAlert(context, index, (){
                                  if(index == 2){
                                    taskProvider.deleteAllTasks();
                                  }else if(index == 3){
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

  static _pickDate(BuildContext context, int index, ) {
    showDialog(
        context: context,
        builder: (context) {
          return CustomDial(
              title: 'Delete old ${index == 0 ? "note" : "task"} after:',
              isBtnVisible: false,
              child: SliderDialog(
                index: index,
              ));
        });
  }

  static _warringAlert(BuildContext context, int index,VoidCallback confirm) {
    showDialog(
        context: context,
        builder: (context) {
          return
            WarringAlert(
              message: "This action will delete all ${index == 2 ? "tasks" : "notes"} data permanently !!!",
              onConfirm: confirm
            );
          //   CustomDial(
          //     title: 'Warring !!!',
          //     isBtnVisible: false,
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       spacing: 5.0,
          //       children: [
          //         Icon(Icons.warning_rounded, color: Theme.of(context).colorScheme.primaryFixed,),
          //         Text("This action will delete all ${index == 2 ? "task" : "note"} data permanently!!!", style: Theme.of(context).textTheme.bodyMedium,),
          //         Row(
          //           children: [
          //             TextButton(
          //                 onPressed: (){
          //                 Navigator.pop(context);
          //             }, child: Text('cancel',style: Theme.of(context).textTheme.bodyMedium)
          //             ),
          //             TextButton(
          //                 onPressed: (){
          //
          //                 }, child: Text('confirm',style: Theme.of(context).textTheme.bodyMedium)
          //             ),
          //           ],
          //         )
          //
          //       ],
          //     )
          // );
        });
  }
}
