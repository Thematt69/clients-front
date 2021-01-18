import 'package:flutter/material.dart';

import 'package:clients/presentation/core/extensions/color_extensions.dart';
import 'styles.dart';

class XThemeData {
  /// REVIEW Light theme.
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      accentColorBrightness: Brightness.light,
      primaryColorBrightness: Brightness.light,
      //NOTE The background color for major parts of the app (toolbars, tab bars, etc)
      primaryColor: Colors.white.darker(0.5),
      //NOTE color for widget (knobs, text, overscroll edge effect, etc)
      accentColor: kRedXefi.darker(0.2),
      //NOTE The default color of the Material that underlies the Scaffold.
      backgroundColor: Colors.white.darker(0.3),
      //NOTE The default color of MaterialType.canvas Material. like dropdown menu
      canvasColor: Colors.white.darker(0.1),
      //NOTE The color of cursors in Material-style text fields
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: kRedXefi.darker(0.2),
        selectionColor: kRedXefi.darker(0.2),
        selectionHandleColor: kRedXefi.darker(0.2),
      ),
      //NOTE The color used for widgets that are inoperative, regardless of their state.
      // disabledColor: ,
      //NOTE The color of Dividers and PopupMenuDividers, also used between ListTiles
      // dividerColor: ,
      //NOTE The color to use for input validation errors, e.g. in TextField fields
      // errorColor: ,
      //NOTE The focus color used indicate that a component has the input focus.
      focusColor: Colors.white.darker(0.5),
      //NOTE The highlight color used during ink splash animations or to indicate an item in a menu is selected.
      highlightColor: Colors.transparent,
      //NOTE The color to use for hint text or placeholder text, e.g. in TextField fields
      // hintColor: ,
      //NOTE The hover color used to indicate when a pointer is hovering over a component
      // hoverColor: ,
      //NOTE The color of the selected tab indicator in a tab bar
      indicatorColor: Colors.white,
      //NOTE The default color of the Material that underlies the Scaffold
      scaffoldBackgroundColor: Colors.white.darker(0.3),
      //NOTE The color of the header of a PaginatedDataTable when there are selected rows
      // secondaryHeaderColor: ,
      //NOTE The color used to highlight selected rows.
      // selectedRowColor: ,
      //NOTE The color that the Material widget uses to draw elevation shadows
      // shadowColor: Colors.transparent,
      //NOTE The color of ink splashes
      splashColor: Colors.white24,
      //NOTE The color used to highlight the active states of toggleable widgets like Switch, Radio, and Checkbox
      toggleableActiveColor: kRedXefi.darker(0.2),
      //NOTE The color used for widgets in their inactive (but enabled) state
      unselectedWidgetColor: Colors.white.darker(0.45),
      //NOTE The default fill color of the Material used in RaisedButtons
      // buttonColor: ,

      textTheme: TextTheme(
        bodyText1: kTextStyle,
        bodyText2: kTextStyle,
        headline1: kTitleStyle,
        headline2: kTitleTwoStyle,
        headline3: kTitleThreeStyle,
        headline4: kTitleThreeStyle.copyWith(fontSize: 12),
        subtitle1: kTextStyleSub,
        button: kTextStyle,
      ),
      //NOTE The background color of Dialog elements.
      dialogTheme: DialogTheme(
        backgroundColor: Colors.white.darker(0.4),
        contentTextStyle: kTextStyle,
      ),
      cardTheme: CardTheme(
        color: Colors.white.darker(0.2),
        elevation: 4,
      ),
      appBarTheme: AppBarTheme(
        color: Colors.white.darker(0.4),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.white.darker(0.6)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: kTextStyle.copyWith(fontSize: 15, color: Colors.black),
        fillColor: Colors.white.darker(0.1),
        focusColor: Colors.white.darker(0.1),
        hoverColor: Colors.white.darker(0.1),
        counterStyle: kTextStyle,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white.darker(0.1), width: 1),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white.darker(0.1), width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kRedXefi.darker(0.1), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white.darker(0.15), width: 1),
        ),
        prefixStyle: kTextStyle.copyWith(color: Colors.white),
        suffixStyle: kTextStyle.copyWith(color: Colors.white),
        hintStyle: kTextStyle,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
          foregroundColor:
              MaterialStateProperty.all<Color>(Colors.white.darker(0.6)),
          overlayColor: MaterialStateProperty.all<Color>(Colors.white10),
        ),
      ),
      iconTheme: IconThemeData(
        size: 22,
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: Colors.white.darker(0.25),
        selectedIconTheme: IconThemeData(color: kRedXefi.darker(0.1)),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        labelType: NavigationRailLabelType.none,
        selectedLabelTextStyle: kTextStyle,
        unselectedLabelTextStyle: kTextStyle,
        elevation: 4,
        groupAlignment: 0,
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        color: Colors.black,
        elevation: 4,
        // shape:AutomaticNotchedShape() ,
      ),
      bannerTheme: MaterialBannerThemeData(
        backgroundColor: Colors.white.darker(0.3),
        contentTextStyle: kTextStyle,
        // leadingPadding: ,
        // padding: ,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white.darker(0.3),
        elevation: 4,
        selectedIconTheme: IconThemeData(color: kRedXefi.darker(0.2), size: 22),
        selectedItemColor: kRedXefi.darker(0.2),
        unselectedIconTheme: IconThemeData(color: Colors.white, size: 22),
        unselectedItemColor: Colors.white,
        selectedLabelStyle: kTextStyle,
        unselectedLabelStyle: kTextStyle,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.white.darker(0.4),
        splashColor: Colors.white24,
        textTheme: ButtonTextTheme.normal,
        // shape: ,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.white.darker(0.3),
        elevation: 4,
        splashColor: Colors.white24,
        foregroundColor: kRedXefi.darker(0.2),
      ),
      chipTheme: ChipThemeData(
        selectedColor: kRedXefi.darker(0.2),
        disabledColor: Colors.white.darker(0.4),
        brightness: Brightness.dark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.all(4),
        secondarySelectedColor: Colors.white.darker(0.5),
        secondaryLabelStyle: kTextStyle,
        labelStyle: kTextStyle,
        elevation: 4,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white.darker(0.5),
        elevation: 4,
        modalBackgroundColor: Colors.white.darker(0.4),
        modalElevation: 4,
        // shape: ,
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: kRedXefi.darker(0.2),
        activeTickMarkColor: Colors.white.darker(0.2),
        inactiveTrackColor: Colors.white.darker(0.4),
        inactiveTickMarkColor: Colors.white.darker(0.5),
        overlayColor: kRedXefi.darker(0.2),
        thumbColor: kRedXefi.darker(0.2),
        trackHeight: 10,
        valueIndicatorTextStyle: kTextSmallStyle,
      ),
      snackBarTheme: SnackBarThemeData(
        actionTextColor: kTextStyle.color,
        backgroundColor: Colors.white.darker(0.3),
        contentTextStyle: kTextStyle,
        elevation: 4,
        // shape: ,
      ),
      tabBarTheme: TabBarTheme(
        indicator: BoxDecoration(
          color: Colors.white.darker(0.3),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: kTextStyle.color,
        labelStyle: kTextStyle,
        unselectedLabelColor: kTextStyle.color,
        unselectedLabelStyle: kTextStyle,
      ),
      dataTableTheme: DataTableThemeData(
        headingRowHeight: 20,
        headingRowColor: MaterialStateProperty.all(Colors.white.darker(0.5)),
        headingTextStyle: kTitleStyle,
        dataRowColor: MaterialStateProperty.all(Colors.white.darker(0.4)),
        dataTextStyle: kTextStyle,
        columnSpacing: 20,
        dataRowHeight: 50,
        dividerThickness: 3,
      ),
      timePickerTheme: TimePickerThemeData(
        backgroundColor: Colors.white.darker(0.3),
        dayPeriodColor: Colors.white.darker(0.5),
        dayPeriodTextColor: kTextStyle.color,
        dayPeriodTextStyle: kTitleStyle,
        dialBackgroundColor: Colors.white.darker(0.4),
        helpTextStyle: kTextStyle,
        dialTextColor: kTextStyle.color,
        entryModeIconColor: Colors.white,
        hourMinuteColor: Colors.white.darker(0.5),
        hourMinuteTextStyle: kTextStyle,
        hourMinuteTextColor: kTextStyle.color,
      ),
      dividerTheme: DividerThemeData(
        color: Colors.white.darker(0.3),
        endIndent: 5,
        indent: 5,
        space: 5,
        thickness: 5,
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: Colors.white.darker(0.4),
        elevation: 4,
        // shape: ,
        textStyle: kTextStyle,
      ),
      tooltipTheme: TooltipThemeData(
        // height: 30,
        decoration: BoxDecoration(
          color: Colors.white.darker(0.5),
          borderRadius: BorderRadius.circular(20),
        ),
        textStyle: kTextStyle,
        showDuration: Duration(seconds: 2),
      ),
    );
  }

  /// REVIEW Dark theme.
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      accentColorBrightness: Brightness.dark,
      primaryColorBrightness: Brightness.dark,
      //NOTE The background color for major parts of the app (toolbars, tab bars, etc)
      primaryColor: Colors.grey[600],
      //NOTE color for widget (knobs, text, overscroll edge effect, etc)
      accentColor: kRedXefi,
      //NOTE The default color of the Material that underlies the Scaffold.
      backgroundColor: kBackgroundColor,
      //NOTE The default color of MaterialType.canvas Material. like dropdown menu
      canvasColor: kTextFieldBackground,
      //NOTE The color of cursors in Material-style text fields
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: kRedXefi,
        selectionColor: kRedXefi,
        selectionHandleColor: kRedXefi,
      ),
      //NOTE The color used for widgets that are inoperative, regardless of their state.
      // disabledColor: ,
      //NOTE The color of Dividers and PopupMenuDividers, also used between ListTiles
      // dividerColor: ,
      //NOTE The color to use for input validation errors, e.g. in TextField fields
      // errorColor: ,
      //NOTE The focus color used indicate that a component has the input focus.
      focusColor: kBackgroundLogoRightColor,
      //NOTE The highlight color used during ink splash animations or to indicate an item in a menu is selected.
      highlightColor: Colors.transparent,
      //NOTE The color to use for hint text or placeholder text, e.g. in TextField fields
      // hintColor: ,
      //NOTE The hover color used to indicate when a pointer is hovering over a component
      // hoverColor: ,
      //NOTE The color of the selected tab indicator in a tab bar
      indicatorColor: Colors.white,
      //NOTE The default color of the Material that underlies the Scaffold
      scaffoldBackgroundColor: kBackgroundColor,
      //NOTE The color of the header of a PaginatedDataTable when there are selected rows
      // secondaryHeaderColor: ,
      //NOTE The color used to highlight selected rows.
      // selectedRowColor: ,
      //NOTE The color that the Material widget uses to draw elevation shadows
      // shadowColor: Colors.transparent,
      //NOTE The color of ink splashes
      splashColor: Colors.white24,
      //NOTE The color used to highlight the active states of toggleable widgets like Switch, Radio, and Checkbox
      toggleableActiveColor: kRedXefi,
      //NOTE The color used for widgets in their inactive (but enabled) state
      unselectedWidgetColor: kDarkGrey,
      //NOTE The default fill color of the Material used in RaisedButtons
      // buttonColor: ,

      textTheme: TextTheme(
        bodyText1: kTextStyle,
        bodyText2: kTextStyle,
        headline1: kTitleStyle,
        headline2: kTitleTwoStyle,
        headline3: kTitleThreeStyle,
        headline4: kTitleThreeStyle.copyWith(fontSize: 12),
        subtitle1: kTextStyleSub,
        button: kTextStyle,
      ),
      //NOTE The background color of Dialog elements.
      dialogTheme: DialogTheme(
        backgroundColor: kBackgroundLogoLeftColor,
        contentTextStyle: kTextStyle,
      ),
      cardTheme: CardTheme(
        color: kBackgroundColor,
        elevation: 4,
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        color: Colors.black,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(kPrimarySwatchDark),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: kTextStyle.copyWith(fontSize: 15, color: Colors.white),
        fillColor: kTextFieldBackground,
        focusColor: kTextFieldBackground,
        hoverColor: kTextFieldBackground,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kBackgroundColor, width: 1),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: kBackgroundColor, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kRedXefi, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kBackgroundColor, width: 1),
        ),
        prefixStyle: kTextStyle.copyWith(color: Colors.white.withOpacity(0.5)),
        suffixStyle: kTextStyle.copyWith(color: Colors.white.withOpacity(0.5)),
        hintStyle: kTextStyle,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          overlayColor: MaterialStateProperty.all<Color>(Colors.white10),
        ),
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 22,
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: kBackgroundColor,
        selectedIconTheme: IconThemeData(color: kRedXefi),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        labelType: NavigationRailLabelType.none,
        selectedLabelTextStyle: kTextStyle,
        unselectedLabelTextStyle: kTextStyle,
        elevation: 4,
        groupAlignment: 0,
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        color: Colors.black,
        elevation: 4,
        // shape:AutomaticNotchedShape() ,
      ),
      bannerTheme: MaterialBannerThemeData(
        backgroundColor: kBackgroundColor,
        contentTextStyle: kTextStyle,
        // leadingPadding: ,
        // padding: ,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: kBackgroundColor,
        elevation: 4,
        selectedIconTheme: IconThemeData(color: kRedXefi, size: 22),
        selectedItemColor: kRedXefi,
        unselectedIconTheme: IconThemeData(color: Colors.white, size: 22),
        unselectedItemColor: Colors.white,
        selectedLabelStyle: kTextStyle,
        unselectedLabelStyle: kTextStyle,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: kBackgroundLogoLeftColor,
        splashColor: Colors.white24,
        textTheme: ButtonTextTheme.normal,
        // shape: ,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: kBackgroundColor,
        elevation: 4,
        splashColor: Colors.white24,
        foregroundColor: kRedXefi,
      ),
      chipTheme: ChipThemeData(
        selectedColor: kRedXefi,
        disabledColor: kBackgroundLogoLeftColor,
        brightness: Brightness.dark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.all(4),
        secondarySelectedColor: kBackgroundLogoRightColor,
        secondaryLabelStyle: kTextStyle,
        labelStyle: kTextStyle,
        elevation: 4,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: kBackgroundLogoRightColor,
        elevation: 4,
        modalBackgroundColor: kBackgroundLogoLeftColor,
        modalElevation: 4,
        // shape: ,
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: kRedXefi,
        activeTickMarkColor: kTextFieldBackground,
        inactiveTrackColor: kBackgroundLogoLeftColor,
        inactiveTickMarkColor: kBackgroundLogoRightColor,
        overlayColor: kRedXefi,
        thumbColor: kRedXefi,
        trackHeight: 10,
        valueIndicatorTextStyle: kTextSmallStyle,
      ),
      snackBarTheme: SnackBarThemeData(
        actionTextColor: kTextStyle.color,
        backgroundColor: kBackgroundColor,
        contentTextStyle: kTextStyle,
        elevation: 4,
        // shape: ,
      ),
      tabBarTheme: TabBarTheme(
        labelPadding: EdgeInsets.all(8),
        indicator: BoxDecoration(
          color: kBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 6,
              spreadRadius: 3,
              offset: Offset(0, 5),
            ),
          ],
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: kTextStyle.color,
        labelStyle: kTextStyle,
        unselectedLabelColor: kTextStyle.color,
        unselectedLabelStyle: kTextStyle,
      ),
      dataTableTheme: DataTableThemeData(
        headingRowHeight: 20,
        headingRowColor: MaterialStateProperty.all(kBackgroundLogoRightColor),
        headingTextStyle: kTitleStyle,
        dataRowColor: MaterialStateProperty.all(kBackgroundLogoLeftColor),
        dataTextStyle: kTextStyle,
        columnSpacing: 20,
        dataRowHeight: 50,
        dividerThickness: 3,
      ),
      timePickerTheme: TimePickerThemeData(
        backgroundColor: kBackgroundColor,
        dayPeriodColor: kBackgroundLogoRightColor,
        dayPeriodTextColor: kTextStyle.color,
        dayPeriodTextStyle: kTitleStyle,
        dialBackgroundColor: kBackgroundLogoLeftColor,
        helpTextStyle: kTextStyle,
        dialTextColor: kTextStyle.color,
        entryModeIconColor: Colors.white,
        hourMinuteColor: kBackgroundLogoRightColor,
        hourMinuteTextStyle: kTextStyle,
        hourMinuteTextColor: kTextStyle.color,
      ),
      dividerTheme: DividerThemeData(
        color: kBackgroundColor,
        endIndent: 5,
        indent: 5,
        space: 5,
        thickness: 5,
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: kBackgroundLogoLeftColor,
        elevation: 4,
        // shape: ,
        textStyle: kTextStyle,
      ),
      tooltipTheme: TooltipThemeData(
        // height: 30,
        decoration: BoxDecoration(
          color: kBackgroundLogoRightColor,
          borderRadius: BorderRadius.circular(20),
        ),
        textStyle: kTextStyle,
        showDuration: Duration(seconds: 2),
      ),
    );
  }
}
