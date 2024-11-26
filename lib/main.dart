import 'package:delimais_customer/core/routes/app_pages.dart';
import 'package:delimais_customer/core/routes/app_routes.dart';
import 'package:delimais_customer/core/theme/app_theme.dart';
import 'package:delimais_customer/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.transparent,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'DeliMais',
      getPages: AppPages.pages,
      initialRoute: AppRoutes.root,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      color: const ThemeLightColors().primary,
      theme: const AppTheme(isDark: false).data,
      darkTheme: const AppTheme(isDark: true).data,
      locale: const Locale('pt', 'BR'),
    );
  }
}
