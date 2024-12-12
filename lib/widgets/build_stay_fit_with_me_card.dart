import 'package:flutter/material.dart';

class BuildStayFitWithMeCard extends StatefulWidget {
  const BuildStayFitWithMeCard({super.key});

  @override
  State<BuildStayFitWithMeCard> createState() => _BuildStayFitWithMeCardState();
}

class _BuildStayFitWithMeCardState extends State<BuildStayFitWithMeCard> {
  _buildAdvertProductCard({
    required Color? color,
  }) {
    return Card(
      child: Container(
        height: 80,
        width: 100,
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          color: Colors.red,
                        ),
                        SizedBox(width: 10),
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
                            text: 'STAYFIT',
                            style: Theme.of(context).textTheme.titleMedium,
                            children: const <TextSpan>[
                              TextSpan(
                                text: '#WITH ME',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.clear, size: 18),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildAdvertProductCard(color: Colors.cyan),
                    SizedBox(height: 10),
                    _buildAdvertProductCard(color: Colors.orange),
                    SizedBox(height: 10),
                    _buildAdvertProductCard(color: Colors.cyan),
                    SizedBox(height: 10),
                    _buildAdvertProductCard(color: Colors.orange),
                  ],
                ),
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
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  Container(
                    height: 60,
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
}
