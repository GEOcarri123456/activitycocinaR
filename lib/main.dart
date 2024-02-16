import 'package:flutter/material.dart';

void main() {
  runApp(activity());
}

class activity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Comida Mexicana',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comida Mexicana'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Comida Mexicana Rica',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Esta es una comida mexicana simple y deliciosa.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: List.generate(5, (index) => Icon(Icons.star, color: Colors.yellow[800])),
                    ),
                    SizedBox(height: 8),
                    Text('170 reviews'),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    IconText(icon: Icons.schedule, text: 'Prep: 25 min'),
                    IconText(icon: Icons.timer, text: 'Cook: 1 hour'),
                    IconText(icon: Icons.restaurant, text: 'Feeds: 4-6'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Image.asset('assets/7034.jpg'),
          ],
        ),
      ),
    );
  }
}

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;

  IconText({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: Colors.grey),
        SizedBox(width: 4),
        Text(text, style: TextStyle(fontSize: 14, color: Colors.grey)),
      ],
    );
  }
}