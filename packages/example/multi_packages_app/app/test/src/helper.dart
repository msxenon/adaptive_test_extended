import 'package:flutter/material.dart';

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.toARGB32(), {
    50: tintColor(color, 0.9),
    100: tintColor(color, 0.8),
    200: tintColor(color, 0.6),
    300: tintColor(color, 0.4),
    400: tintColor(color, 0.2),
    500: color,
    600: shadeColor(color, 0.1),
    700: shadeColor(color, 0.2),
    800: shadeColor(color, 0.3),
    900: shadeColor(color, 0.4),
  });
}

Color tintColor(Color color, double factor) {
  return Color.fromRGBO(
    (color.r + ((255 - color.r) * factor)).round(),
    (color.g + ((255 - color.g) * factor)).round(),
    (color.b + ((255 - color.b) * factor)).round(),
    1,
  );
}

Color shadeColor(Color color, double factor) {
  return Color.fromRGBO(
    (color.r * factor).round(),
    (color.g * factor).round(),
    (color.b * factor).round(),
    1,
  );
}
