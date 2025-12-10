import 'package:flutter/material.dart';

class StackLayoutScreen extends StatelessWidget {
  const StackLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Layout'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 300,
              height: 300,
              padding: const EdgeInsets.all(12),
              child: Image.network(
                "https://easydrawingguides.com/wp-content/uploads/2024/06/how-to-draw-an-easy-spider-man-featured-image-1200.png",
              ),
            ),
            Positioned(top: 1, right: 1, child: Icon(Icons.edit)),
            Positioned(
              bottom: 30,
              left: 30,
              child: Icon(Icons.thumbs_up_down, color: Colors.blue),
            ),
            Positioned(
              bottom: 30,
              left: 70,
              child: Icon(Icons.comment, color: Colors.purple),
            ),
          ],
        ),
      ),
    );
  }
}
