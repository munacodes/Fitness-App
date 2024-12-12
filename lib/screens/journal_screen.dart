import 'package:fitness_app/utils/export_utils.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: GestureDetector(
              onTap: () {
                ShowFlutterToastOrSnackBar().showFlutterToastMessage(
                  message: 'Clicked on my Profile Icon',
                  gravity: ToastGravity.BOTTOM,
                );
                print('Clicked on my Profile Icon');
              },
              child: Card(
                elevation: 2,
                shape: CircleBorder(),
                child: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  foregroundColor: Colors.white,
                  child: Text(
                    'S',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
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
