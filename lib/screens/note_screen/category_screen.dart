import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../models/db_model/category.dart';
import '../../models/db_model/note.dart';
import '../../providers/category_provider.dart';
import '../../utils/dimensions/size_info.dart';

class NoteCategoryScreen extends StatefulWidget {
  const NoteCategoryScreen({super.key, required this.newNote});

  final Note newNote;

  @override
  State<NoteCategoryScreen> createState() => _NoteCategoryScreenState();
}

class _NoteCategoryScreenState extends State<NoteCategoryScreen> {
  TextEditingController categoryNameVal = TextEditingController();
  bool editTextEnable = false;
  var decoration = TextDecoration.none;

  int noteCategory = 0;

  void editText() {
    setState(() {
      editTextEnable = !editTextEnable;
    });
  }

  void clearHint() {
    setState(() {
      categoryNameVal.text = '';
    });
  }

  void selectedDecoration(int index) {
    setState(() {
      widget.newNote.fk = index;
      noteCategory = index;
    });
  }

  @override
  void initState() {
    categoryNameVal.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NoteCategoryProvider>(
      builder: (context, noteCategoryProvider, child) {
        var titleTextSize = SizeInfo.headerSubtitleSize;
        var helperTextSize = SizeInfo.helpTextSize;
        return Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: noteCategoryProvider.noteCategoryListCounter,
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemBuilder: (context, index) {
                  final categories = noteCategoryProvider.categoryList[index];
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 8.0, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                            child: Text(categories.name!,
                                textAlign: TextAlign.start,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(decoration: decoration)),
                            style: TextButton.styleFrom(
                                alignment: Alignment.centerLeft),
                            onPressed: () {
                              setState(() {
                                selectedDecoration(index);
                              });
                            }),
                        const Expanded(
                          child: SizedBox(
                            width: 20,
                          ),
                        ),
                        IconButton(
                            alignment: Alignment.center,
                            onPressed: () {
                              noteCategoryProvider.deleteCategory(categories);
                            },
                            icon: const Icon(
                              Icons.delete,
                              size: 18,
                            ))
                      ],
                    ),
                  );
                }),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 8.0, top: 15),
              child: SizedBox(
                key: widget.key,
                height: 40,
                child: GestureDetector(
                  onTap: () {
                    editText();
                  },
                  child: TextField(
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    cursorWidth: 1,
                    maxLines: 1,
                    maxLength: 25,
                    textInputAction: TextInputAction.done,
                    onSubmitted: (val) {
                      noteCategoryProvider.addCategory(
                          NoteCategory(name: categoryNameVal.text));
                      editText();
                      clearHint();
                    },
                    keyboardType: TextInputType.text,
                    enabled: editTextEnable,
                    onChanged: (newText) {
                      setState(() {
                        categoryNameVal.text = newText;
                        categoryNameVal.selection = TextSelection.fromPosition(
                            TextPosition(offset: categoryNameVal.text.length));
                      });
                    },
                    cursorColor: Theme.of(context).textTheme.labelMedium!.color,
                    controller: categoryNameVal,
                    autofocus: false,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(fontSize: titleTextSize),
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        hintText: 'Add category',
                        helperText: '',
                        hintStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 12, letterSpacing: 1),
                        suffixIcon: IconButton(
                          splashColor: Colors.transparent,
                          onPressed: () {
                            noteCategoryProvider.addCategory(
                                NoteCategory(name: categoryNameVal.text));
                            editText();
                            clearHint();
                          },
                          icon: Icon(
                            Icons.add,
                            size: titleTextSize,
                            color: Theme.of(context).iconTheme.color,
                          ),
                        )),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
