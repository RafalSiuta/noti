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
import '../../widgets/dialogs/export_password_dialog.dart';
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
  bool _isSharing = false;
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
                    cursorColor: Theme.of(context).indicatorColor,
                    controller: titleVal,
                    autofocus: false,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: SizeInfo.settingsCardTitleFontSize,
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
                    final isPasswordOption =
                        exportsSettings.title == 'protect_export';

                    return SettingsCard(
                      title: exportsSettings.title!,
                      description: exportsSettings.description!,
                      child: SwitchBtn(
                        value: isPasswordOption
                            ? exportProvider.protectExport
                            : exportsSettings.isOn!,
                        onChanged: (value) {
                          if (isPasswordOption) {
                            exportProvider.setProtectExport(value);
                          } else {
                            exportProvider.onExportSettingsChange(
                              exportsSettings,
                            );
                          }
                        },
                      ),
                    );
                  },
                ),
                Padding(
                  padding:EdgeInsets.all(SizeInfo.edgePadding),
                  child: RowBuilder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return ExportButton(
                        isExporting: index == 1 ? _isSharing : _isExporting,
                        textKey: index == 1
                            ? 'buttons_text.share_button'
                            : 'buttons_text.export_button',
                        iconData: index == 1 ? Icons.share : Icons.file_upload,
                        onPress: index == 1
                            ? (_isSharing
                                  ? null
                                  : () => _runShare(exportProvider))
                            : (_isExporting
                                  ? null
                                  : () => _runExport(exportProvider)),
                      );
                    },
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

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
                ColumnBuilder(
                  itemBuilder: (context, index) {
                    return SettingsCard(
                      title: "import_import_file_title",
                      description: "import_description",
                      child: IconButton(
                        onPressed: _isImporting
                            ? null
                            : () => _runImport(exportProvider),
                        icon: _isImporting
                            ? const SizedBox(
                                width: 24,
                                height: 24,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              )
                            : Icon(
                                Icons.file_download,
                                size: SizeInfo.switchButtonIconSize,
                                color: Theme.of(
                                  context,
                                ).textTheme.headlineMedium!.color,
                              ),
                      ),
                    );
                  },
                  itemCount: 1,
                ),
              ]),
            ),
          ],
        );
      },
    );
  }

  Future<void> _runShare(ExportProvider exportProvider) async {
    if (_isSharing) return;
    setState(() => _isSharing = true);
    try {
      final isProtected = exportProvider.protectExport;
      final password = isProtected ? await _askPassword() : null;
      if (!mounted || (isProtected && password == null)) return;
      await exportProvider.shareExportSettings(
        fileName: titleVal.text,
        sharePositionOrigin: _sharePositionOrigin(),
        password: password,
      );
    } finally {
      if (mounted) setState(() => _isSharing = false);
    }
  }

  Future<void> _runExport(ExportProvider exportProvider) async {
    if (_isExporting) return;
    setState(() => _isExporting = true);
    try {
      final isProtected = exportProvider.protectExport;
      final password = isProtected ? await _askPassword() : null;
      if (!mounted || (isProtected && password == null)) return;
      final exportResult = await exportProvider.getExportSettings(
        fileName: titleVal.text,
        password: password,
      );
      if (!mounted) return;
      if (exportResult != null) {
        _showExportSuccessDialog(context, exportResult);
      }
    } finally {
      if (mounted) setState(() => _isExporting = false);
    }
  }

  Future<String?> _askPassword({
    bool forImport = false,
    bool invalidPassword = false,
  }) {
    return showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (_) => ExportPasswordDialog(
        forImport: forImport,
        invalidPassword: invalidPassword,
      ),
    );
  }

  Future<void> _runImport(ExportProvider exportProvider) async {
    setState(() => _isImporting = true);
    try {
      var result = await exportProvider.getImportSettings();
      while (mounted && result.needsPassword) {
        final password = await _askPassword(
          forImport: true,
          invalidPassword: result.message == 'invalid_password',
        );
        if (password == null) {
          exportProvider.cancelPendingImport();
          return;
        }
        result = await exportProvider.getImportSettings(password: password);
      }
      if (!mounted || result.cancelled) return;
      if (result.needsOverwrite) {
        _showImportOverwriteDialog(context, exportProvider, result);
      } else {
        if (result.success) {
          await _refreshImportedData();
        }
        if (!mounted) return;
        _showImportResultDialog(context, result);
      }
    } finally {
      if (mounted) setState(() => _isImporting = false);
    }
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
          child: Padding(
            padding: EdgeInsets.all(SizeInfo.edgePadding),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
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
                const SizedBox(height: 8),
                ExportButton(
                  textKey: 'buttons_text.open_folder',
                  iconData: Icons.folder_open,
                  onPress: () async {
                    final exportProvider = context.read<ExportProvider>();
                    Navigator.of(context).pop();
                    final opened = await exportProvider.openExportFolder(
                      result.file,
                    );
                    if (!opened && mounted) {
                      ScaffoldMessenger.of(this.context).showSnackBar(
                        SnackBar(
                          content: Text(
                            this.context
                                .t('dialogs_text.open_folder_failed')
                                .capitalizeFirstLetter(),
                          ),
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Rect? _sharePositionOrigin() {
    final box = context.findRenderObject() as RenderBox?;
    if (box == null) return null;
    return box.localToGlobal(Offset.zero) & box.size;
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
