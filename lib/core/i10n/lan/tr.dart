import '../default_localization.dart';

class TrLocalization extends AppLocalizationLabel {
  const TrLocalization();

  @override
  final String lanCode = 'tr';
  @override
  final String localizationTitle = 'Türkçe';

  @override
  String get iAcceptTermsAndConditions =>
      "Kullanım Şartlarını okudum, kabul ediyorum.";

  @override
  String get checkYourInternetConnection =>
      "Lütfen internet bağlantınızı kontrol edin.";

  @override
  String get tryAgain => "Tekrar Dene";

  @override
  String get aboutUs => "Hakkımızda";

  @override
  String get contactUs => "Bize Ulaşın";

  @override
  String get termsOfPolicy => "Kullanım Şartları";

  @override
  String get termsOfPrivacy => "Gizlilik Politikası";

  @override
  String get settingsScreenTitle => "Ayarlar";

  @override
  String get no => 'HAYIR';

  @override
  String get yes => 'EVET';

  @override
  String get allowBtnText => 'İZİN VER';

  @override
  String get goodAfternoon => 'Tünaydın,';

  @override
  String get goodEvening => 'İyi Akşamlar';

  @override
  String get goodMorning => 'Günaydın,';

  @override
  String get goodNight => 'İyi Geceler,';

  @override
  String get defaultError =>
      'Bir hata oluştu. Lütfen daha sonra tekrar deneyin.';

  @override
  String get noInternetErrorMessage =>
      "Internet bağlantınız bulunmamaktadır. Lütfen bağlantınızı kontrol edin.";

  @override
  String get serverErrorMessage =>
      "Sunucu kaynaklı bir hata oluştu. Lütfen daha sonra tekrar deneyin.";

  @override
  String get ok => "Tamam";

  @override
  String get testYourInternetConnection => "İnternet Hızını Test Et";

  @override
  String get downloadSpeedMbps => "İndirme Hızı Mbps";

  @override
  String get uploadSpeedMbps => "Yükleme Hızı Mbps";
}
