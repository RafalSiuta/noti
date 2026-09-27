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

  static double edgePadding = 8.0;
  static double menuTopMargin = 8.0;
  static double pageTopMargin = 12.0;

  static double appBarCollapsedHeight = 70.0;

  static double cornerRadius = 15.0;
  static double buttonCornerRadius = 5.0;
  static double outherCardCornerRadius = 8.0;
  static double innerCardCornerRadius = 6.0;

  static double headerTitleSize = 32;
  static double headerSubtitleSize = 18;
  static double verticalHeaderPadding = 10;
  static double leftEdgeMainPadding = .0;
  static double leftEdgeCreatorPadding = 8.0;

  static double searchBarHeight = 40;
  static double searchIconSize = 18;
  static double sliverHeaderHeight = 42;
  static double sliverLargeHeaderHeight = 70;
  static double sliverCalendarHeaderHeight = 95;

  static double helpTextSize = 8.0;

  static double topMargin = 24;

  static double switchButtonIconSize = 15;
  static double dialogIconSize = 12;

  static double socialIcons = 18;

  static double leadingAndTrailingIconSize = 16;
  static double navSideTitleSize = 18;

  static double taskCardHeight = 82;
  static double taskCardTitle = 12;
  static double taskCardDescription = 12;
  static double taskCreatorTitle = 23;
  static double taskCreatorDescription = 15;

  static double leftEdgePadding = 12;

  static double taskMarginRadius = 8.0;

  static double taskRingLineWidth = 2.5;
  static double taskContentPadding = 0.0;

  static double taskCardContentPadding = 10.0;
  static double cardInnerPadding = 6.0;
  static double toogleButtonSide = 28.0;

  static double noteCardImageSize = 50;
  static double noteCardTitle = 12;
  static double noteCardContent = 8.0;
  static double noteLeftPadding = 16;
  static double scaleCard = 0.9;
  static double verticalTextPadding = 12.0;
  static double cameraIconButtonSize = 35;
  static double noteListBottomSpacing = 8.0;
  static double noteGridSpacing = 5.0;

  static double calendarDaySize = 12;
  static double smallIndicatorIconSize = 10;
  static double calendarMarkerSize = 12;
  static double calendarMarkerFontSize = 8.0;
  static double calendarCellMargin = 8.0;
  static double rowHeight = 42;

  static double settingsCardTitleFontSize = 12;
  static double settingsCardDescriptionFontSize = 10;
  static double settingsCardHeight = 70;

  static double carouselHeight = 4;

  static double dialogScaleFactor = 1.0;
  static int iconDialogListCrossAxisCount = 4;

  void initDimensions() {
    if (screenType == ScreenType.smallMobile) {}
    if (screenType == ScreenType.tablet) {
      tabletDimens();
    }
    if (screenType == ScreenType.desktop) {
      tabletDimens();
    }
  }

  void mobileDimens() {}

  void tabletDimens() {
    fabSize = 60.0;

    edgePadding = 12.0;
    leftEdgeMainPadding = 18;
    leftEdgeCreatorPadding = 24.0;

    gridColumnCount = 3;
    calendarDaySize = 23;
    smallIndicatorIconSize = 12;
    menuTopMargin = 32;

    appBarCollapsedHeight = 100.0;

    helpTextSize = 13;

    buttonCornerRadius = 10.0;

    socialIcons = 23;

    leadingAndTrailingIconSize = 24;

    navSideTitleSize = 32;

    headerTitleSize = 38;
    headerSubtitleSize = 28;
    verticalHeaderPadding = 16;
    sliverHeaderHeight = 70;
    sliverLargeHeaderHeight = 120;
    sliverCalendarHeaderHeight = 160;

    rowHeight = 72;
    calendarMarkerSize = 23;
    calendarMarkerFontSize = 12;
    calendarCellMargin = 12;
    switchButtonIconSize = 8.0;

    taskCardHeight = 132;
    taskCardTitle = 18.0;
    taskCardDescription = 14;
    taskCreatorTitle = 32;
    taskCreatorDescription = 18;
    taskMarginRadius = 16;
    taskRingLineWidth = 5.0;
    taskContentPadding = 5.0;
    toogleButtonSide = 36.0;

    taskCardContentPadding = 12.0;
    cardInnerPadding = 10.0;

    noteCardTitle = 18;
    noteCardContent = 15;
    noteLeftPadding = 27;
    scaleCard = 1;
    verticalTextPadding = 15;
    cameraIconButtonSize = 52;
    noteListBottomSpacing = 24;
    noteGridSpacing = 12.0;

    searchBarHeight = 72;
    searchIconSize = 32;

    settingsCardHeight = 90;
    settingsCardTitleFontSize = 18;
    settingsCardDescriptionFontSize = 14;
    switchButtonIconSize = 30;

    carouselHeight = 3;

    dialogIconSize = 24.0;
    dialogScaleFactor = 1.5;
    iconDialogListCrossAxisCount = 5;
  }
}
