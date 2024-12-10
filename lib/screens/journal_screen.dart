import 'package:flutter/material.dart';

class JournalScreen extends StatefulWidget {
  const JournalScreen({super.key});

  @override
  State<JournalScreen> createState() => _JournalScreenState();
}

class _JournalScreenState extends State<JournalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.blue,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text('Journal'),
          ],
        ),
      ),
    );
  }
}
