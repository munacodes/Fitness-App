import 'package:flutter/material.dart';

class BuildYourCurrentGoalProfileSection extends StatefulWidget {
  const BuildYourCurrentGoalProfileSection({super.key});

  @override
  State<BuildYourCurrentGoalProfileSection> createState() =>
      _BuildYourCurrentGoalProfileSectionState();
}

class _BuildYourCurrentGoalProfileSectionState
    extends State<BuildYourCurrentGoalProfileSection> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your current goal',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '1,200 steps',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.edit_outlined),
                        SizedBox(width: 10),
                        Text(
                          'Edit  goal',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
