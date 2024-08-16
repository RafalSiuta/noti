import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/note_provider.dart';
import '../../providers/settings_provider.dart';
import '../../providers/task_provider.dart';
import '../../utils/dimensions/size_info.dart';

class SliderDialog extends StatelessWidget {
  const SliderDialog({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    var sliderValueFontSize = SizeInfo.settingsCardTitleFontSize;
    var paddingVertical = SizeInfo.menuTopMargin;
    return Consumer3<SettingsProvider, TaskProvider, NoteProvider>(
      builder: (context, settingsProvider, taskProvider, noteProvider, child) {
        final sets = settingsProvider.trashSets.trashSettings[index];
        return Padding(
          padding:
              EdgeInsets.symmetric(vertical: paddingVertical, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Months: ${sets.sliderValue!.toStringAsFixed(0)}",
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontSize: sliderValueFontSize,
                    fontWeight: FontWeight.w700,
                    height: 2.0,
                    wordSpacing: 3),
              ),
              Slider(
                  min: 0,
                  max: 12,
                  value: sets.sliderValue!,
                  onChanged: (value) {
                    settingsProvider.onSliderChange(value, index);
                  }),
              RichText(
                  textAlign: TextAlign.center,

                  text: TextSpan(
                    text: "This setting keeps data for the last\n",
                    style: Theme.of(context).textTheme.bodyMedium,
                    children: <TextSpan>[
                      TextSpan(

                        text: "${sets.sliderValue!.toStringAsFixed(0)} months.\n\n"
                      ),
                      TextSpan(
                          text: "Are You sure?",
                          style: Theme.of(context).textTheme.displayLarge,
                      )
                    ]
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    style: Theme.of(context).datePickerTheme.cancelButtonStyle!,
                    child: Text("cancel",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: sliderValueFontSize,
                            )),
                    onPressed: () {
                      Navigator.pop(context);
                      settingsProvider.cancelDeleteSettings(index);
                      if (index == 0) {
                        noteProvider.loadNoteListBySettingsValues(0, false);
                      } else {
                        taskProvider.loadTaskListFromSettings(0, false);
                      }
                    },
                  ),
                  TextButton(
                    style: Theme.of(context).datePickerTheme.confirmButtonStyle!,
                    child: Text("confirm",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: sliderValueFontSize,
                            )),
                    onPressed: () async {
                      if (index == 0) {
                        noteProvider.loadNoteListBySettingsValues(
                            sets.sliderValue!.floor(), true);
                      } else if (index == 1) {
                        taskProvider.loadTaskListFromSettings(
                            sets.sliderValue!.floor(), true);
                      }
                      Navigator.pop(context);
                    },
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
