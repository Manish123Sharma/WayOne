import 'package:flutter/material.dart';
import '../models/insurance_item_model.dart';

class InsuranceGrid extends StatelessWidget {
  final List<InsuranceItemModel> items;
  const InsuranceGrid({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 4, 16, 8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(color: const Color(0x11000000), blurRadius: 8, offset: const Offset(0, 6)),
        ],
      ),
      child: GridView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 0.78,
          mainAxisSpacing: 12,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          final it = items[index];
          return Column(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.purple.shade50,
                child: Icon(it.icon, color: Colors.purple, size: 20),
              ),
              const SizedBox(height: 8),
              Flexible(
                child: Text(it.title, style: const TextStyle(fontSize: 11), textAlign: TextAlign.center, maxLines: 2),
              )
            ],
          );
        },
      ),
    );
  }
}
