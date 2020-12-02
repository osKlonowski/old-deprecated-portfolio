import 'package:flutter/rendering.dart';

const Color primaryColor = Color(0xFFE5044B);

const Gradient mainGradient = LinearGradient(
  colors: [
    Color(0xFFe50449), Color(0xFF795dad),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

final Shader linearGradient = LinearGradient(
  colors: <Color>[Color(0xFFe50449), Color(0xFF795dad)],
).createShader(Rect.fromLTWH(0.0, 0.0, 100.0, 50.0));