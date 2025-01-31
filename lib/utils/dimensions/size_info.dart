import 'package:noti/utils/dimensions/screen_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class SizeInfo {
  final ScreenType? screenType;
  final Size? screenSize;

  SizeInfo({this.screenSize, this.screenType}) {
    initDimensions();
  }

  static int gridColumnCount = 2;

  static double fabSize = 48.0;

  ///padding / margins:
  static double edgePadding = 8.0;
  static double menuTopMargin = 8.0;
  static double pageTopMargin = 12.0;

  static double appBarCollapsedHeight = 70.0;

  ///corner radius
  static double cornerRadius = 15.0;

  ///general - repeat in other widgets:
  static double headerTitleSize = 32;
  static double headerSubtitleSize = 18;
  static double verticalHeaderPadding = 10;
  static double leftEdgeMainPadding = .0;
  static double leftEdgeCreatorPadding = 8.0;
  ///search bar and headers:
  static double searchBarHeight = 40;
  static double searchIconSize = 18;
  static double sliverHeaderHeight = 42;

  static double helpTextSize = 8.0;

  static double topMargin = 24;

  static double switchButtonIconSize = 15;
  static double dialogIconSize = 12;

  ///social bar:
  static double socialIcons = 18;

  ///nav rail dimens:
  static double leadingAndTrailingIconSize = 18;
  static double navSideTitleSize = 18;

  ///task dimens:
  static double taskCardHeight = 72;
  static double taskCardTitle = 12;
  static double taskCardDescription = 12;
  static double taskCreatorTitle = 23;
  static double taskCreatorDescription = 15;

  static double leftEdgePadding = 12;

  static double taskMarginRadius = 8.0;

  static double taskRingLineWidth = 2.5;
  static double taskContentPadding = 0.0;


  ///note dimens:
  static double noteCardImageSize = 50;
  static double noteCardTitle = 12;
  static double noteCardContent = 7.0;
  static double noteLeftPadding = 16;
  static double scaleCard = 0.9;
  static double verticalTextPadding = 12.0;
  static double cameraIconButtonSize = 35;
  static double noteListBottomSpacing = 8.0;
  static double noteGridSpacing = 5.0;

  ///calendar dimens:
  static double calendarDaySize = 12;
  static double smallIndicatorIconSize = 10;
  static double calendarMarkerSize = 12;//15
  static double calendarMarkerFontSize = 8.0;//10
  static double calendarCellMargin = 8.0;
  static double rowHeight = 42;

  ///settings dimens:
  static double settingsCardTitleFontSize = 12;
  static double settingsCardDescriptionFontSize = 10;
  static double settingsCardHeight = 70;

  ///carousel height:
  static double carouselHeight = 4;

  //dialog dimens:
  static double dialogScaleFactor = 1.0;
  static int iconDialogListCrossAxisCount = 4;

  void initDimensions() {
    print('DIMENSIONS INITIALIZED');
    if (screenType == ScreenType.smallMobile) {
    }
    if (screenType == ScreenType.tablet) {
      tabletDimens();
    }
    if (screenType == ScreenType.desktop) {
      tabletDimens();
    }
  }

  void mobileDimens(){
  }

  void tabletDimens() {

    fabSize = 60.0;

    edgePadding = 12.0;
    leftEdgeMainPadding  = 18;
    leftEdgeCreatorPadding = 24.0;

    gridColumnCount = 3;
    calendarDaySize = 23;
    smallIndicatorIconSize = 15;
    menuTopMargin = 32;

    appBarCollapsedHeight = 100.0;

    helpTextSize = 13;

    ///social bar:
    socialIcons = 23;

    ///nav rail:
    leadingAndTrailingIconSize = 24;

    navSideTitleSize = 32;

    ///headers:
    ///
    headerTitleSize = 42;
    headerSubtitleSize = 32;
    verticalHeaderPadding = 16;
    sliverHeaderHeight = 60;

    ///calendar
    rowHeight = 72;
    calendarMarkerSize = 23;
    calendarMarkerFontSize = 15;
    calendarCellMargin = 12;
    switchButtonIconSize = 15.0;

    ///task card:
    taskCardHeight = 132;
    taskCardTitle = 23.0;
    taskCardDescription = 18;
    taskCreatorTitle = 32;
    taskCreatorDescription = 23;
    taskMarginRadius = 16;
    taskRingLineWidth = 5.0;
    taskContentPadding = 5.0;

    ///note card:
    noteCardTitle = 18;
    noteCardContent = 15;
    noteLeftPadding = 27;
    scaleCard = 1;
    verticalTextPadding = 15;
    cameraIconButtonSize = 52;
    noteListBottomSpacing = 24;
    noteGridSpacing = 12.0;

    ///search bar
    searchBarHeight = 72;
    searchIconSize = 32;

    ///settings card:
    settingsCardHeight = 90;
    settingsCardTitleFontSize = 23;
    settingsCardDescriptionFontSize = 18;
    switchButtonIconSize = 30;

    ///carousel:
    carouselHeight = 3;

    //dialog dimns:
    dialogIconSize = 24.0;
    dialogScaleFactor = 1.5;
    iconDialogListCrossAxisCount = 5;
  }
}
