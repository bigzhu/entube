import 'package:flutter/material.dart';

const mainColor = Colors.teal;
const Map<int, Color> darkColorMap = {
  50: Color.fromRGBO(40, 40, 40, .1),
  100: Color.fromRGBO(40, 40, 40, .2),
  200: Color.fromRGBO(40, 40, 40, .3),
  300: Color.fromRGBO(40, 40, 40, .4),
  400: Color.fromRGBO(40, 40, 40, .5),
  500: Color.fromRGBO(40, 40, 40, .6),
  600: Color.fromRGBO(40, 40, 40, .7),
  700: Color.fromRGBO(40, 40, 40, .8),
  800: Color.fromRGBO(40, 40, 40, .9),
  900: Color.fromRGBO(40, 40, 40, 1),
};

const MaterialColor darkMaterialColor = MaterialColor(0xFF282828, darkColorMap);
ThemeData brightTheme = ThemeData(
  useMaterial3: false,
  primarySwatch: darkMaterialColor,
  primaryColor: mainColor,
  primaryColorLight: mainColor[700],
  primaryColorDark: Colors.black,
  accentColor: mainColor, // loading 动画的颜色
  //brightness: Brightness.light,
  fontFamily: "NotoSans-Medium",
  scaffoldBackgroundColor: Colors.blueGrey[50], // 阅读背景色
  /*
  textTheme: TextTheme(
      //headline6: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      //title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      //body1: TextStyle(
      //   color: Colors.black87, fontSize: 20.0, fontFamily: 'NotoSans-Medium'),
      ),
      */
);

// 文章单词样式
TextStyle articleTextStyle = const TextStyle(
    color: Colors.black87, fontSize: 20.0, fontFamily: 'NotoSans-Medium');
// 常用待学单词色
TextStyle articleAcquiringCommonTextStyle = TextStyle(color: mainColor[700]);
// 非常用待学单词色
TextStyle articleAcquiringUncommonTextStyle =
    const TextStyle(color: Colors.blueGrey);
TextStyle articleTappingTextStyle = const TextStyle(
    decoration: TextDecoration.underline,
    decorationStyle: TextDecorationStyle.wavy);
TextStyle articleFindingTextStyle = TextStyle(
    color: Colors.deepOrange[700],
    decoration: TextDecoration.underline,
    decorationStyle: TextDecorationStyle.wavy);
TextStyle playingTextStyle =
    TextStyle(color: mainColor[700], fontWeight: FontWeight.bold);
