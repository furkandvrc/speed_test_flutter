import 'package:flutter/material.dart' show ValueNotifier, Locale;
import '../../app/constants/enum/cache_key_enum.dart';
import '../../app/libs/locale_manager/locale_manager.dart';
import 'lan/tr.dart';

/// Default Locale ayarlarımız
const kDefaultLocal = Locale('tr');

/// Ugulamanın desteklediği diler
const Map<String, AppLocalizationLabel> supportedLocalization = {
  'tr': TrLocalization(),
};

List<Locale> get getSupportedLocalList => List.generate(
      supportedLocalization.length,
      (index) => Locale(
        supportedLocalization.keys.elementAt(index),
      ),
    );

/// Locale ayarlarını [MyApp] te dinleme için yazıldı
final ValueNotifier<Locale> localeValueNotifier =
    ValueNotifier(_getDefaultKeyFromCache);

/// cache te dil ayarları varsa çeker yoksa [kDefaultLocal] değerini alır
Locale get _getDefaultKeyFromCache {
  final lan = Locale(
    LocaleManager.instance.getStringValue(CacheKey.languageCode) ??
        kDefaultLocal.languageCode,
  );
  return lan;
}

abstract class AppLocalizationLabel {
  const AppLocalizationLabel();

  String get localizationTitle;

  String get lanCode;

  String get iAcceptTermsAndConditions;

  String get checkYourInternetConnection;

  String get tryAgain;

  String get aboutUs;

  String get contactUs;

  String get termsOfPolicy;

  String get termsOfPrivacy;

  String get settingsScreenTitle;

  String get yes;

  String get no;

  String get allowBtnText;

  String get goodMorning;

  String get goodAfternoon;

  String get goodEvening;

  String get goodNight;

  String get defaultError;

  String get serverErrorMessage;

  String get noInternetErrorMessage;

  String get ok;

  String get testYourInternetConnection;

  String get downloadSpeedMbps;
  
  String get uploadSpeedMbps;
}
