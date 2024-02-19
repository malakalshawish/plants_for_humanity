
import 'package:flutter/material.dart';
import 'package:herbs_for_gaza/model/plant.dart';

class PlantDetails extends StatelessWidget {
  const PlantDetails({super.key, required this.plant});

  final Plant plant;

  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Padding(
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
                       Text(
                        plant.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Image.network(
                        plant.imageUrl, // Placeholder image URL
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
             Text(
              plant.uses,
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
                onPressed: (){
                  
                },
                child: Text('How to Extract'),
              ),
            )
          ],
        ),
      ),),
    );
  }
}