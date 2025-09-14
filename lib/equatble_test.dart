import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EquatableTest extends StatefulWidget {
  const EquatableTest({super.key});

  @override
  State<EquatableTest> createState() => _EquatableTestState();
}

class _EquatableTestState extends State<EquatableTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
          Person p1= Person(name: "furqan", age: 22);
          Person p2= Person(name: "furqan", age: 22);
          print(p1.hashCode.toString());
          print(p2.hashCode.toString());
          print(p1==p2);
      }),
    );
  }
}


class Person extends Equatable{
  final String name;
  final int age;

  Person({required this.name, required this.age});

  @override
  // TODO: implement props
  List<Object?> get props => [name,age];
}
