import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/constants/app/app_constants.dart';
import 'app/libs/locale_manager/locale_manager.dart';
import 'app/navigation/screens.dart';
import 'app/navigation/size_config.dart';
import 'app/theme/app_dark_theme.dart';
import 'app/theme/app_light_theme.dart';
import 'app/theme/init.dart';
import 'core/i10n/default_localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/i10n/i10n.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await LocaleManager.cacheInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        SizeConfig().setScreenSizeFromConstraints(constraints);
        return ValueListenableBuilder<Locale>(
          valueListenable: localeValueNotifier,
          builder: (context, Locale value, _) {
            return GetMaterialApp(
              navigatorKey: Screens.instance.navigatorKey,
              locale: value,
              supportedLocales: getSupportedLocalList,
              localizationsDelegates: [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                AppLocalization.delegate
              ],
              builder: (BuildContext context, Widget? child) {
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
                  child: child!,
                );
              },
              title: appName ,
              debugShowCheckedModeBanner: false,
              themeMode: ThemeMode.dark,
              theme: getTheme(AppLightTheme()),
              darkTheme: getTheme(AppDarkTheme()),
              onGenerateRoute: Screens.instance.main.onGenerateRoute,
            );
          },
        );
      },
    );
  }
}