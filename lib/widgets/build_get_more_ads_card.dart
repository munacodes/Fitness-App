import 'package:flutter/material.dart';

class BuildGetMoreAdsCard extends StatefulWidget {
  const BuildGetMoreAdsCard({super.key});

  @override
  State<BuildGetMoreAdsCard> createState() => _BuildGetMoreAdsCardState();
}

class _BuildGetMoreAdsCardState extends State<BuildGetMoreAdsCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Get more from Fit',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Icon(Icons.clear, size: 20),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  color: Colors.blue,
                ),
                SizedBox(width: 10),
                Text(
                  'Google Play',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              height: 50,
              width: double.infinity,
              child: Text(
                'Fit works well when you connect your other health & fitness apps. Find compatible apps on Google Play to help you stay healthy.',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Find apps on Google Play',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
