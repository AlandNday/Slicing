import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeOnErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 18.fSize,
      );
  static get bodyLargePrimaryContainer_1 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyLargeRobotoBlack900 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.black900,
        fontSize: 19.fSize,
      );
  static get bodyLargeff122d4d => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF122D4D),
      );
  static get bodyMediumBluegray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 13.fSize,
      );
  static get bodyMediumOnErrorContainer_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyMediumOpenSansBluegray600 =>
      theme.textTheme.bodyMedium!.openSans.copyWith(
        color: appTheme.blueGray600,
      );
  static get bodyMediumOpenSansBluegray900 =>
      theme.textTheme.bodyMedium!.openSans.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyMediumOpenSansOnError =>
      theme.textTheme.bodyMedium!.openSans.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyMediumOpenSansOnErrorContainer =>
      theme.textTheme.bodyMedium!.openSans.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyMediumOpenSansPrimaryContainer =>
      theme.textTheme.bodyMedium!.openSans.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumPoppinsOnError =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallBlack90012 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );
  static get bodySmallOnErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 12.fSize,
      );
  static get bodySmallOnErrorContainer10 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 10.fSize,
      );
  static get bodySmallOnErrorContainer_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodySmallOpenSans => theme.textTheme.bodySmall!.openSans.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallOpenSans12 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallOpenSansBlack900 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );
  static get bodySmallOpenSansBluegray500 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray500,
        fontSize: 12.fSize,
      );
  static get bodySmallOpenSansBluegray600 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray600,
        fontSize: 10.fSize,
      );
  static get bodySmallOpenSansBluegray60012 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray600,
        fontSize: 12.fSize,
      );
  static get bodySmallOpenSansBluegray900 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.blueGray900,
        fontSize: 12.fSize,
      );
  static get bodySmallOpenSansOnError =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 10.fSize,
      );
  static get bodySmallOpenSansOnErrorContainer =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 12.fSize,
      );
  static get bodySmallOpenSansOnErrorContainer10 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 10.fSize,
      );
  static get bodySmallOpenSansOnErrorContainer_1 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodySmallOpenSansff122d4d =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: Color(0XFF122D4D),
        fontSize: 12.fSize,
      );
  static get bodySmallOpenSansff122d4dLight =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: Color(0XFF122D4D),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallPoppinsff122d4d =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: Color(0XFF122D4D),
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsfff57700 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: Color(0XFFF57700),
        fontSize: 12.fSize,
      );
  // Headline text style
  static get headlineLargePoppinsBlack900 =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargePoppinsBlack900Bold =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeRobotoBlack900 =>
      theme.textTheme.headlineLarge!.roboto.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallOrange70001 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.orange70001,
      );
  static get headlineSmallRobotoOnErrorContainer =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargePoppinsBluegray900 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.blueGray900,
      );
  static get labelLargefff57700 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFF57700),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBluegray500 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray500,
      );
  static get labelMediumBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelMediumOrange700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.orange700,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumff122d4d => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFF122D4D),
      );
  static get labelMediumff596ea3 => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFF596EA3),
      );
  // Title text style
  static get titleLargePoppinsBlack900 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 20.fSize,
      );
  static get titleLargeRobotoBlack900 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.black900,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get titleMediumOnErrorContainerBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 18.fSize,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleMediumPrimaryContainer18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 18.fSize,
      );
  static get titleMediumPrimaryContainerBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumff122d4d => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF122D4D),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallBlack900Bold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get titleSmallPoppinsBlack900 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPoppinsBlack900Bold =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPoppinsOnErrorContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRobotoOnErrorContainer =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
