import 'package:flutter/widgets.dart';

class SearchProvider extends ChangeNotifier{

  SearchProvider(){
    _initialize();
  }

  void _initialize(){
    focDay = DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day);
    selDay = DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day);
    startDate = DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day);
    endDate = DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day);

    searchFocusNode.addListener(() {
      editTextEnable = searchFocusNode.hasFocus;
      notifyListeners();
    });
  }


  late DateTime focDay;
  late DateTime selDay;

  String keyword = "";
  late DateTime startDate;
  late DateTime endDate;
  bool isDone = false;
  int priority = -1;

  bool editTextEnable = false;
  TextEditingController searchInputController = TextEditingController();
  late FocusNode searchFocusNode = FocusNode();

  bool isExpanded = false;
  bool isCalendarExpanded = true;
  bool isActionsExpanded = true;

  bool isDateScopeSelected = true;

  void onTextChange(String newText){
    keyword = newText;
    searchInputController.selection = TextSelection.fromPosition(
        TextPosition(offset: searchInputController.text.length));
  }

    void onExpanded(int section){
      switch (section){
        case 0:
          isExpanded = !isExpanded;
          break;
        case 1:
          isCalendarExpanded = !isCalendarExpanded;
          break;
        case 2:
          isActionsExpanded = !isActionsExpanded;
          break;

        default: 0;
      }
      notifyListeners();
    }

    void editText() {
    if (!editTextEnable) {
      editTextEnable = true;
      searchFocusNode.requestFocus();
    } else {
      editTextEnable = false;
      searchFocusNode.unfocus();
    }
    notifyListeners();
  }

    void onScopeDateSelected(DateTime startDate, DateTime endDate){
      if(isDateScopeSelected){
        // noteProvider startDate
        startDate = selDay;
      }else{
        // noteProvider endDate
        endDate = selDay;
      }
  }

    List<DateTime> getCalendarDates(DateTime date) {

    return [];
  }
  void onButtonMonthChange(String operator){
    if(operator == "+"){
      focDay = DateTime(focDay.year, focDay.month + 1, focDay.day);
    }else{
      focDay = DateTime(focDay.year, focDay.month - 1, focDay.day);
    }
    notifyListeners();
  }

  void onButtonSelected(){
    isDateScopeSelected = !isDateScopeSelected;
    notifyListeners();
  }

  void onDaySelected(selectedDay, focusedDay){

      selDay = selectedDay;
      focDay = focusedDay;
      if (isDateScopeSelected) {
        startDate = selectedDay;
      } else {
        endDate = selectedDay;
      }
      notifyListeners();
  }

  void onMonthChange(focusedDay){
    focDay = focusedDay;
    notifyListeners();
  }

  void setRating(double rating){
    priority = rating.toInt();
    notifyListeners();
  }

  void onCheckIsDone(bool isTaskDone){
    isDone = isTaskDone;
    notifyListeners();
  }

  void getFullMonth(){

    startDate = DateTime(focDay.year, focDay.month, 1);
    endDate = DateTime(focDay.year, focDay.month + 1, 1).subtract(Duration(days: 1));

    notifyListeners();
  }

  void resetSearchFilters(){

    keyword = "";
    searchInputController.text = keyword;
    startDate = DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day);
    endDate = DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day);
    isDone = false;
    priority = -1;

    notifyListeners();
  }


  @override
  void dispose() {
    searchInputController.dispose();
    super.dispose();
  }

}