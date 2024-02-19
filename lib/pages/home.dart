import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:herbs_for_gaza/model/category.dart';
import 'package:herbs_for_gaza/model/plant.dart';
import 'package:herbs_for_gaza/pages/plants_details.dart';

 List<Plant> plants = [
Plant(title: "Olive", imageUrl: 'asdada', uses: 'sadadasd', considerations: '', extract: '', ),
Plant(title: "Citrus", imageUrl: 'asdada', uses: '', considerations: '', extract: '', ),
Plant(title: "Pomegranate", imageUrl: 'asdada', uses: '', considerations: '', extract: '', ),
 ];

 List<PlantCategory> categories = [
  PlantCategory(plants: [plants[0], plants[1]], title: 'Headache')
    // {
    //   'name': 'Headache',
    //   'subcategories': [plants[0], plants[1]]
    // },
    // {
    //   'name': 'Cramps',
    //   'subcategories': ['Olive Tree', 'Pomegranate']
    // },
    // {
    //   'name': 'Disinfectant',
    //   'subcategories': ['Olive Tree', 'Citrus Fruits']
    // },
    // {
    //   'name': 'Anti-inflammation',
    //   'subcategories': ['Olive Tree', 'Bougainvillea']
    // },
    // {
    //   'name': 'Hydration',
    //   'subcategories': ['Pomegranate']
    // },
    // {
    //   'name': 'Bleeding and Healing',
    //   'subcategories': ['Bougainvillea']
    // },
  ];

class Home extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E4374),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.house_outlined),
        ),
        title: const Text('Plants for Humanity'),
        actions: [
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/aboutus');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.info_outline),
              ),
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
            title: Text(
              categories[index].title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            children: _buildSubcategoriesList(
                categories[index].plants, context),
          );
        },
      ),
    );
  }
}

List<Widget> _buildSubcategoriesList(
    List<Plant> subcategories, BuildContext context) {
  return subcategories.map((subcategory) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ListTile(
        title: Text(
          subcategory.title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => PlantDetails(plant: subcategory,)));
          // if (subcategory == 'Olive Tree') {
          //   Navigator.pushNamed(context, '/olive', arguments: subcategory);
          // } else if (subcategory == 'Citrus Fruits') {
          //   Navigator.pushNamed(context, '/citrus', arguments: subcategory);
          // } else if (subcategory == 'Pomegranate') {
          //   Navigator.pushNamed(context, '/pomegranate', arguments: subcategory);
          // } else if (subcategory == 'Bougainvillea') {
          //   Navigator.pushNamed(context, '/bougainvillea', arguments: subcategory);
          // }
        },
      ),
    );
  }).toList();
}
