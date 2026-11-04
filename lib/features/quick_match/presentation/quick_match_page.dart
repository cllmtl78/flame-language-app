import 'package:flutter/material.dart';

class QuickMatchPage extends StatelessWidget {
  const QuickMatchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Quick Match')),
      body: const Center(child: Text('Quick Match - yakinda')),
    );
  }
}
