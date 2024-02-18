import 'package:flutter/material.dart';

class Pomegranate extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pomegranate'),
        backgroundColor: const Color(0xFF2E4374),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Pomegranate',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Image.network(
                        'https://via.placeholder.com/150', // Placeholder image URL
                        fit: BoxFit.cover,
                        height: 150, // Adjust the height as per your need
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Uses:',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18.0,
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Potentially enhancing resilience and supporting recovery during wartime. Pomegranate juice can serve as a source of hydration and essential nutrients, especially in regions where access to clean water is limited.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 16.0),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Important Considerations:',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18.0,
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Analyze the extracted punicalagins and polyphenols using suitable analytical instruments like HPLC to determine their concentration and purity.Store the final extract in a dark, cool place to maintain stability.Important Considerations:Safety: Follow safety protocols when working with solvents. Work in a well-ventilated area and use appropriate protective gearQuality Control: Regularly check the quality of the extraction through analytical techniques.Legality: Ensure compliance with local regulations, as extraction processes may be subject to legal restrictions.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: (){},
                child: Text('How to Extract'),
              ),
            )
          ],
        ),
      ),
    );
  }

}