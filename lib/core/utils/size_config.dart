import 'package:flutter/cupertino.dart';

const double baseHeight = 812.0;
const double baseWidth = 375.0;

class SizeConfig {
  static late double screenHeight;
  static late double screenWidth;

  init(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    print('Screen Height: $screenHeight \nScreen Width: $screenWidth');
  }
}

double getHeight(double inputHeight) {
  print('getHeight: ${(inputHeight * SizeConfig.screenHeight) / baseHeight}');
  return (inputHeight * SizeConfig.screenHeight) / baseHeight;
}

double getWidth(double inputWidth) {
  print('getWidth: ${(inputWidth * SizeConfig.screenWidth) / baseWidth}');
  return (inputWidth * SizeConfig.screenWidth) / baseWidth;
}
