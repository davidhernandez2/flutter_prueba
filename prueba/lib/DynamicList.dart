import 'package:flutter/material.dart';
import 'package:faker/faker.dart' as fk;

class Dynamiclist extends StatelessWidget {
  const Dynamiclist({super.key});

  @override
  Widget build(BuildContext context) {
    var faker = fk.Faker();
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Prueba de lista'),
        ),

      body: ListView.builder(
        itemCount: 10,
       itemBuilder: (context, index)  {
        return ListTile(
          contentPadding: const EdgeInsets.only(left: 8),
          leading: Icon(Icons.attach_money_outlined,
          color: Colors.purple
        ,),
        title: Text(' ${faker.person.name()}'),
        subtitle:  Text(
          'Monto: ${faker.randomGenerator.decimal(min: 50,
          scale: 500).toStringAsFixed(2)}'),
        );
       },
      )
    );
  }
}
