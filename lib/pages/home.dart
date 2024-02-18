import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {
      'name': 'Headache',
      'subcategories': ['Olive Tree', 'Citrus Fruits', 'Pomegranate']
    },
    {
      'name': 'Cramps',
      'subcategories': ['Olive Tree', 'Pomegranate']
    },
    {
      'name': 'Disinfectant',
      'subcategories': ['Olive Tree', 'Citrus Fruits']
    },
    {
      'name': 'Anti-inflammation',
      'subcategories': ['Olive Tree', 'Bougainvillea']
    },
    {
      'name': 'Hydration',
      'subcategories': ['Pomegranate']
    },
    {
      'name': 'Bleeding and Healing',
      'subcategories': ['Bougainvillea']
    },
  ];

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
              categories[index]['name'],
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            children: _buildSubcategoriesList(
                categories[index]['subcategories'], context),
          );
        },
      ),
    );
  }
}

List<Widget> _buildSubcategoriesList(
    List<String> subcategories, BuildContext context) {
  return subcategories.map((subcategory) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ListTile(
        title: Text(
          subcategory,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
        onTap: () {
          if (subcategory == 'Olive Tree') {
            Navigator.pushNamed(context, '/olive', arguments: subcategory);
          } else if (subcategory == 'Citrus Fruits') {
            Navigator.pushNamed(context, '/citrus', arguments: subcategory);
          } else if (subcategory == 'Pomegranate') {
            Navigator.pushNamed(context, '/pomegranate', arguments: subcategory);
          } else if (subcategory == 'Bougainvillea') {
            Navigator.pushNamed(context, '/bougainvillea', arguments: subcategory);
          }
        },
      ),
    );
  }).toList();
}
