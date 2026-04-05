import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:portfolio/l10n/app_localizations.dart';
import 'package:portfolio/providers/language_provider.dart';
import 'package:portfolio/src/constants.dart';
import 'package:portfolio/src/home_page.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageProvider>(
      builder: (context, languageProvider, child) {
        return MaterialApp(
          title: 'Ahmed Essam - Mobile Developer',
          debugShowCheckedModeBanner: false,
          locale: languageProvider.locale,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          localeResolutionCallback: (locale, supportedLocales) {
            for (final supportedLocale in supportedLocales) {
              if (supportedLocale.languageCode == locale?.languageCode) {
                return supportedLocale;
              }
            }
            return supportedLocales.first;
          },
          theme: ThemeData(
            useMaterial3: true,
            scaffoldBackgroundColor: primaryBg,
            fontFamily: 'Poppins',
            brightness: Brightness.dark,
          ),
          home: const PortfolioHomePage(),
        );
      },
    );
  }
}
