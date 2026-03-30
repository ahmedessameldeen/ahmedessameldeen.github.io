import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ar.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure the following is an up-to-date list of all locales used by
/// this package:
///
/// ```yaml
/// dependencies:
///   flutter_localizations:
///     sdk: flutter
/// ```
///
/// ### iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations this instance has been initialized with.
  ///
  /// Contains the default locale and current locale.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ar'),
  ];

  /// The title of the app
  ///
  /// In en, this message translates to:
  /// **'Ahmed Essam - Mobile Developer'**
  String get appTitle;

  /// Navigation menu item
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// Navigation menu item
  ///
  /// In en, this message translates to:
  /// **'My Journey'**
  String get navJourney;

  /// Navigation menu item
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get navProjects;

  /// Navigation menu item
  ///
  /// In en, this message translates to:
  /// **'Skills'**
  String get navSkills;

  /// Navigation menu item
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get navContact;

  /// Hero section greeting
  ///
  /// In en, this message translates to:
  /// **'Hi, I\'m'**
  String get heroGreeting;

  /// Hero section name
  ///
  /// In en, this message translates to:
  /// **'Ahmed Essam'**
  String get heroName;

  /// Hero section title
  ///
  /// In en, this message translates to:
  /// **'Mobile Developer'**
  String get heroTitle;

  /// Hero section description
  ///
  /// In en, this message translates to:
  /// **'Passionate about creating innovative mobile solutions with Flutter and Android. 4+ years of experience building user-centric applications.'**
  String get heroDescription;

  /// Hero section CTA button
  ///
  /// In en, this message translates to:
  /// **'View My Work'**
  String get heroCta;

  /// Hero section secondary CTA
  ///
  /// In en, this message translates to:
  /// **'Get In Touch'**
  String get heroContact;

  /// Journey section title
  ///
  /// In en, this message translates to:
  /// **'My Journey'**
  String get journeyTitle;

  /// Projects section title
  ///
  /// In en, this message translates to:
  /// **'Featured Projects'**
  String get projectsTitle;

  /// Skills section title
  ///
  /// In en, this message translates to:
  /// **'Tech Stack'**
  String get skillsTitle;

  /// Contact section title
  ///
  /// In en, this message translates to:
  /// **'Let\'s Connect'**
  String get contactTitle;

  /// Contact section subtitle
  ///
  /// In en, this message translates to:
  /// **'Ready to bring your ideas to life?'**
  String get contactSubtitle;

  /// Contact section description
  ///
  /// In en, this message translates to:
  /// **'I\'m always open to discussing new opportunities, interesting projects, or just having a chat about mobile development.'**
  String get contactDescription;

  /// Contact button text
  ///
  /// In en, this message translates to:
  /// **'Send Message'**
  String get contactButton;

  /// Footer copyright text
  ///
  /// In en, this message translates to:
  /// **'© 2026 Ahmed Essam. Crafted with ❤️ for mobile innovation.'**
  String get footerCopyright;

  /// Company name for Magdsoft
  ///
  /// In en, this message translates to:
  /// **'Magdsoft'**
  String get companyMagdsoft;

  /// Company name for Code95
  ///
  /// In en, this message translates to:
  /// **'Code95'**
  String get companyCode95;

  /// Company name for Argaam Media
  ///
  /// In en, this message translates to:
  /// **'Argaam Media'**
  String get companyArgaam;

  /// Company name for SameSystem
  ///
  /// In en, this message translates to:
  /// **'SameSystem'**
  String get companySamesystem;

  /// Job title for Android Developer
  ///
  /// In en, this message translates to:
  /// **'Android Developer'**
  String get jobAndroidDeveloper;

  /// Job title for Senior Android Developer
  ///
  /// In en, this message translates to:
  /// **'Senior Android Developer'**
  String get jobSeniorAndroidDeveloper;

  /// Job title for Mobile Developer
  ///
  /// In en, this message translates to:
  /// **'Mobile Developer'**
  String get jobMobileDeveloper;

  /// Time period Mar 2016 - Mar 2017
  ///
  /// In en, this message translates to:
  /// **'Mar 2016 - Mar 2017'**
  String get period2016_2017;

  /// Time period Mar 2017 - Sep 2019
  ///
  /// In en, this message translates to:
  /// **'Mar 2017 - Sep 2019'**
  String get period2017_2019;

  /// Time period Sep 2019 - Apr 2020
  ///
  /// In en, this message translates to:
  /// **'Sep 2019 - Apr 2020'**
  String get period2019_2020;

  /// Time period Jan 2020 - Present
  ///
  /// In en, this message translates to:
  /// **'Jan 2020 - Present'**
  String get period2020_present;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
