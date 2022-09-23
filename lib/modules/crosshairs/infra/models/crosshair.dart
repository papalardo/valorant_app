import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valorant_app/modules/crosshairs/ui/utils/crosshair_colors.dart';
import 'package:valorant_app/utils/handling_errors/failure.dart';

part 'crosshair.freezed.dart';

@freezed
class Crosshair with _$Crosshair {
  const Crosshair._();

  const factory Crosshair({
    @JsonKey(ignore: true)
    final Color? customColor,
    required final int colorIndex,
    required final bool outlineEnabled,
    required final bool innerLinesEnabled,
    required final bool outerLinesEnabled,
    required final bool centerDotsEnabled,
    required final double outlineOpacity,
    required final int outlineThickness,
    required final double centerDotOpacity,
    required final int centerDotThickness,
    required final double innerLineOpacity,
    required final int innerLineLengthX,
    required final int innerLineLengthY,
    required final int innerLineThickness,
    required final int innerLineOffset,
    required final bool innerLineFiringErrorEnabled,
    required final double outerLineOpacity,
    required final int outerLineLengthX,
    required final int outerLineLengthY,
    required final int outerLineThickness,
    required final int outerLineOffset,
    required final bool outerLineFiringErrorEnabled,
  }) = _Crosshair;

  Color get color => customColor ?? CrosshairColor.baseColors[colorIndex].color;

  factory Crosshair.fromCode(String code) {
    var map = _codeToJson(code);
    var innerLineLengthX = int.tryParse(map['0l'] ?? '') ?? 6;
    var outerLineLengthX = int.tryParse(map['1l'] ?? '') ?? 2;
    return Crosshair(
      colorIndex: int.tryParse(map['c'] ?? '') ?? 0,
      customColor: (() {
        var color = map['u'];
        if (color == null) {
          return null;
        }
        return Color(
          int.parse("FF${color.toString().substring(0, 6)}", radix: 16),
        );
      })(),
      outlineEnabled: _stringToBool(map['h'] ?? '') ?? true,
      innerLinesEnabled: _stringToBool(map['0b'] ?? '') ?? true,
      outerLinesEnabled: _stringToBool(map['1b'] ?? '') ?? true,
      centerDotsEnabled: _stringToBool(map['d'] ?? '') ?? false,
      outlineOpacity: double.tryParse(map['o'] ?? '') ?? 0.5,
      outlineThickness: int.tryParse(map['t'] ?? '') ?? 1,
      centerDotOpacity: double.tryParse(map['a'] ?? '') ?? 1,
      centerDotThickness: int.tryParse(map['z'] ?? '') ?? 2,
      innerLineOpacity: double.tryParse(map['0a'] ?? '') ?? 0.8,
      innerLineLengthX: innerLineLengthX,
      innerLineLengthY: int.tryParse(map['0v'] ?? '') ?? innerLineLengthX,
      innerLineThickness: int.tryParse(map['0t'] ?? '') ?? 2,
      innerLineOffset: int.tryParse(map['0o'] ?? '') ?? 3,
      innerLineFiringErrorEnabled: _stringToBool(map['0f'] ?? '') ?? true,
      outerLineOpacity: double.tryParse(map['1a'] ?? '') ?? 0.35,
      outerLineLengthX: outerLineLengthX,
      outerLineLengthY: int.tryParse(map['1v'] ?? '') ?? outerLineLengthX,
      outerLineThickness: int.tryParse(map['1t'] ?? '') ?? 2,
      outerLineOffset: int.tryParse(map['1o'] ?? '') ?? 10,
      outerLineFiringErrorEnabled: _stringToBool(map['1f'] ?? '') ?? true,
    );
  }
}

Map _codeToJson(String code) {
  code += ';S';
  var primaryCrosshair = RegExp(r'(P;)(.*?)(;S|;A)').allMatches(code).first.group(2);
  if (primaryCrosshair == null) {
    throw Failure("Invalid code");
  }
  var partials = primaryCrosshair.split(';');
  var map = {};
  partials.asMap().forEach((index, entry) {
    if (index % 2 == 0) {
      map[entry] = partials[index + 1];
    }
  });
  return map;
}

bool? _stringToBool(String? v) {
  if (v == '1') return true;
  if (v == '0') return false;
  return null;
}

int? stringToBool(bool? boolean) {
  if (boolean == null) return 0;
  return boolean ? 1 : 0;
}

Color? colorFromJson(String? json) {
  if (json == null) return null;
  var color = json.toString().substring(0, 6);
  return Color(int.parse("FF$color", radix: 16));
}

String? colorToJson(Color? color) {
  return color?.value.toRadixString(16).substring(2, 8);
}
