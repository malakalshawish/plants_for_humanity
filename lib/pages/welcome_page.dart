import 'package:flutter/material.dart';
import 'package:herbs_for_gaza/pages/home.dart';


class WelcomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 4, 175, 81),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
        }, icon: const Icon(Icons.house_outlined)),
        title: const Text('Plants for Humanity'),
          actions: const [ Center (child: Text('About Us'),)]
      ),

    );
  }

}