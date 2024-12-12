import 'package:flutter/material.dart';

class BuildProfilePicSection extends StatefulWidget {
  const BuildProfilePicSection({super.key});

  @override
  State<BuildProfilePicSection> createState() => _BuildProfilePicSectionState();
}

class _BuildProfilePicSectionState extends State<BuildProfilePicSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 2,
          shape: CircleBorder(),
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Colors.blue.shade900,
            foregroundColor: Colors.white,
            child: Text(
              'S',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Micheal John',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(height: 8),
        Text(
          'michealjohn.gmail.com',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
