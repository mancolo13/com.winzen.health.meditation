import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab3Screen extends StatefulWidget {
  const Tab3Screen({super.key});

  @override
  State<Tab3Screen> createState() => _Tab3ScreenState();
}

class _Tab3ScreenState extends State<Tab3Screen> {
  double _rainVol = 0.7;
  double _fireVol = 0.4;
  double _wavesVol = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WinZen • Ambient'),
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
              child: const Text('Микшер звуков природы', style: TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold, fontSize: 16)),
            ),
            const SizedBox(height: 20),
            _buildSlider('Летний дождь за окном', _rainVol, Icons.water_drop_outlined, (v) => setState(() => _rainVol = v)),
            _buildSlider('Треск вечернего костра', _fireVol, Icons.local_fire_department_outlined, (v) => setState(() => _fireVol = v)),
            _buildSlider('Океанский прибой', _wavesVol, Icons.waves, (v) => setState(() => _wavesVol = v)),
          ],
        ),
      ),
    );
  }

  Widget _buildSlider(String title, double val, IconData icon, ValueChanged<double> onChanged) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: AppTheme.primaryColor, size: 20),
              const SizedBox(width: 10),
              Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
            ],
          ),
          Slider(
            value: val,
            min: 0,
            max: 1,
            activeColor: AppTheme.primaryColor,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
