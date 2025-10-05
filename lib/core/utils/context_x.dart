import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

extension ContextX on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;

  bool get isMobile => ResponsiveBreakpoints.of(this).isMobile;
  bool get isTablet => ResponsiveBreakpoints.of(this).isTablet;
  bool get isDesktop => ResponsiveBreakpoints.of(this).isDesktop;

  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  TextStyle? get headlineLarge {
    if (isDesktop) {
      return textTheme.headlineLarge;
    } else if (isTablet) {
      return textTheme.headlineLarge?.copyWith(fontSize: 32);
    } else {
      return textTheme.headlineLarge?.copyWith(fontSize: 24);
    }
  }

  TextStyle? get headlineMedium {
    if (isDesktop) {
      return textTheme.headlineMedium;
    } else if (isTablet) {
      return textTheme.headlineMedium?.copyWith(fontSize: 28);
    } else {
      return textTheme.headlineMedium?.copyWith(fontSize: 22);
    }
  }

  TextStyle? get headlineSmall {
    if (isDesktop) {
      return textTheme.headlineSmall;
    } else if (isTablet) {
      return textTheme.headlineSmall?.copyWith(fontSize: 24);
    } else {
      return textTheme.headlineSmall?.copyWith(fontSize: 20);
    }
  }

  TextStyle? get bodyLarge {
    if (isDesktop) {
      return textTheme.bodyLarge;
    } else if (isTablet) {
      return textTheme.bodyLarge?.copyWith(fontSize: 18);
    } else {
      return textTheme.bodyLarge?.copyWith(fontSize: 16);
    }
  }

  TextStyle? get bodyMedium {
    if (isDesktop) {
      return textTheme.bodyMedium;
    } else if (isTablet) {
      return textTheme.bodyMedium?.copyWith(fontSize: 16);
    } else {
      return textTheme.bodyMedium?.copyWith(fontSize: 14);
    }
  }

  TextStyle? get bodySmall {
    if (isDesktop) {
      return textTheme.bodySmall;
    } else if (isTablet) {
      return textTheme.bodySmall?.copyWith(fontSize: 14);
    } else {
      return textTheme.bodySmall?.copyWith(fontSize: 12);
    }
  }

  TextStyle? get labelLarge {
    if (isDesktop) {
      return textTheme.labelLarge;
    } else if (isTablet) {
      return textTheme.labelLarge?.copyWith(fontSize: 16);
    } else {
      return textTheme.labelLarge?.copyWith(fontSize: 14);
    }
  }

  TextStyle? get labelMedium {
    if (isDesktop) {
      return textTheme.labelMedium;
    } else if (isTablet) {
      return textTheme.labelMedium?.copyWith(fontSize: 14);
    } else {
      return textTheme.labelMedium?.copyWith(fontSize: 12);
    }
  }

  TextStyle? get labelSmall {
    if (isDesktop) {
      return textTheme.labelSmall;
    } else if (isTablet) {
      return textTheme.labelSmall?.copyWith(fontSize: 12);
    } else {
      return textTheme.labelSmall?.copyWith(fontSize: 10);
    }
  }
}
