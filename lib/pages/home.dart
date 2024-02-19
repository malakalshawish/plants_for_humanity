import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:herbs_for_gaza/model/category.dart';
import 'package:herbs_for_gaza/model/plant.dart';
import 'package:herbs_for_gaza/pages/plants_details.dart';

 List<Plant> plants = [
Plant(title: "Olive", imageUrl: 'https://www.jacksonandperkins.com/images/xl/46044.webp', uses: 'Applied topically to soothe and moisturize skin, providing relief for minor wounds, burns, or skin irritations.The antimicrobial properties of oleuropein (the active ingredient) can be utilized to help disinfect wounds and prevent infection. It may also have anti-inflammatory effects, which can aid in managing injuries', considerations: 'Muscle discomfort', extract: '', ),
Plant(title: "Citrus Fruits", imageUrl: 'https://foodal.com/wp-content/uploads/2018/03/How-to-Select-Store-Prep-and-Use-Citrus-Fruit.jpg', uses: 'Reducing the risk of infections and supporting overall health during times of stress and hardship.', considerations: 'Allergic reactions can occur, ranging from mild itching to severe symptoms, and those with allergies should exercise caution. The acidic nature of citrus fruits can contribute to dental enamel erosion, so practicing good oral hygiene and rinsing the mouth after consumption is advisable. Individuals with gastroesophageal reflux disease (GERD) may experience symptom exacerbation,', extract: '', ),
Plant(title: "Pomegranate", imageUrl: 'https://www.health.com/thmb/B-e3r9wme2bVLalt0Kq_mUPBhN8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Pomegranate-fc75404736b446c5aa26194e1d2b1d0a.jpg', uses: 'potentially enhancing resilience and supporting recovery during wartime.Pomegranate juice can serve as a source of hydration and essential nutrients, especially in regions where access to clean water is limited', considerations: 'Store the final extract in a dark, cool place to maintain stability. Work in a well-ventilated area and use appropriate protective gear. Regularly check the quality of the extraction through analytical techniques.', extract: '', ),
Plant(title: "Bougainvillea", imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/4/4c/Bougainvillea_closeup.jpg', uses: 'They help stop bleeding, reduce inflammation, and promote the healing of cuts, scrapes, and minor injuries. They are antibacterial, antidiabetic, antifertility, antifungal, anti-inflammatory, antihyperlipidemic,antioxidantcantiulcer, antiviral, hepatoprotective, and thrombolytic activities.', considerations: 'Important Considerations:Safety: Ensure that the Bougainvillea leaves and flowers used are free from pesticides or other harmful substances.Skin Sensitivity: Test a small amount of the extract on a small area of skin to check for any adverse reactions before applying it to a larger wound.Consultation: If dealing with serious wounds or injuries, its advisable to consult with a healthcare professional before relying solely on traditional remedies.', extract: '', ),

 ];

 List<PlantCategory> categories = [
  PlantCategory(plants: [plants[0], plants[1]], title: 'Headache'),
  PlantCategory(plants: [plants[0], plants[2]], title: 'Cramps'),
  PlantCategory(plants: [plants[0], plants[1]], title: 'Disinfectant'),
  PlantCategory(plants: [plants[0], plants[3]], title: 'Anti-inflammation'),
  PlantCategory(plants: [plants[2]], title: 'Hydration'),
  PlantCategory(plants: [plants[3]], title: 'Bleeding and Healing')

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
        backgroundColor: Color.fromARGB(255, 4, 175, 81),
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
                color: Color.fromARGB(255, 6, 190, 30),
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
            color: Color.fromARGB(255, 2, 167, 68),
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
