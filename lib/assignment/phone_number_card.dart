import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondaryNumbersUI(),
    );
  }
}

class SecondaryNumbersUI extends StatelessWidget {
  const SecondaryNumbersUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F2A2A),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Text(
              "Secondary Numbers",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),

            // Card 1
            numberCard(
              number: "+8801791563135",
              label: "Home . Added 2mo ago",
            ),

            const SizedBox(height: 20),

            // Card 2
            numberCard(
              number: "+44 20 7123 4567",
              label: "Work . Unverified",
            ),
          ],
        ),
      ),
    );
  }

  Widget numberCard({required String number, required String label}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF173A3A),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.2),
            blurRadius: 6,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
          // Phone Icon Circle
          Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF264D4D),
            ),
            child: const Icon(
              Icons.phone,
              color: Colors.white70,
            ),
          ),

          const SizedBox(width: 16),

          // Text Section
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.white54,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          // Edit Icon
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit, color: Colors.white70),
          ),

          // Delete Icon
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}