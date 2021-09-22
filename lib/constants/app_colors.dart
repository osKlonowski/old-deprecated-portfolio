import 'package:flutter/rendering.dart';

///!Colors!///
///
///
///

//PERIWINKLE
Color periwinkle = const Color(0xFFB4BCED);
Color thickPeriwinkle = const Color(0xFF9CA7EC);

//AMARANTH -> Main Red Background Color
// Color red = amaranth; //Ref for general use
// Color amaranth = const Color(0xFFE5044B); //AMARANTH

//CARIBBEAN GREEN -> Main Green Secondary Color
Color green = caribbeanGreen; //Ref for general use
Color caribbeanGreen = const Color(0xFF00D4A8); //CARIBBEAN GREEN
Color caribbeanGreenLight = const Color(0xFF00FFBE);

//TUFTS BLUE -> Main Blue Accent Color
Color blue = tuftsBlue;
Color tuftsBlue = const Color(0xFF3C91E6); //TUFTS BLUE

//ORANGE YELLOW -> Main Orange Accent Color
Color orange = orangeYellow;
Color orangeYellow = const Color(0xFFFABC2A); //ORANGE YELLOW

//!!!GRADIENTS!!!///
Gradient bestPeriwinkleGradientFUCKYEAH = const LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: <Color>[
    Color(0xFFD2D6EF),
    Color(0xFFB4BCED),
    Color(0xFF9CA7EC),
  ],
);

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

const Gradient blueGreenGradient = LinearGradient(
  colors: [
    Color(0xFF3C91E6), //BLUE
    Color(0xFF00D4A8), //GREEN
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
