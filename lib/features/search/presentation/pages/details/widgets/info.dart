import 'package:flutter/material.dart';

class InfoChip extends StatelessWidget {
final  String label;
final IconData icon;
final Color color;
  const InfoChip({super.key, required this.label, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    if (label == "N/A") {
      return Container();
    } else {
      return Container(
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: color..withValues(alpha: 0.3)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 16, color: color),
            const SizedBox(width: 6),
            Text(
              label,
              style: TextStyle(color: color, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      );
    }
  }

}