import 'dart:ui';

enum CustomColors {
  primary,
  secondary,
  success,
  info,
  warning,
  danger,
  light,
  gray,
  dark,
  white
}

extension SelectedColorExtension on CustomColors {
  Color get getColor {
    switch (this) {
      case CustomColors.primary:
        return const Color(0xff6691ff);
      case CustomColors.secondary:
        return const Color(0xffd331f7);
      case CustomColors.success:
        return const Color(0xff51bb25);
      case CustomColors.info:
        return const Color(0xff7427f9);
      case CustomColors.warning:
        return const Color(0xfff8d62b);
      case CustomColors.danger:
        return const Color(0xffdc3545);
      case CustomColors.light:
        return const Color(0xfff4f4f4);
      case CustomColors.dark:
        return const Color(0xff2c323f);
      case CustomColors.gray:
        return const Color(0xff93969d);
      case CustomColors.white:
        return const Color(0xffffffff);
      default:
        return const Color(0xff6691ff);
    }
  }
}
