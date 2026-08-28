import 'package:flutter/material.dart';

void main() {
  runApp(const SathyaVedaApp());
}

class SathyaVedaApp extends StatelessWidget {
  const SathyaVedaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ಸತ್ಯವೇದ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor: Colors.grey[50],
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.brown,
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ಸತ್ಯವೇದ',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeaderCard(),
                  const SizedBox(height: 16),
                  _buildSectionTitle('ಸತ್ಯವೇದ ಎಂದರೇನು?'),
                  _buildInfoCard(
                    'ಸತ್ಯವೇದವು (Holy Bible) ಕ್ರೈಸ್ತರ ಪವಿತ್ರ ಗ್ರಂಥವಾಗಿದೆ. "ಸತ್ಯವೇದ" ಎಂದರೆ ಸತ್ಯವಾದ ಅಥವಾ ನಿಜವಾದ ವೇದ (ಪುಸ್ತಕ/ಜ್ಞಾನ) ಎಂದರ್ಥ. ಇದನ್ನು ದೇವರ ವಾಕ್ಯ ಎಂದು ನಂಬಲಾಗುತ್ತದೆ. ಇದು ಮಾನವ ಕುಲಕ್ಕೆ ದೇವರ ಪ್ರೀತಿ, ಮಾರ್ಗದರ್ಶನ ಮತ್ತು ರಕ್ಷಣೆಯ ಯೋಜನೆಯನ್ನು ತಿಳಿಸುತ್ತದೆ.',
                    Icons.menu_book,
                  ),
                  const SizedBox(height: 16),
                  _buildSectionTitle('ಸತ್ಯವೇದದ ವಿಭಾಗಗಳು'),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: _buildTestamentCard(
                          'ಹಳೆಯ ಒಡಂಬಡಿಕೆ',
                          '39 ಪುಸ್ತಕಗಳು',
                          'ಯೇಸು ಕ್ರಿಸ್ತನ ಜನನಕ್ಕೂ ಮುಂಚಿನ ಕಾಲದ ಚರಿತ್ರೆ, ಧರ್ಮಶಾಸ್ತ್ರ ಮತ್ತು ಪ್ರವಾದನೆಗಳನ್ನು ಒಳಗೊಂಡಿದೆ.',
                          Colors.blueGrey[700]!,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: _buildTestamentCard(
                          'ಹೊಸ ಒಡಂಬಡಿಕೆ',
                          '27 ಪುಸ್ತಕಗಳು',
                          'ಯೇಸು ಕ್ರಿಸ್ತನ ಜೀವನ, ಬೋಧನೆಗಳು, ಸಾವು, ಪುನರುತ್ಥಾನ ಮತ್ತು ಆರಂಭಿಕ ಕ್ರೈಸ್ತ ಸಭೆಯ ಇತಿಹಾಸವನ್ನು ಒಳಗೊಂಡಿದೆ.',
                          Colors.brown[700]!,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildSectionTitle('ಒಟ್ಟು ಪುಸ್ತಕಗಳು: 66'),
                  const SizedBox(height: 16),
                  _buildInfoCard(
                    'ಸತ್ಯವೇದವನ್ನು ಮೂಲತಃ ಇಬ್ರಿಯ (Hebrew), ಅರಾಮಿಕ್ (Aramaic) ಮತ್ತು ಗ್ರೀಕ್ (Greek) ಭಾಷೆಗಳಲ್ಲಿ ಬರೆಯಲಾಗಿದೆ. ಇಂದು ಇದು ಪ್ರಪಂಚದಾದ್ಯಂತ ಅತಿ ಹೆಚ್ಚು ಭಾಷೆಗಳಿಗೆ ಭಾಷಾಂತರಿಸಲ್ಪಟ್ಟ ಮತ್ತು ಅತಿ ಹೆಚ್ಚು ಓದುಗರನ್ನು ಹೊಂದಿರುವ ಗ್ರಂಥವಾಗಿದೆ.',
                    Icons.language,
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _buildInfoCard(String text, IconData icon) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 40, color: Colors.brown),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTestamentCard(String title, String subtitle, String description, Color color) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [color, color.withOpacity(0.8)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderCard extends StatelessWidget {
  const HeaderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: Colors.brown[100],
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.brown[300]!, width: 2),
      ),
      child: Column(
        children: [
          Icon(Icons.auto_stories, size: 64, color: Colors.brown[800]),
          const SizedBox(height: 16),
          Text(
            'ನಿನ್ನ ವಾಕ್ಯವು ನನ್ನ ಪಾದಕ್ಕೆ ದೀಪವೂ\nನನ್ನ ದಾರಿಗೆ ಬೆಳಕೂ ಆಗಿದೆ.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600,
              color: Colors.brown[900],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '- ಕೀರ್ತನೆಗಳು 119:105',
            style: TextStyle(
              fontSize: 14,
              color: Colors.brown[700],
            ),
          ),
        ],
      ),
    );
  }
}
