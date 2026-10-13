import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final stories = [
      {'title': 'Бамбуковый лес Киото', 'time': '25 мин', 'author': 'Шепот ветра'},
      {'title': 'Ночной поезд в Альпах', 'time': '35 мин', 'author': 'Мягкий перестук колес'},
      {'title': 'Звездное небо в пустыне', 'time': '30 мин', 'author': 'Глубокая тишина'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('WinZen • Sleep'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: AppTheme.surfaceColor,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.3)),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Сказки и звуки для глубокого сна', style: TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(height: 4),
                  Text('Погружение в фазу медленного сна за 15 минут', style: TextStyle(color: Colors.white70, fontSize: 12)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ...stories.map((s) => Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
              child: Row(
                children: [
                  const Icon(Icons.bedtime_outlined, color: AppTheme.primaryColor, size: 24),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(s['title']!, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                        Text('${s["time"]} • ${s["author"]}', style: const TextStyle(color: Colors.white60, fontSize: 12)),
                      ],
                    ),
                  ),
                  const Icon(Icons.headphones, color: Colors.white38),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
