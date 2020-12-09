import 'package:flutter/material.dart';
import 'package:toButton/src/util/getPaddingGeometory.dart';

enum Options {
  Horizontal,
  Vertical,
  Top,
  Left,
  Right,
  Bottom,
}

extension MakePadding on Widget {
  toPadding({Options options, double size = 8}) {
    // This make our widget to make it child of padding
    return Padding(
      //This will return padding depand on option the we provide
      padding: getPaddingGeometry(options: options, size: size),
      child: this,
    );
  }
}
