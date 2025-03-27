import 'package:flutter/material.dart';
import 'bar.dart';
import 'search_bar.dart';
import 'block.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(preferredSize: Size.fromHeight(80), child: Bar()),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(16.0), child: MySearchBar()),
              Grid(),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Continue Learning',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(16.0),
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      shrinkWrap: true, // Importante per SingleChildScrollView
      physics:
          const NeverScrollableScrollPhysics(), // Importante per SingleChildScrollView
      childAspectRatio: 3,
      children: [
        Button(icon: Icons.code, text: 'Development', color: Colors.red[800]!),
        Button(
          icon: Icons.design_services,
          text: 'Design',
          color: Colors.blue[600]!,
        ),
        Button(
          icon: Icons.campaign,
          text: 'Marketing',
          color: Colors.orange[700]!,
        ),
        Button(
          icon: Icons.business,
          text: 'Business',
          color: Colors.green[600]!,
        ),
      ],
    );
  }
}
