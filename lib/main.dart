import 'dart:io';

import 'package:delimais_customer/core/routes/app_pages.dart';
import 'package:delimais_customer/core/routes/app_routes.dart';
import 'package:delimais_customer/core/theme/app_theme.dart';
import 'package:delimais_customer/core/theme/theme_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:statusbarz/statusbarz.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.wait([
    initializeDateFormatting('pt_BR'),
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge),
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = _getStatusBarTheme();

    return StatusbarzCapturer(
      theme: StatusbarzTheme(
        lightStatusBar: theme.$1,
        darkStatusBar: theme.$2,
      ),
      child: GetMaterialApp(
        title: 'DeliMais',
        getPages: AppPages.pages,
        initialRoute: AppRoutes.login,
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
        color: const ThemeLightColors().primary,
        theme: const AppTheme(isDark: false).data,
        darkTheme: const AppTheme(isDark: true).data,
        locale: _getLocale(),
        navigatorObservers: [Statusbarz.instance.observer],
      ),
    );
  }
}

(SystemUiOverlayStyle light, SystemUiOverlayStyle dark) _getStatusBarTheme() {
  const light = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarDividerColor: Colors.transparent,
  );

  const dark = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.light,
    systemNavigationBarDividerColor: Colors.transparent,
  );

  if (!kIsWeb && Platform.isIOS) return (dark, light);
  return (light, dark);
}

Locale _getLocale() {
  const localeName = 'pt_BR';
  final locale = localeName.split('_');

  Intl.defaultLocale = localeName;
  return Locale(locale.first, locale.last);
}
