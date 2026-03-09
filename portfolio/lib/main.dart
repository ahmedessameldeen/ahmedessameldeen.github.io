import 'package:flutter/material.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ahmed Essam - Mobile Developer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6366F1),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        fontFamily: 'Inter',
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

class _PortfolioHomePageState extends State<PortfolioHomePage> with TickerProviderStateMixin {
  late AnimationController _heroController;
  late Animation<double> _heroAnimation;

  @override
  void initState() {
    super.initState();
    _heroController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _heroAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _heroController, curve: Curves.easeOut),
    );
    _heroController.forward();
  }

  @override
  void dispose() {
    _heroController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
                ),
              ),
              child: Center(
                child: FadeTransition(
                  opacity: _heroAnimation,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 80,
                        backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400&h=400&fit=crop&crop=face',
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'Ahmed Essam',
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Mobile App Developer',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white70,
                        ),
                      ),
                      const SizedBox(height: 32),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xFF6366F1),
                          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text('View My Work'),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // About Section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
              child: Column(
                children: [
                  const Text(
                    'About Me',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Passionate Mobile Developer',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'I am a dedicated mobile app developer with expertise in Flutter and native Android/iOS development. '
                              'I love creating beautiful, functional, and user-friendly applications that solve real-world problems.',
                              style: TextStyle(
                                fontSize: 18,
                                height: 1.6,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                _buildSkillChip('Flutter'),
                                const SizedBox(width: 12),
                                _buildSkillChip('Dart'),
                                const SizedBox(width: 12),
                                _buildSkillChip('Android'),
                                const SizedBox(width: 12),
                                _buildSkillChip('iOS'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 40),
                      Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                          color: const Color(0xFF6366F1).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.code,
                          size: 100,
                          color: Color(0xFF6366F1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Skills Section
            Container(
              color: Colors.grey[50],
              padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
              child: Column(
                children: [
                  const Text(
                    'Skills & Technologies',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      _buildSkillCard('Flutter', 0.9),
                      _buildSkillCard('Dart', 0.85),
                      _buildSkillCard('Android', 0.8),
                      _buildSkillCard('iOS', 0.75),
                      _buildSkillCard('Firebase', 0.7),
                      _buildSkillCard('Git', 0.8),
                    ],
                  ),
                ],
              ),
            ),

            // Projects Section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
              child: Column(
                children: [
                  const Text(
                    'Featured Projects',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Expanded(
                        child: _buildProjectCard(
                          'E-Commerce App',
                          'A full-featured shopping app with payment integration',
                          ['Flutter', 'Firebase', 'Stripe'],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: _buildProjectCard(
                          'Task Manager',
                          'Productivity app with cloud sync and notifications',
                          ['Flutter', 'SQLite', 'Local Notifications'],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: _buildProjectCard(
                          'Weather App',
                          'Beautiful weather app with animations',
                          ['Flutter', 'Weather API', 'Lottie'],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: _buildProjectCard(
                          'Social Media App',
                          'Connect and share with friends',
                          ['Flutter', 'Firebase', 'Camera'],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Contact Section
            Container(
              color: const Color(0xFF6366F1),
              padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
              child: Column(
                children: [
                  const Text(
                    'Get In Touch',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildContactButton(Icons.email, 'Email', () {}),
                      const SizedBox(width: 20),
                      _buildContactButton(Icons.phone, 'Phone', () {}),
                      const SizedBox(width: 20),
                      _buildContactButton(Icons.link, 'LinkedIn', () {}),
                      const SizedBox(width: 20),
                      _buildContactButton(Icons.code, 'GitHub', () {}),
                    ],
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    '© 2026 Ahmed Essam. All rights reserved.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
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

  Widget _buildSkillChip(String skill) {
    return Chip(
      label: Text(skill),
      backgroundColor: const Color(0xFF6366F1).withOpacity(0.1),
      labelStyle: const TextStyle(color: Color(0xFF6366F1)),
    );
  }

  Widget _buildSkillCard(String skill, double proficiency) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            skill,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          LinearProgressIndicator(
            value: proficiency,
            backgroundColor: Colors.grey[300],
            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF6366F1)),
          ),
          const SizedBox(height: 8),
          Text(
            '${(proficiency * 100).toInt()}%',
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard(String title, String description, List<String> technologies) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            children: technologies.map((tech) => Chip(
              label: Text(tech),
              backgroundColor: const Color(0xFF6366F1).withOpacity(0.1),
              labelStyle: const TextStyle(
                color: Color(0xFF6366F1),
                fontSize: 12,
              ),
            )).toList(),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF6366F1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text('View Project'),
          ),
        ],
      ),
    );
  }

  Widget _buildContactButton(IconData icon, String label, VoidCallback onPressed) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: Colors.white),
      label: Text(label, style: const TextStyle(color: Colors.white)),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white.withOpacity(0.1),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}