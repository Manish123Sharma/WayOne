import 'package:flutter/material.dart';
import '../models/loan_item_model.dart';

class LoanGrid extends StatelessWidget {
  final List<LoanItemModel> items;
  const LoanGrid({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 8),
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
          childAspectRatio: 0.8,
          mainAxisSpacing: 12,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          final it = items[index];
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue.shade50,
                child: Icon(it.icon, color: Colors.blue, size: 20),
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
