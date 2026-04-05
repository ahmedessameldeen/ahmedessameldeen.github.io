import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/language_provider.dart';

class LanguageSwitch extends StatelessWidget {
  const LanguageSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF1A0E2E),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFF7042F8), width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Current language flag/text
          Text(
            languageProvider.locale.languageCode == 'en' ? 'EN' : 'عر',
            style: const TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(width: 8),
          // Language switch icon
          GestureDetector(
            onTap: () {
              final newLocale = languageProvider.locale.languageCode == 'en'
                  ? const Locale('ar')
                  : const Locale('en');
              languageProvider.setLocale(newLocale);
            },
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: const Color(0xFF8B26EB),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.language, color: Colors.white, size: 16),
            ),
          ),
        ],
      ),
    );
  }
}
