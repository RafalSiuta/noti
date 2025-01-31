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
        int sliderVal = sets.sliderValue!.floor();
        return Padding(
          padding:
              EdgeInsets.symmetric(vertical: paddingVertical, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Months: ${sliderVal.toStringAsFixed(0)}",
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontSize: sliderValueFontSize,
                    fontWeight: FontWeight.w700,
                    height: 2.0,
                    wordSpacing: 3),
              ),
              Slider(
                  min: 0,
                  max: 12,
                  value: sliderVal.toDouble(),
                  onChanged: (value) {
                    settingsProvider.onSliderChange(value, index);
                  }),
              RichText(
                  textAlign: TextAlign.center,
        
                  text: TextSpan(
                    text: "This setting delete data after\n",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: sliderValueFontSize),
                    children: <TextSpan>[
                      TextSpan(
        
                        text: "${sliderVal.toStringAsFixed(0)} months.\n\n"
                      ),
                      TextSpan(
                          text: "Are You sure?",
                          style: Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: sliderValueFontSize),
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 2.0),
                      child: Text("cancel",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                fontSize: sliderValueFontSize,
                              )),
                    ),
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 2.0),
                      child: Text("confirm",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                fontSize: sliderValueFontSize,
                              )),
                    ),
                    onPressed: () async {
                      if (index == 0) {
                        noteProvider.loadNoteListBySettingsValues(
                            sliderVal.floor(), true);
                      } else if (index == 1) {
                        taskProvider.loadTaskListFromSettings(
                            sliderVal.floor(), true);
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
