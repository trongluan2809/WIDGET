import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MediaQueryWidget extends StatefulWidget {

  @override
  _MediaQueryWidgetState createState() => _MediaQueryWidgetState();
}

class _MediaQueryWidgetState extends State<MediaQueryWidget> {
  @override
  Widget build(BuildContext context) {
    // The equivalent of the "smallestWidth" qualifier on Android.
    var smallestDimension = MediaQuery.of(context).size.shortestSide;

// Determine if we should use mobile layout or not. The
// number 600 here is a common breakpoint for a typical
// 7-inch tablet.
    final useMobileLayout = smallestDimension < 600;
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.yellow,
        width: SizeConfig.screenWidth / 2,
        child: Column(
          children: [
            _buildWidget(),
          ],
        ),
      ),
    );
  }

  Text _buildWidget() {
    if (SizeConfig._mediaQueryData?.platformBrightness == Brightness.dark) {
      return Text("dark mode");
    } else {
      return Text("light mode");
    }
  }

}

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double screenWidth = 0.0;
  static double screenHeight = 0.0;
  static double blockSizeHorizontal = 0.0;
  static double blockSizeVertical = 0.0;
  static double _safeAreaHorizontal = 0.0;
  static double _safeAreaVertical = 0.0;
  static double safeBlockHorizontal = 0.0;
  static double safeBlockVertical = 0.0;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockSizeHorizontal = screenWidth/100;
    blockSizeVertical = screenHeight/100;
    _safeAreaHorizontal = _mediaQueryData!.padding.left +
        _mediaQueryData!.padding.right;
    _safeAreaVertical = _mediaQueryData!.padding.top +
        _mediaQueryData!.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal)/100;
    safeBlockVertical = (screenHeight - _safeAreaVertical)/100;
  }
}
