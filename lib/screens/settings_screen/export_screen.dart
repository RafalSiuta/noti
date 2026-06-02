import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:noti/providers/export_provider/export_provider.dart';
import 'package:noti/providers/note_provider/note_provider.dart';
import 'package:noti/providers/task_provider/task_provider.dart';
import 'package:noti/utils/extensions/string_extension.dart';
import 'package:noti/utils/internationalization/i18_extension.dart';
import 'package:noti/widgets/buttons/export_button.dart';
import 'package:provider/provider.dart';

import '../../utils/dimensions/size_info.dart';
import '../../widgets/buttons/switch_btn.dart';
import '../../widgets/cards/settings_card.dart';
import '../../widgets/dialogs/custom_dialog.dart';
import '../../widgets/dialogs/warring_alert.dart';
import '../../widgets/headers/sliver_header.dart';
import '../../widgets/headers/small_header.dart';
import '../../widgets/responsive/column_row_builder.dart';
import '../../widgets/tooltip/custom_text_toolbar.dart';

class ExportScreen extends StatefulWidget {
  const ExportScreen({super.key});

  @override
  State<ExportScreen> createState() => _ExportScreenState();
}

class _ExportScreenState extends State<ExportScreen> {
  var titleFontSize = SizeInfo.taskCreatorTitle;
  var helpTextFontSize = SizeInfo.helpTextSize;
  int maxTitleLength = 20;
  var edgePadding = SizeInfo.leftEdgePadding;
  var sidePadding = SizeInfo.edgePadding;
  var textFontSize = SizeInfo.calendarDaySize;
  double topMargin = SizeInfo.pageTopMargin;
  var headerHeight = SizeInfo.sliverHeaderHeight;
  var switchIconSize = SizeInfo.switchButtonIconSize;

  TextEditingController titleVal = TextEditingController();
  FocusNode titleNode = FocusNode();
  bool? editTextEnable;
  bool _isExporting = false;
  bool _isImporting = false;

  @override
  void setState(VoidCallback fn) {
    titleNode.addListener(() {
      setState(() {
        editTextEnable = titleNode.hasFocus;
      });
    });
    super.setState(fn);
  }

  @override
  void dispose() {
    titleNode.dispose();
    titleVal.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ExportProvider>(
      builder: (context, exportProvider, child) {
        return CustomScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          slivers: [
            SliverPadding(
              padding: EdgeInsets.only(top: topMargin),
              sliver: SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeader(
                  paddingHorizontal: 8.0,
                  height: headerHeight,
                  child: SmallHeader(
                    title: context
                        .t("headers_text.header_export_title")
                        .capitalizeFirstLetter(),
                    // title: 'Shapes',
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.only(left: edgePadding),
                  child: TextField(
                    maxLengthEnforcement:
                        MaxLengthEnforcement.truncateAfterCompositionEnds,
                    contextMenuBuilder: (context, editableTextState) {
                      return CustomTextSelectionToolbar(
                        key: widget.key,
                        editableTextState: editableTextState,
                      );
                    },

                    cursorWidth: 1,
                    focusNode: titleNode,
                    maxLines: 1,
                    maxLength: maxTitleLength,
                    onSubmitted: (val) {
                      setState(() {
                        titleNode.unfocus();
                      });
                    },
                    keyboardType: TextInputType.text,
                    enabled: true,
                    onChanged: (newText) {
                      setState(() {
                        // widget.newTask.title = newText;
                        // cursorPlace(titleVal, newText);
                      });
                    },
                    cursorColor: Theme.of(context).textTheme.labelMedium!.color,
                    controller: titleVal,
                    autofocus: false,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: titleFontSize,
                      decoration: TextDecoration.none,
                    ),
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      helperText: context
                          .t("creators_text.helper_title")
                          .capitalizeFirstLetter(),
                      hintText: context.t("settings_text.export_file_name"),
                      helperStyle: Theme.of(context)
                          .inputDecorationTheme
                          .helperStyle!
                          .copyWith(fontSize: helpTextFontSize),
                    ),
                  ),
                ),
                ColumnBuilder(
                  itemCount:
                      exportProvider.exportSets.exportSettingsListCounter + 1,
                  itemBuilder: (context, index) {
                    if (index ==
                        exportProvider.exportSets.exportSettingsListCounter) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ExportButton(
                            isExporting: _isExporting,
                            onPress: _isExporting
                                ? null
                                : () async {
                                    setState(() {
                                      _isExporting = true;
                                    });
                                    final exportResult = await exportProvider
                                        .getExportSettings(
                                          fileName: titleVal.text,
                                        );
                                    if (!mounted) return;
                                    setState(() {
                                      _isExporting = false;
                                    });
                                    if (exportResult != null) {
                                      _showExportSuccessDialog(
                                        this.context,
                                        exportResult,
                                      );
                                    }
                                  },
                          ),
                        ],
                      );
                    }

                    final exportsSettings =
                        exportProvider.exportSets.exportSettingsList[index];
                    return SettingsCard(
                      title: exportsSettings.title!,
                      description: exportsSettings.description!,
                      child: SwitchBtn(
                        iconData: Icons.circle,
                        iconSize: switchIconSize,
                        value: exportsSettings.isOn,
                        onChanged: (val) {
                          exportProvider.onExportSettingsChange(
                            exportsSettings,
                          );
                        },
                      ),
                    );
                  },
                ),
              ]),
            ),
            SliverPadding(
              padding: EdgeInsets.only(top: topMargin),
              sliver: SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeader(
                  paddingHorizontal: 8.0,
                  height: headerHeight,
                  child: SmallHeader(
                    title: context
                        .t("headers_text.header_import_title")
                        .capitalizeFirstLetter(),
                    // title: 'Shapes',
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                ColumnBuilder(itemBuilder: (context,index){
                  return
                    SettingsCard(
                      title: "import_import_file_title",
                      description: "import_description",
                      child: IconButton(
                        onPressed: _isImporting
                            ? null
                            : () async {
                          setState(() {
                            _isImporting = true;
                          });
                          final result = await exportProvider
                              .getImportSettings();
                          if (!mounted) return;
                          setState(() {
                            _isImporting = false;
                          });
                          if (result.cancelled) return;
                          if (result.needsOverwrite) {
                            _showImportOverwriteDialog(
                              this.context,
                              exportProvider,
                              result,
                            );
                          } else {
                            if (result.success) {
                              await _refreshImportedData();
                            }
                            if (!mounted) return;
                            _showImportResultDialog(this.context, result);
                          }
                        },
                        icon: _isImporting
                            ? const SizedBox(
                          width: 24,
                          height: 24,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                            : Icon(
                          Icons.file_download,
                          color: Theme.of(
                            context,
                          ).textTheme.headlineMedium!.color,
                        ),
                      ),
                      // SwitchBtn(
                      // iconData: Icons.circle,
                      // iconSize: switchIconSize,
                      // value: false,
                      // onChanged: (val) {
                      // }),
                    );
                }, itemCount: 1
                ),
                // SettingsCard(
                //   title: "import_import_file_title",
                //   description: "import_description",
                //   child: IconButton(
                //     onPressed: _isImporting
                //         ? null
                //         : () async {
                //             setState(() {
                //               _isImporting = true;
                //             });
                //             final result = await exportProvider
                //                 .getImportSettings();
                //             if (!mounted) return;
                //             setState(() {
                //               _isImporting = false;
                //             });
                //             if (result.cancelled) return;
                //             if (result.needsOverwrite) {
                //               _showImportOverwriteDialog(
                //                 this.context,
                //                 exportProvider,
                //                 result,
                //               );
                //             } else {
                //               if (result.success) {
                //                 await _refreshImportedData();
                //               }
                //               if (!mounted) return;
                //               _showImportResultDialog(this.context, result);
                //             }
                //           },
                //     icon: _isImporting
                //         ? const SizedBox(
                //             width: 24,
                //             height: 24,
                //             child: CircularProgressIndicator(strokeWidth: 2),
                //           )
                //         : Icon(
                //             Icons.file_download,
                //             color: Theme.of(
                //               context,
                //             ).textTheme.headlineMedium!.color,
                //           ),
                //   ),
                //   // SwitchBtn(
                //   // iconData: Icons.circle,
                //   // iconSize: switchIconSize,
                //   // value: false,
                //   // onChanged: (val) {
                //   // }),
                // ),
              ]),
            ),
          ],
        );
      },
    );

  }

  void _showExportSuccessDialog(BuildContext context, ExportResult result) {
    showDialog(
      context: context,
      builder: (context) {
        final textStyle = _dialogResultTextStyle(context);
        final labelStyle = textStyle?.copyWith(fontWeight: FontWeight.w700);
        final fileName = result.file.path.split(RegExp(r'[\\/]')).last;
        return CustomDial(
          title: 'dialogs_text.success',
          child: Align(
            alignment: Alignment.topLeft,
            child: RichText(
              text: TextSpan(
                style: textStyle,
                children: [
                  TextSpan(
                    text:
                        '${context.t("dialogs_text.export_completed").capitalizeFirstLetter()}\n',
                    style: labelStyle,
                  ),
                  _labelSpan(context, 'file_label', labelStyle),
                  TextSpan(text: '$fileName\n'),
                  _labelSpan(context, 'tasks_label', labelStyle),
                  TextSpan(text: '${result.tasksCount}\n'),
                  _labelSpan(context, 'notes_label', labelStyle),
                  TextSpan(text: '${result.notesCount}\n'),
                  _labelSpan(context, 'folder_label', labelStyle),
                  TextSpan(text: result.file.parent.path),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _showImportOverwriteDialog(
    BuildContext context,
    ExportProvider exportProvider,
    ImportResult result,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return WarringAlert(
          message:
              '${context.t("dialogs_text.file_label").capitalizeFirstLetter()}: ${result.fileName ?? ""}\n'
              '${context.t("dialogs_text.import_overwrite_duplicate_ids").capitalizeFirstLetter()}\n\n'
              '${context.t("dialogs_text.import_overwrite_confirm").capitalizeFirstLetter()}\n'
              '${context.t("dialogs_text.tasks_in_file").capitalizeFirstLetter()}: ${result.tasksCount}\n'
              '${context.t("dialogs_text.notes_in_file").capitalizeFirstLetter()}: ${result.notesCount}',
          onConfirm: () {
            _confirmImportOverwrite(exportProvider);
          },
        );
      },
    );
  }

  Future<void> _confirmImportOverwrite(ExportProvider exportProvider) async {
    final result = await exportProvider.getImportSettings(overwrite: true);
    if (!mounted) return;
    if (result.success) {
      await _refreshImportedData();
    }
    if (!mounted) return;
    _showImportResultDialog(context, result);
  }

  Future<void> _refreshImportedData() async {
    final taskProvider = context.read<TaskProvider>();
    final noteProvider = context.read<NoteProvider>();
    await taskProvider.refreshTasks();
    await noteProvider.getNoteDbList();
    await noteProvider.getNoteBySearchOptions();
  }

  void _showImportResultDialog(BuildContext context, ImportResult result) {
    showDialog(
      context: context,
      builder: (context) {
        final textStyle = _dialogResultTextStyle(context);
        final labelStyle = textStyle?.copyWith(fontWeight: FontWeight.w700);
        return CustomDial(
          title: result.success
              ? 'dialogs_text.success'
              : 'dialogs_text.warning',
          child: Align(
            alignment: Alignment.topLeft,
            child: RichText(
              text: TextSpan(
                style: textStyle,
                children: result.success
                    ? [
                        TextSpan(
                          text:
                              '${context.t("dialogs_text.import_completed").capitalizeFirstLetter()}\n',
                          style: labelStyle,
                        ),
                        _labelSpan(context, 'file_label', labelStyle),
                        TextSpan(text: '${result.fileName ?? ".noti"}\n'),
                        _labelSpan(context, 'tasks_label', labelStyle),
                        TextSpan(text: '${result.tasksCount}\n'),
                        _labelSpan(context, 'notes_label', labelStyle),
                        TextSpan(text: '${result.notesCount}\n'),
                        _labelSpan(context, 'folder_label', labelStyle),
                        TextSpan(text: result.folderPath ?? ""),
                      ]
                    : [
                        TextSpan(
                          text:
                              '${context.t("dialogs_text.import_failed").capitalizeFirstLetter()}\n',
                          style: labelStyle,
                        ),
                        TextSpan(text: result.message),
                      ],
              ),
            ),
          ),
        );
      },
    );
  }

  TextStyle? _dialogResultTextStyle(BuildContext context) {
    final textStyle =
        Theme.of(context).dialogTheme.contentTextStyle ??
        Theme.of(context).textTheme.bodyMedium;
    return textStyle?.copyWith(height: 1.35);
  }

  TextSpan _labelSpan(BuildContext context, String key, TextStyle? labelStyle) {
    return TextSpan(
      text: '${context.t("dialogs_text.$key").capitalizeFirstLetter()}: ',
      style: labelStyle,
    );
  }
}
