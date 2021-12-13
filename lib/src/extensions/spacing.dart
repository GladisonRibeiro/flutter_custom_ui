import 'package:flutter/material.dart';

const _verticalPaddingBase = 8.0;
const _horizontalPaddingBase = 8.0;

extension Spacing on SizedBox {
  SizedBox vertical({int size = 1, base = _verticalPaddingBase}) {
    return SizedBox(
      height: base * size,
    );
  }

  SizedBox horizontal({int size = 1, base = _horizontalPaddingBase}) {
    return SizedBox(
      width: base * size,
    );
  }
}
