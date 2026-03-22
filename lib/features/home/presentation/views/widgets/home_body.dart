import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('lib/core/resources/images/Group 9.png'),
        TextFormField(decoration: InputDecoration()),
        Image.asset('name')
      ],
    );
  }
}
