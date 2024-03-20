import 'package:flutter/material.dart';

EmptyBox wEmptyBox(double w) {
  return EmptyBox(w: w);
}

EmptyBox hEmptyBox(double h) {
  return EmptyBox(h: h);
}

class EmptyBox extends StatelessWidget {
  final double h;
  final double w;
  const EmptyBox({super.key, this.h = 0, this.w = 0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: w,
      height: h,
    );
  }
}
