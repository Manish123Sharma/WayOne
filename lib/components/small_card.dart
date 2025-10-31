import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final Color accentColor;

  const SmallCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.accentColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Top curved shape
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 100,
              height: 60,
              decoration: BoxDecoration(
                color: accentColor.withOpacity(0.15),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(100),
                ),
              ),
            ),
          ),

          // Bottom wave pattern
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              child: Image.asset(
                'assets/wave_pattern.png', // small blue wave background
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Main Content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Image.asset(imagePath, height: 35, width: 35),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 12, color: Colors.black54),
                ),
                const Spacer(),
                const Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    Icons.arrow_right_alt,
                    size: 20,
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
