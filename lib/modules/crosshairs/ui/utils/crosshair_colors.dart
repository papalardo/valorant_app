import 'package:flutter/material.dart';

class CrosshairColor {
  String name;
  Color color;

  CrosshairColor({
    required this.name,
    required this.color,
  });

  static List<CrosshairColor> get baseColors {
    return [
      CrosshairColor(name: 'White', color: const Color(0xFFFFFFFF)),
      CrosshairColor(name: 'Green', color: const Color(0xFF00FF00)),
      CrosshairColor(name: 'Yellow Green', color: const Color(0xFF7FFF00)),
      CrosshairColor(name: 'Green Yellow', color: const Color(0xFFDFFF00)),
      CrosshairColor(name: 'Yellow', color: const Color(0xFFFFFF00)),
      CrosshairColor(name: 'Cyan', color: const Color(0xFF00FFFF)),
      CrosshairColor(name: 'Pink', color: const Color(0xFFFF00FF)),
      CrosshairColor(name: 'Pink', color: const Color(0xFFFF0000)),
      CrosshairColor(name: 'Custom', color: const Color(0xFFFFFFFF)),
    ];
  }
}
