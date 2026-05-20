import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:noti/providers/export_provider/export_provider.dart';
import 'package:noti/providers/note_provider/note_provider.dart';
import 'package:noti/providers/task_provider/task_provider.dart';
import 'package:noti/utils/extensions/string_extension.dart';
import 'package:noti/utils/internationalization/i18_extension.dart';
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
                      exportProvider.exportSets.exportSettingsListCounter,
                  itemBuilder: (context, index) {
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextButton(
                    // style: ButtonStyle(
                    //   backgroundColor: WidgetStatePropertyAll(Theme.of(context).indicatorColor)
                    // ),
                    onPressed: _isExporting
                        ? null
                        : () async {
                            setState(() {
                              _isExporting = true;
                            });
                            final exportResult = await exportProvider
                                .getExportSettings(fileName: titleVal.text);
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
                    child: _isExporting
                        ? const SizedBox(
                            width: 100,
                            height: 100,
                            child: Center(
                              child: SizedBox(
                                width: 32,
                                height: 32,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              ),
                            ),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 8.0,
                            children: [
                              Text(
                                context
                                    .t("buttons_text.export_button")
                                    .capitalizeFirstLetter(),
                              ),
                              Icon(
                                Icons.file_upload,
                                color: Theme.of(
                                  context,
                                ).textTheme.headlineMedium!.color,
                              ),
                            ],
                          ),
                  ),
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
                ),
              ]),
            ),
          ],
        );
      },
    );

    //   Padding(
    //   padding:  EdgeInsets.symmetric(horizontal: sidePadding, vertical: topMargin),
    //   child: Column(
    //     children: [
    //
    //     ],
    //   ),
    //
    // );
  }

  void _showExportSuccessDialog(BuildContext context, ExportResult result) {
    showDialog(
      context: context,
      builder: (context) {
        final textStyle = Theme.of(context).dialogTheme.contentTextStyle;
        final labelStyle = textStyle?.copyWith(fontWeight: FontWeight.w700);
        final fileName = result.file.path.split(RegExp(r'[\\/]')).last;
        return CustomDial(
          title: 'dialogs_text.success',
          child: SingleChildScrollView(
            child: RichText(
              text: TextSpan(
                style: textStyle,
                children: [
                  TextSpan(text: 'Eksport zakończony\n', style: labelStyle),
                  TextSpan(text: 'Plik: ', style: labelStyle),
                  TextSpan(text: '$fileName\n'),
                  TextSpan(text: 'Zadania: ', style: labelStyle),
                  TextSpan(text: '${result.tasksCount}\n'),
                  TextSpan(text: 'Notatki: ', style: labelStyle),
                  TextSpan(text: '${result.notesCount}\n'),
                  TextSpan(text: 'Folder: ', style: labelStyle),
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
              'Plik ${result.fileName ?? ""} zawiera rekordy o ID, które już istnieją lokalnie.\n\n'
              'Potwierdzenie usunie lokalne dane wybranego typu i wczyta dane z pliku.\n'
              'Zadania w pliku: ${result.tasksCount}\n'
              'Notatki w pliku: ${result.notesCount}',
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
        return CustomDial(
          title: result.success
              ? 'dialogs_text.success'
              : 'dialogs_text.warning',
          child: SingleChildScrollView(
            child: Text(
              result.success
                  ? 'Zaimportowano ${result.fileName ?? "plik .noti"}\nZadania: ${result.tasksCount}\nNotatki: ${result.notesCount}\nFolder:\n${result.folderPath ?? ""}'
                  : result.message,
              style: Theme.of(context).dialogTheme.contentTextStyle,
            ),
          ),
        );
      },
    );
  }
}
