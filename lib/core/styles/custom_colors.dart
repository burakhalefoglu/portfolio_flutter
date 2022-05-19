import 'dart:ui';

enum CustomColors {
  pictonBlue,
  fireBush,
  alizarinCrimson,
  inchWorm,
  cerise,
  electricViolet,
  goldenDream,
  jaffa,
  pear,
  malachite,
  royalBlue,
  oliveDrab,
}

extension SelectedColorExtension on CustomColors {
  Color get getColor {
    switch (this) {
      case CustomColors.pictonBlue:
        return const Color(0xff32bdea);
      case  CustomColors.fireBush:
        return const Color(0xffeaa032);
        case  CustomColors.alizarinCrimson:
        return const Color(0xffea3232);
        case  CustomColors.inchWorm:
        return const Color(0xff7cea32);
      case  CustomColors.cerise:
        return const Color(0xffea329a);
        case  CustomColors.electricViolet:
        return const Color(0xffc232ea);
        case  CustomColors.goldenDream:
        return const Color(0xffeacb32);
        case  CustomColors.jaffa:
        return const Color(0xffea7932);
        case  CustomColors.pear:
        return const Color(0xffb6ea32);
        case  CustomColors.oliveDrab:
        return const Color(0xff62b72a);
        case  CustomColors.malachite:
        return const Color(0xff32ea82);
        case  CustomColors.royalBlue:
        return const Color(0xff324bea);
      default:
        return const Color(0xff32bdea);
    }
  }
}
