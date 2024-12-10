import 'package:flutter/material.dart';

class DiscoverSection extends StatefulWidget {
  const DiscoverSection({super.key});

  @override
  State<DiscoverSection> createState() => _DiscoverSectionState();
}

class _DiscoverSectionState extends State<DiscoverSection> {
  _buildStayHealthyCard() {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'A simple way to stay healthy',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Icon(Icons.clear, size: 18),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.favorite, color: Colors.red),
                  SizedBox(width: 5),
                  Text('Welcome to Fit'),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Heart Points helps you see which activites are best for your health, and how you\'re preforming against American Heart Association recommendations.',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'See Recommendations',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildHowMuchSleepCard() {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How much sleep you need',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Icon(Icons.clear, size: 18),
                  Icon(Icons.arrow_forward_ios, size: 18),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                width: 100,
                color: Colors.orange,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 200,
                    child: Text(
                      'Learn which factors affect sleep needs, and how to find the right amount for you.',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 100,
                    color: Colors.pink,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildStayFitCard() {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    // Controls visual overflow
                    overflow: TextOverflow.clip,

                    // Controls how the text should be aligned horizontally
                    textAlign: TextAlign.end,

                    // Control the text direction
                    textDirection: TextDirection.rtl,

                    // Whether the text should break at soft line breaks
                    softWrap: true,

                    // Maximum number of lines for the text to span
                    maxLines: 1,

                    // The number of font pixels for each logical pixel
                    //  textScaleFactor: 1,
                    text: TextSpan(
                      text: 'Hello ',
                      style: DefaultTextStyle.of(context).style,
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'Geeks',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.clear, size: 18),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                width: 100,
                color: Colors.orange,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 200,
                    child: Text(
                      'Learn which factors affect sleep needs, and how to find the right amount for you.',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 100,
                    color: Colors.pink,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildStayHealthyCard(),
        SizedBox(height: 10),
        _buildHowMuchSleepCard(),
        SizedBox(height: 10),
        _buildStayFitCard(),
      ],
    );
  }
}
