import 'package:flutter/material.dart';

getShapeWidget(BuildContext context, double radius) {
  final width = MediaQuery.of(context).size.width;

  return RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(width * radius),
  );
}

getBorderRadiusWidget(BuildContext context, double radius) {
  final width = MediaQuery.of(context).size.width;

  return BorderRadius.circular(width * radius);
}
