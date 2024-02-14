import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E4374),
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.house_outlined)),
        title: const Text('Plants for Humanity'),
        actions: const [ Center (child: Text('About Us'),)]
      ),
      body: ListsWithCards(),
    );
  }}

class ListsWithCards extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<List<String>> listsData = [
      ['headache', 'Item 2', 'Item 3'],
      ['stomach ache', 'Item B', 'Item C', 'Item D'],
      ['Item X', 'Item Y', 'Item Z'],
      ['Item P', 'Item Q', 'Item R'],
      ['Item M', 'Item N', 'Item O'],
    ];

    return ListView.builder(
      itemCount: listsData.length,
      itemBuilder: (context, index) {
        return CardList(listData: listsData[index]);
      },
    );
  }
  }

class CardList extends StatelessWidget{
  final List<String> listData;
  CardList({required this.listData});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          ListTile(
            title: Text(listData[0]),
          ),
          const Divider(),
          ListView.builder(
            itemCount: listData.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(listData[index]),
              );
            },
          ),
        ],
      ),
    );
  }
  }




