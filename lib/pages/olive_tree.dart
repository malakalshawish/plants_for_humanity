import 'package:flutter/material.dart';

class OliveTree extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final String subcategory = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Olive Tree'),
        backgroundColor: const Color(0xFF2E4374),
      ),
      body: Column(
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
          const Text(
            'Description of the item goes here. '
                'Are own design entire former get should. Advantages boisterous day excellence boy. Out between our two waiting wishing. Pursuit he he garrets greater towards amiable so placing. Nothing off how norland delight. Abode shy shade she hours forth its use. Up whole of fancy ye quiet do. Justice fortune no to is if winding morning forming.',
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
    );
  }
}

