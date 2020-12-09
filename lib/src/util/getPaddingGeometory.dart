import 'package:flutter/material.dart';
import 'package:toButton/src/paddingExtension.dart';

EdgeInsetsGeometry getPaddingGeometry({Options options, double size = 8}) {
  switch (options) {
    case Options.Horizontal:
      return EdgeInsets.symmetric(horizontal: size);
    case Options.Vertical:
      return EdgeInsets.symmetric(vertical: size);
    case Options.Top:
      return EdgeInsets.only(top: size);
    case Options.Bottom:
      return EdgeInsets.only(bottom: size);
    case Options.Left:
      return EdgeInsets.only(left: size);
    case Options.Right:
      return EdgeInsets.only(right: size);
    default:
      return EdgeInsets.all(size);
  }
}
