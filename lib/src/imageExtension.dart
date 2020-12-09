import 'package:flutter/material.dart';

extension ImageExtension on Image {
  cornerRadius({double circular = 8.0}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(circular),
      child: this,
    );
  }
}
