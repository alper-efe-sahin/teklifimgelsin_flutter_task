import 'package:flutter/material.dart';

SliderThemeData sliderThemeData(BuildContext context) {
  return SliderTheme.of(context).copyWith(
    activeTrackColor: Colors.red[700],
    inactiveTrackColor: Colors.red[100],
    trackShape: const RoundedRectSliderTrackShape(),
    trackHeight: 4.0,
    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
    thumbColor: Colors.redAccent,
    overlayColor: Colors.red.withAlpha(32),
    overlayShape: const RoundSliderOverlayShape(overlayRadius: 28.0),
    tickMarkShape: const RoundSliderTickMarkShape(),
    activeTickMarkColor: Colors.red[700],
    inactiveTickMarkColor: Colors.red[100],
    valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
    valueIndicatorColor: Colors.redAccent,
    valueIndicatorTextStyle: const TextStyle(
      color: Colors.white,
    ),
  );
}
