import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const PortfolioApp());
}

const Color primaryBg = Color(0xFFFAFAFA);
const Color secondaryBg = Color(0xFFF3F3F3);
const Color textDark = Color(0xFF1A1A1A);
const Color textGray = Color(0xFF666666);
const Color accentColor = Color(0xFF0066CC);
const Color borderColor = Color(0xFFE8E8E8);

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
              padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ahmed Essamedeen',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: textDark,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Mobile Developer | Java · Android · Kotlin · iOS',
                    style: TextStyle(
                      fontSize: 18,
                      color: textGray,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'I build robust, scalable mobile applications that solve real problems. '
                    'With 6+ years of experience in Android and iOS development, '
                    'I specialize in creating high-performance apps with clean architecture.',
                    style: TextStyle(
                      fontSize: 16,
                      color: textGray,
                      height: 1.6,
                    ),
                    maxLines: 4,
                  ),
                  const SizedBox(height: 32),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => launchUrl(Uri.parse('mailto:ahmedessamedeen@gmail.com')),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          decoration: BoxDecoration(
                            color: accentColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            'Get in Touch',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      GestureDetector(
                        onTap: () => launchUrl(Uri.parse('https://github.com/ahmedessameldeen')),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          decoration: BoxDecoration(
                            border: Border.all(color: borderColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            'View GitHub',
                            style: TextStyle(
                              color: textDark,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
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
              padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Let\'s Build Something Amazing',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: textDark,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Open for exciting opportunities, collaborations, and fresh challenges',
                    style: TextStyle(
                      fontSize: 16,
                      color: textGray,
                    ),
                  ),
                  const SizedBox(height: 32),
                  GestureDetector(
                    onTap: () => launchUrl(Uri.parse('mailto:ahmedessamedeen@gmail.com')),
                    child: Text(
                      'ahmedessamedeen@gmail.com',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: accentColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 48),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSocialLink('GitHub', 'https://github.com/ahmedessameldeen'),
                      const SizedBox(width: 24),
                      _buildSocialLink('LinkedIn', 'https://linkedin.com/in/ahmedessamedeen'),
                      const SizedBox(width: 24),
                      _buildSocialLink('Email', 'mailto:ahmedessamedeen@gmail.com'),
                    ],
                  ),
                  const SizedBox(height: 48),
                  const Text(
                    '© 2026 Ahmed Essamedeen. All rights reserved.',
                    style: TextStyle(
                      color: textGray,
                      fontSize: 12,
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
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: textDark,
            ),
          ),
          const SizedBox(height: 32),
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
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: textDark,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            company,
            style: const TextStyle(
              fontSize: 14,
              color: textGray,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            period,
            style: const TextStyle(
              fontSize: 12,
              color: accentColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
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
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: secondaryBg,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        tech,
        style: const TextStyle(
          fontSize: 13,
          color: textDark,
          fontWeight: FontWeight.w500,
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
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: textDark,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              color: textGray,
              height: 1.6,
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: tags
                .map((tag) => Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: accentColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        tag,
                        style: const TextStyle(
                          fontSize: 11,
                          color: accentColor,
                          fontWeight: FontWeight.w500,
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
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                skill,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: textDark,
                ),
              ),
              Text(
                '${(proficiency * 100).toInt()}%',
                style: const TextStyle(
                  fontSize: 13,
                  color: textGray,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: proficiency,
              minHeight: 4,
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
          fontSize: 14,
          color: accentColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}