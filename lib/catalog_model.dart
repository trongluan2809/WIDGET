import 'package:flutter/cupertino.dart';
import 'package:widget_of_the_week/base_stless.dart';
import 'package:widget_of_the_week/screen/duongvv/animated_widget.dart';
import 'package:widget_of_the_week/screen/duongvv/checkBoxList.dart';
import 'package:widget_of_the_week/screen/duongvv/list_wheel_scroll_view.dart';
import 'package:widget_of_the_week/screen/duongvv/padding.dart';
import 'package:widget_of_the_week/screen/duongvv/snack_bar.dart';
import 'package:widget_of_the_week/screen/phucbv/InteractiveViewer.dart';
import 'package:widget_of_the_week/screen/quannna/toggle_button.dart';
import 'package:widget_of_the_week/screen/thangdv/future_builder_widget.dart';
import 'package:widget_of_the_week/screen/thangdv/opacity_widget.dart';
import 'package:widget_of_the_week/screen/hailm/animated_padding.dart';
import 'package:widget_of_the_week/screen/hailm/animated_positioned.dart';
import 'package:widget_of_the_week/screen/hailm/animated_switcher.dart';
import 'package:widget_of_the_week/screen/hailm/indexed_stack.dart';
import 'package:widget_of_the_week/screen/thangld/container.dart';
import 'package:widget_of_the_week/screen/thangld/listview_listTile.dart';
import 'package:widget_of_the_week/screen/hailm/rich_text.dart';
import 'package:widget_of_the_week/screen/haivn/DrawerWidget.dart';
import 'package:widget_of_the_week/screen/haivn/TabBarWidget.dart';
import 'package:widget_of_the_week/screen/haivn/clip_oval.dart';
import 'package:widget_of_the_week/screen/haivn/cupertino_activity_indicator.dart';
import 'package:widget_of_the_week/screen/haivn/ignore_pointer.dart';
import 'package:widget_of_the_week/screen/phucbv/CircularProgressIndicator.dart';
import 'package:widget_of_the_week/screen/phucbv/ClipPath.dart';
import 'package:widget_of_the_week/screen/phucbv/Divider.dart';
import 'package:widget_of_the_week/screen/phucbv/sqflite/Sqflite.dart';
import 'package:widget_of_the_week/screen/safe_area.dart';
import 'package:widget_of_the_week/screen/thangld/animated_opactity.dart';
import 'package:widget_of_the_week/screen/thangld/fractionally_sized_box.dart';
import 'package:widget_of_the_week/screen/toannt/AboutDialog.dart';
import 'package:widget_of_the_week/screen/toannt/Url_Launcher.dart';
import 'package:widget_of_the_week/screen/toannt/package_animations.dart';
import 'package:widget_of_the_week/screen/toannt/package_slidable.dart';
import 'package:widget_of_the_week/screen/toannt/rotatedBox.dart';
import 'minhnv/animated_icon.dart';
import 'minhnv/inherited_widget.dart';
import 'minhnv/spacer.dart';
import 'screen/quannna/color_filter.dart';
import 'screen/toannt/Builder.dart';
import 'screen/toannt/NotificationListener.dart';
import 'screen/toannt/SharderMask.dart';

class CatalogModel {
  String widgetName;
  Widget goToScreen;

  CatalogModel({required this.widgetName, required this.goToScreen}) {
    if (goToScreen is BaseStateless) {
      (goToScreen as BaseStateless).widgetName = widgetName;
    }
  }

  /// Team Hải Captain
  static List<CatalogModel> teamHaiLM() {
    return [
      CatalogModel(widgetName: "Spacer", goToScreen: SpacerSample()),
      CatalogModel(
          widgetName: "InheritedWidget", goToScreen: InheritedWidgetSample()),

      // Video 42 to 50
      CatalogModel(widgetName: "RichText", goToScreen: RichTextWg()),
      CatalogModel(
          widgetName: "Animated padding", goToScreen: AnimatedPaddingWg()),
      CatalogModel(
          widgetName: "Animated positioned",
          goToScreen: AnimatedPositionedWg()),
      CatalogModel(
          widgetName: "Animated Switcher", goToScreen: AnimatedSwitcherWg()),
      CatalogModel(widgetName: "Indexed Stack", goToScreen: IndexedStackWg()),

      // Video 51 to 58
      CatalogModel(
          widgetName: "AnimatedIcon", goToScreen: AnimatedIconSample()),
      CatalogModel(
          widgetName: 'AnimatedOpacity', goToScreen: AnimatedOpacityDemo()),
      CatalogModel(
          widgetName: 'FractionallySizedBox',
          goToScreen: FractionallySizedBoxDemo()),
      CatalogModel(
          widgetName: 'ListView + ListTile Demo', goToScreen: ListViewDemo()),
      CatalogModel(widgetName: 'Container Demo', goToScreen: ContainerDemo()),
      // Video 62 to 66
      CatalogModel(widgetName: 'Image & ColorFiltered', goToScreen: ColorFilterWidget()),
      CatalogModel(widgetName: 'Toggle Button', goToScreen: ToggleButtonWidget()),
    ];
  }

  /// Team Hai Captain
  static List<CatalogModel> teamHaiVN() {
    return [
      CatalogModel(
          widgetName: 'TabBar + DefaultTabController',
          goToScreen: TabBarWidget()),
      CatalogModel(widgetName: 'Drawer', goToScreen: DrawerWidget()),
      CatalogModel(widgetName: 'SafeArea', goToScreen: SafeAreaScreen()),
      CatalogModel(widgetName: 'Expanded', goToScreen: SafeAreaScreen()),
      CatalogModel(widgetName: 'Wrap', goToScreen: SafeAreaScreen()),
      CatalogModel(
          widgetName: 'AnimatedContainer', goToScreen: SafeAreaScreen()),
      CatalogModel(widgetName: 'ClipPath', goToScreen: ClipPathDemo()),
      CatalogModel(
          widgetName: 'CircularProgressIndicator',
          goToScreen: CircularProgressIndicatorDemo()),
      CatalogModel(widgetName: "Divider", goToScreen: DividerDemo()),
      CatalogModel(
          widgetName: 'NotificationListener', goToScreen: NotificationDemo()),
      CatalogModel(widgetName: 'Builder', goToScreen: BuilderDemo()),
      CatalogModel(widgetName: 'ShaderMask', goToScreen: SharderMaskDemo()),
      CatalogModel(widgetName: 'SQLite', goToScreen: SqfLiteDemo()),
      CatalogModel(
          widgetName: 'InteractiveViewer', goToScreen: InteractiveViewerDemo()),
      CatalogModel(
          widgetName: 'IgnorePointer', goToScreen: IgnorePointerWidget()),
      CatalogModel(
          widgetName: 'CupertinoActivityIndicator',
          goToScreen: CupertinoActivityIndicatorWidget()),
      CatalogModel(widgetName: 'ClipOval', goToScreen: ClipOvalWidget()),
      CatalogModel(widgetName: 'SnackBar', goToScreen: SnackBarScreen()),
      CatalogModel(
          widgetName: 'ListWheelScrollView',
          goToScreen: ListWheelScrollViewScreen()),
      CatalogModel(
          widgetName: 'AnimatedWidget', goToScreen: AnimatedWidgetScreen()),
      CatalogModel(widgetName: 'Padding', goToScreen: PaddingScreen()),
      CatalogModel(widgetName: 'CheckBoxList', goToScreen: CheckBoxListScreen()),
      CatalogModel(widgetName: 'AboutDialog', goToScreen: AboutDialogDart()),
      CatalogModel(widgetName: 'rotatedBox', goToScreen: RotatedBoxDart()),
      CatalogModel(widgetName: 'package_slidable', goToScreen: PackageSlidable()),
      CatalogModel(widgetName: 'package_animations', goToScreen: PackageAnimations()),
      CatalogModel(widgetName: 'Url_Launcher', goToScreen: UrlLauncherDart())

    ];
  }

  /// Team Tuấn Captain
  static List<CatalogModel> teamTuanPV() {
    return [
      CatalogModel(widgetName: 'SafeArea', goToScreen: SafeAreaScreen()),
      CatalogModel(widgetName: 'Expanded', goToScreen: SafeAreaScreen()),
      CatalogModel(widgetName: 'Wrap', goToScreen: SafeAreaScreen()),
      CatalogModel(
          widgetName: 'AnimatedContainer', goToScreen: SafeAreaScreen()),
      CatalogModel(widgetName: 'Opacity', goToScreen: OpacityWidget()),
      CatalogModel(
          widgetName: 'FutureBuilder', goToScreen: FutureBuilderWidget()),
    ];
  }
}

class SegmentCatalogModel {
  String captainName;
  List<CatalogModel> listCatalog;

  SegmentCatalogModel({required this.captainName, required this.listCatalog});
}
