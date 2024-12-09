import 'package:flutter/material.dart';

class BuildHomeCards extends StatelessWidget {
  final String title;
  final String subtitle;
  final String text1;
  final String text2;
  final Widget container;
  final Function()? onTap;
  const BuildHomeCards({
    super.key,
    required this.title,
    required this.subtitle,
    required this.text1,
    required this.text2,
    required this.container,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            Text(subtitle),
            Row(
              children: [
                Column(
                  children: [
                    Text(text1),
                    Text(text2),
                  ],
                ),
                Container(
                  child: container,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
