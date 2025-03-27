import 'package:flutter/material.dart';

class Bar extends StatelessWidget implements PreferredSizeWidget {
  const Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white, // Sfondo bianco
      elevation: 0, // Rimuove l'ombra
      toolbarHeight: 80, // Altezza dell'AppBar personalizzata
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Hello, Aaron!",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Let's learn something today",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200], // Grigio chiaro
              ),
              child: IconButton(
                icon: const Icon(Icons.notifications_none),
                color: Colors.black,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
