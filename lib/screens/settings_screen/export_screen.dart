import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:noti/utils/extensions/string_extension.dart';
import 'package:noti/utils/internationalization/i18_extension.dart';

import '../../utils/dimensions/size_info.dart';
import '../../widgets/headers/sliver_header.dart';
import '../../widgets/headers/small_header.dart';
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


  TextEditingController titleVal = TextEditingController();
  FocusNode titleNode = FocusNode();
  bool? editTextEnable;
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

    return CustomScrollView(
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
                        child:  SmallHeader(
                            title:context.t("headers_text.header_export_title").capitalizeFirstLetter()
                          // title: 'Shapes',
                        ))),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.only(left: edgePadding),
                    child: TextField(
                      maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
                      contextMenuBuilder: (context, editableTextState) {
                        return CustomTextSelectionToolbar(
                            key: widget.key, editableTextState: editableTextState);
                      },
                      cursorWidth: 1,
                      focusNode: titleNode,
                      maxLines: null,
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
                        helperText: context.t("creators_text.helper_title").capitalizeFirstLetter(),
                        // helperText: 'Enter title',
                        helperStyle: Theme.of(context)
                            .inputDecorationTheme
                            .helperStyle!
                            .copyWith(fontSize: helpTextFontSize),
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
                        child:  SmallHeader(
                            title:context.t("headers_text.header_import_title").capitalizeFirstLetter()
                          // title: 'Shapes',
                        ))),
              ),
            ],

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
}
