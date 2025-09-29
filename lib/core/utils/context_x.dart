import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

extension ContextX on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;

  bool get isMobile => ResponsiveBreakpoints.of(this).isMobile;
  bool get isTablet => ResponsiveBreakpoints.of(this).isTablet;
  bool get isDesktop => ResponsiveBreakpoints.of(this).isDesktop;
}
