//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:herbs_for_gaza/model/category.dart';
import 'package:herbs_for_gaza/model/plant.dart';
import 'package:herbs_for_gaza/pages/plants_details.dart';

 List<Plant> plants = [

Plant(title: "Olive", imageUrl: 'https://www.jacksonandperkins.com/images/xl/46044.webp', uses: 'Applied topically to soothe and moisturize skin, providing relief for minor wounds, burns, or skin irritations.The antimicrobial properties of oleuropein (the active ingredient) can be utilized to help disinfect wounds and prevent infection. It may also have anti-inflammatory effects, which can aid in managing injuries', considerations: 'Safety: Ensure you follow proper safety precautions when working with solvents. Work in a well-ventilated area and use appropriate protective gear.\nQuality Control: Regularly check the quality of the extraction through analytical techniques.\nLegality: Check local regulations as extraction processes might be subject to legal restrictions.reducing swelling.\nAnalysis and Storage: Analyze the extracted oleuropein to determine its concentration. Store the final extract in a suitable container, preferably in a cool, dark place.', extract: '1. Obtain Olive Oil: Start with a good quality extra virgin olive oil. The oleuropein content will vary based on the olive variety, ripeness, and processing methods.\n2. Select a Solvent: Choose a suitable solvent such as ethanol or methanol. Ethanol is often preferred for its lower toxicity.\n3. Mixing and Agitation: Mix the olive oil with the chosen solvent. Agitate the mixture to ensure good contact between the solvent and the oil.\n4. Separation: Allow the mixture to settle, and then use a separatory funnel to separate the solvent phase (containing oleuropein) from the olive oil.\n5. Evaporation:Use a rotary evaporator to remove the solvent from the extracted phase. This leaves behind a concentrated oleuropein extract.\n6. Filtration: Filter the extract to remove any solid impurities.', ),
Plant(title: "Citrus Fruits", imageUrl: 'https://foodal.com/wp-content/uploads/2018/03/How-to-Select-Store-Prep-and-Use-Citrus-Fruit.jpg', uses: 'Reducing the risk of infections and supporting overall health during times of stress and hardship.', considerations: 'The effects are relatively short-term, and regular consumption is necessary to maintain optimal immune function.\nAllergic reactions can occur, ranging from mild itching to severe symptoms, and those with allergies should exercise caution. The acidic nature of citrus fruits can contribute to dental enamel erosion, so practicing good oral hygiene and rinsing the mouth after consumption is advisable. Individuals with gastroesophageal reflux disease (GERD) may experience symptom exacerbation.', extract: '---', ),
Plant(title: "Pomegranate", imageUrl: 'https://www.health.com/thmb/B-e3r9wme2bVLalt0Kq_mUPBhN8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Pomegranate-fc75404736b446c5aa26194e1d2b1d0a.jpg', uses: 'Potentially enhancing resilience and supporting recovery during wartime. Pomegranate juice can serve as a source of hydration and essential nutrients, especially in regions where access to clean water is limited', considerations: 'Analyze the extracted punicalagins and polyphenols using suitable analytical instruments like HPLC to determine their concentration and purity. Store the final extract in a dark, cool place to maintain stability.\nSafety: Follow safety protocols when working with solvents. Work in a well-ventilated area and use appropriate protective gear.\nQuality Control: Regularly check the quality of the extraction through analytical techniques.\nLegality: Ensure compliance with local regulations, as extraction processes may be subject to legal restrictions.', extract: '1. Obtain Pomegranates: Use fresh and ripe pomegranates for maximum punicalagin and polyphenol content.\n2. Extract Juice: Use a blender or juicer to extract the juice from the pomegranates. The juice contains punicalagins and polyphenols.\n3. Choose a Solvent: Select a suitable solvent for extraction, such as ethanol or methanol.\n4. Mixing and Agitation: Mix the pomegranate juice with the chosen solvent. Agitate the mixture to enhance the contact between the solvent and the compounds.\n5. Separation: Use a separatory funnel or a centrifuge to separate the solvent-extract phase from the remaining juice components.\n6. Evaporation: Employ a rotary evaporator to remove the solvent from the extracted phase, leaving behind a concentrated extract.\n7. Filtration: Filter the concentrated extract to remove any solid particles or impurities.', ),
Plant(title: "Bougainvillea", imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/4/4c/Bougainvillea_closeup.jpg', uses: 'They help stop bleeding, reduce inflammation, and promote the healing of cuts, scrapes, and minor injuries. They are antibacterial, antidiabetic, antifertility, antifungal, anti-inflammatory, antihyperlipidemic, antioxidantcantiulcer, antiviral, hepatoprotective, and thrombolytic activities.', considerations: 'Safety: Ensure that the Bougainvillea leaves and flowers used are free from pesticides or other harmful substances. \nSkin Sensitivity: Test a small amount of the extract on a small area of skin to check for any adverse reactions before applying it to a larger wound.\nConsultation: If dealing with serious wounds or injuries, its advisable to consult with a healthcare professional before relying solely on traditional remedies.', extract: '1. Harvest Bougainvillea Leaves and Flowers: Collect fresh Bougainvillea leaves and flowers. Ensure they are free from contaminants and pesticides.\n2. Crushing and Grinding: Crush and grind the Bougainvillea leaves and flowers using a mortar and pestle or a blender. This helps release the natural compounds with astringent properties.\n3. Prepare the Extract: Add the crushed material to clean water. The ratio of leaves and flowers to water may vary, but start with a small quantity and adjust as needed. Allow it to soak for several hours or overnight.\n4. Strain the Solution: After soaking, strain the solution using a strainer or cheesecloth to remove solid particles, leaving a liquid extract.', ),

 ];

 List<PlantCategory> categories = [
  PlantCategory(plants: [plants[0], plants[1]], title: 'Headache'),
  PlantCategory(plants: [plants[0], plants[2]], title: 'Cramps'),
  PlantCategory(plants: [plants[0], plants[1]], title: 'Disinfectant'),
  PlantCategory(plants: [plants[0], plants[3]], title: 'Anti-inflammation'),
  PlantCategory(plants: [plants[2]], title: 'Hydration'),
  PlantCategory(plants: [plants[3]], title: 'Bleeding and Healing')

    
  ];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 175, 81),
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
              child: const Padding(
                padding: EdgeInsets.all(8.0),
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
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 6, 190, 30),
              ),
            ),
            children:
                _buildSubcategoriesList(categories[index].plants, context),
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
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 2, 167, 68),
          ),
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => PlantDetails(
                        plant: subcategory,
                      )));
        },
      ),
    );
  }).toList();
}
