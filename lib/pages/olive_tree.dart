import 'package:flutter/material.dart';

class OliveTree extends StatelessWidget{
  const OliveTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Olive Tree'),
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
                        'Olive Tree',
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
              'It can be applied topically to soothe and moisturize skin, providing relief for minor wounds, burns, or skin irritations. The antimicrobial properties of oleuropein can be utilized to help disinfect wounds and prevent infection. It may also have anti-inflammatory effects, which can aid in managing injuries.',
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
              'Ensure you follow proper safety precautions when working with solvents. Work in a well-ventilated area and use appropriate protective gear.Quality Control: Regularly check the quality of the extraction through analytical techniques.Legality: Check local regulations as extraction processes might be subject to legal restrictions.reducing swelling.Analysis and Storage:Analyze the extracted oleuropein to determine its concentration. Store the final extract in a suitable container, preferably in a cool, dark place.',
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

