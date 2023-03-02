import 'package:flutter/material.dart';
import '../navigation/screens.dart';
import 'colors.dart';

/// Uygulama genelinde tüm text style ler buradan çekilmektedir
/// İsimler 'Size - FontWight - Color' Formatında ayarlanmıştır

TextStyle s12W700Dark() => Theme.of(Screens.context)
    .textTheme
    .displayLarge!
    .copyWith(fontWeight: FontWeight.w700);

TextStyle s12W500Dark() => Theme.of(Screens.context)
    .textTheme
    .displayLarge!
    .copyWith(fontWeight: FontWeight.w500);

TextStyle s12W700Light() => Theme.of(Screens.context)
    .textTheme
    .displayLarge!
    .copyWith(fontWeight: FontWeight.w700, color: AppColor.lightText);

TextStyle s12W700White() => Theme.of(Screens.context)
    .textTheme
    .displayLarge!
    .copyWith(fontWeight: FontWeight.w700, color: AppColor.background);

TextStyle s14W700Dark() => Theme.of(Screens.context)
    .textTheme
    .titleMedium!
    .copyWith(fontWeight: FontWeight.w700);

TextStyle s14W500Dark() => Theme.of(Screens.context)
    .textTheme
    .titleMedium!
    .copyWith(fontWeight: FontWeight.w500);

TextStyle s14W500Red() => Theme.of(Screens.context)
    .textTheme
    .titleMedium!
    .copyWith(fontWeight: FontWeight.w500, color: Colors.red);

TextStyle s14W700Red() => Theme.of(Screens.context)
    .textTheme
    .titleMedium!
    .copyWith(fontWeight: FontWeight.w700, color: Colors.red);

TextStyle s8W700White() => Theme.of(Screens.context)
    .textTheme
    .titleSmall!
    .copyWith(fontWeight: FontWeight.w700, color: Colors.white);

TextStyle s14W700Grey() => Theme.of(Screens.context)
    .textTheme
    .titleMedium!
    .copyWith(fontWeight: FontWeight.w700, color: AppColor.grey);

TextStyle s16W700Dark() => Theme.of(Screens.context)
    .textTheme
    .bodyLarge!
    .copyWith(fontWeight: FontWeight.w700, color: AppColor.lightSecondary);

TextStyle s16W500Dark() => Theme.of(Screens.context)
    .textTheme
    .bodyLarge!
    .copyWith(fontWeight: FontWeight.w500);

TextStyle s16W600Dark() => Theme.of(Screens.context)
    .textTheme
    .bodyLarge!
    .copyWith(fontWeight: FontWeight.w600, color: AppColor.lightSecondary);

TextStyle s18W700Dark() => Theme.of(Screens.context)
    .textTheme
    .displaySmall!
    .copyWith(fontWeight: FontWeight.w700, color: AppColor.lightSecondary);

TextStyle s18W700White() => Theme.of(Screens.context)
    .textTheme
    .displaySmall!
    .copyWith(fontWeight: FontWeight.w700, color: AppColor.background);

TextStyle s18W500Dark() => Theme.of(Screens.context)
    .textTheme
    .displaySmall!
    .copyWith(fontWeight: FontWeight.w500);

TextStyle s20W700Dark() => Theme.of(Screens.context)
    .textTheme
    .headlineSmall!
    .copyWith(fontWeight: FontWeight.w700);

TextStyle s26W700White() => Theme.of(Screens.context)
    .textTheme
    .titleLarge!
    .copyWith(fontWeight: FontWeight.w700, color: AppColor.primary);

TextStyle s20W500Dark() => Theme.of(Screens.context)
    .textTheme
    .headlineSmall!
    .copyWith(fontWeight: FontWeight.w500);
