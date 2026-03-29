import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const PortfolioApp());
}

const Color primaryBg = Color(0xFF0F0F23);
const Color secondaryBg = Color(0xFF1A1A2E);
const Color accentColor = Color(0xFF00D4FF);
const Color textLight = Color(0xFFFFFFFF);
const Color textGray = Color(0xFFB0B0B0);
const Color cardBg = Color(0xFF16213E);
const Color borderColor = Color(0xFF0F3460);

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ahmed Essamedeen - Mobile Developer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: primaryBg,
        fontFamily: 'Poppins',
        brightness: Brightness.dark,
      ),
      home: const PortfolioHomePage(),
    );
  }
}

class PortfolioHomePage extends StatefulWidget {
  const PortfolioHomePage({super.key});

  @override
  State<PortfolioHomePage> createState() => _PortfolioHomePageState();
}

class _PortfolioHomePageState extends State<PortfolioHomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            // Hero Section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 40),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [primaryBg, secondaryBg],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ahmed Essamedeen',
                    style: TextStyle(
                      fontSize: 56,
                      fontWeight: FontWeight.bold,
                      color: textLight,
                      height: 1.1,
                      shadows: [
                        Shadow(
                          color: accentColor,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: accentColor.withOpacity(0.1),
                      border: Border.all(color: accentColor.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      '🚀 Mobile Developer | Android & iOS Expert',
                      style: TextStyle(
                        fontSize: 18,
                        color: accentColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  const Text(
                    'Crafting exceptional mobile experiences with cutting-edge technology. '
                    'Specializing in Android & iOS development with 6+ years of expertise '
                    'in building scalable, high-performance applications.',
                    style: TextStyle(
                      fontSize: 18,
                      color: textGray,
                      height: 1.6,
                    ),
                    maxLines: 4,
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () => launchUrl(Uri.parse('mailto:ahmedessamedeen@gmail.com')),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: accentColor,
                          foregroundColor: primaryBg,
                          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 8,
                          shadowColor: accentColor.withOpacity(0.3),
                        ),
                        child: const Text(
                          '💌 Get in Touch',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      OutlinedButton(
                        onPressed: () => launchUrl(Uri.parse('https://github.com/ahmedessameldeen')),
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: accentColor),
                          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          '📱 View My Work',
                          style: TextStyle(
                            color: accentColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Professional Journey
            _buildSection(
              'Professional Journey',
              Column(
                children: [
                  _buildExperienceCard(
                    'Senior Android Developer',
                    'SameSystem - Retail Workforce Solutions',
                    'Jan 2020 - Present',
                    'Developed and maintained enterprise-level retail management platform. '
                    'Led architecture decisions, mentored junior developers, and optimized performance.',
                  ),
                  _buildExperienceCard(
                    'Mobile Developer',
                    'Argaam Media',
                    'Sep 2019 - Apr 2020',
                    'Built media streaming and distribution platform. Implemented real-time data syncing.',
                  ),
                  _buildExperienceCard(
                    'Mobile Developer',
                    'Code95',
                    'Mar 2017 - Sep 2019',
                    'Developed multiple commercial Android applications. Led UI/UX improvements.',
                  ),
                  _buildExperienceCard(
                    'Android Developer',
                    'magdsoft',
                    'Mar 2016 - Mar 2017',
                    'Built Android applications from concept to production. Implemented Firebase integration.',
                  ),
                ],
              ),
            ),

            // Tech Arsenal
            _buildSection(
              'Tech Arsenal',
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  _buildTechBadge('Java'),
                  _buildTechBadge('Android'),
                  _buildTechBadge('Kotlin'),
                  _buildTechBadge('iOS'),
                  _buildTechBadge('Swift'),
                  _buildTechBadge('AR/VR'),
                  _buildTechBadge('Firebase'),
                  _buildTechBadge('REST API'),
                  _buildTechBadge('Mobile Architecture'),
                  _buildTechBadge('Clean Code'),
                  _buildTechBadge('MVVM'),
                  _buildTechBadge('RxJava'),
                ],
              ),
            ),

            // Featured Projects
            _buildSection(
              'Featured Projects',
              Column(
                children: [
                  _buildProjectCard(
                    'Retail Workforce Solutions',
                    'Enterprise platform for retail management with real-time employee scheduling '
                    'and task synchronization across multiple stores.',
                    ['Android', 'Java', 'REST API', 'SQLite'],
                  ),
                  _buildProjectCard(
                    'Media Streaming Platform',
                    'Full-featured media distribution platform with live streaming, '
                    'content management, and user analytics.',
                    ['Android', 'Kotlin', 'Firebase', 'Real-time Sync'],
                  ),
                  _buildProjectCard(
                    'E-Commerce Mobile App',
                    'Complete e-commerce solution with payment gateway integration, '
                    'product catalog, and order tracking.',
                    ['Android', 'iOS', 'Payment Gateway', 'Analytics'],
                  ),
                  _buildProjectCard(
                    'AR Product Visualization',
                    'Augmented reality features for product visualization and virtual try-on experiences.',
                    ['Android', 'ARCore', 'AR', 'Java'],
                  ),
                ],
              ),
            ),

            // Skills Matrix
            _buildSection(
              'Skills & Proficiency',
              Column(
                children: [
                  _buildSkillRow('Java', 0.95),
                  _buildSkillRow('Android Development', 0.95),
                  _buildSkillRow('Mobile Architecture', 0.90),
                  _buildSkillRow('Kotlin', 0.85),
                  _buildSkillRow('iOS Development', 0.85),
                  _buildSkillRow('AR/VR Development', 0.80),
                ],
              ),
            ),

            // Contact Section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 40),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [secondaryBg, primaryBg],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    '🚀 Let\'s Build Something Amazing',
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: textLight,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Ready for exciting opportunities, collaborations, and fresh challenges in mobile development',
                    style: TextStyle(
                      fontSize: 18,
                      color: textGray,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () => launchUrl(Uri.parse('mailto:ahmedessamedeen@gmail.com')),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: accentColor,
                      foregroundColor: primaryBg,
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 8,
                      shadowColor: accentColor.withOpacity(0.3),
                    ),
                    child: const Text(
                      '📧 Start a Conversation',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSocialLink('GitHub', 'https://github.com/ahmedessameldeen'),
                      const SizedBox(width: 32),
                      _buildSocialLink('LinkedIn', 'https://linkedin.com/in/ahmedessamedeen'),
                      const SizedBox(width: 32),
                      _buildSocialLink('Email', 'mailto:ahmedessamedeen@gmail.com'),
                    ],
                  ),
                  const SizedBox(height: 60),
                  const Text(
                    '© 2026 Ahmed Essamedeen. Crafted with ❤️ for mobile innovation.',
                    style: TextStyle(
                      color: textGray,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, Widget child) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: textLight,
            ),
          ),
          const SizedBox(height: 40),
          child,
        ],
      ),
    );
  }

  Widget _buildExperienceCard(
    String title,
    String company,
    String period,
    String description,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: cardBg,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: accentColor.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: textLight,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            company,
            style: const TextStyle(
              fontSize: 16,
              color: accentColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            period,
            style: const TextStyle(
              fontSize: 14,
              color: textGray,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              color: textGray,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTechBadge(String tech) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: cardBg,
        border: Border.all(color: accentColor.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: accentColor.withOpacity(0.1),
            blurRadius: 5,
          ),
        ],
      ),
      child: Text(
        tech,
        style: const TextStyle(
          fontSize: 14,
          color: textLight,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildProjectCard(
    String title,
    String description,
    List<String> tags,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: cardBg,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: accentColor.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: textLight,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              color: textGray,
              height: 1.6,
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: tags
                .map((tag) => Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: accentColor.withOpacity(0.1),
                        border: Border.all(color: accentColor.withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        tag,
                        style: const TextStyle(
                          fontSize: 12,
                          color: accentColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillRow(String skill, double proficiency) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                skill,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: textLight,
                ),
              ),
              Text(
                '${(proficiency * 100).toInt()}%',
                style: const TextStyle(
                  fontSize: 14,
                  color: accentColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: proficiency,
              minHeight: 8,
              backgroundColor: borderColor,
              valueColor: const AlwaysStoppedAnimation<Color>(accentColor),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialLink(String label, String url) {
    return GestureDetector(
      onTap: () => launchUrl(Uri.parse(url)),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 16,
          color: accentColor,
          fontWeight: FontWeight.w600,
          decoration: TextDecoration.underline,
          decorationColor: accentColor,
        ),
      ),
    );
  }
}