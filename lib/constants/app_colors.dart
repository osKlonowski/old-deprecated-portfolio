import 'package:flutter/rendering.dart';

///!Colors!///
///

//AMARANTH -> Main Red Background Color
Color red = amaranth; //Ref for general use
Color amaranth = const Color(0xFFE5044B); //AMARANTH

//CARIBBEAN GREEN -> Main Green Secondary Color
Color green = caribbeanGreen; //Ref for general use
Color caribbeanGreen = const Color(0xFF00D4A8); //CARIBBEAN GREEN

//TUFTS BLUE -> Main Blue Accent Color
Color blue = tuftsBlue;
Color tuftsBlue = const Color(0xFF3C91E6); //TUFTS BLUE

//ORANGE YELLOW -> Main Orange Accent Color
Color orange = orangeYellow;
Color orangeYellow = const Color(0xFFFABC2A); //ORANGE YELLOW

//!!!GRADIENTS!!!///
const Gradient verticalRedNavBarGradient = LinearGradient(
  colors: [
    Color(0xFFE5044B), //RED
    Color(0xFFFC2267), //LIGHT-RED
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

const Gradient redBlueGradient = LinearGradient(
  colors: [
    Color(0xFFE5044B), //RED
    Color(0xFF3C91E6), //BLUE
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

//!!!OTHER!!!///

const Color primaryColor = Color(0xFFE5044B);

const Gradient mainGradient = LinearGradient(
  colors: [
    Color(0xFFe50449),
    Color(0xFF795dad),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

final Shader linearGradient = LinearGradient(
  colors: <Color>[Color(0xFFe50449), Color(0xFF795dad)],
).createShader(Rect.fromLTWH(0.0, 0.0, 100.0, 50.0));
