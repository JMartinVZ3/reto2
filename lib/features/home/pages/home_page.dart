import 'package:flutter/material.dart';
import 'package:reto_2/common.dart';
import 'package:reto_2/features/home/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        TopWidget(),
        SizedBox(height: kDefaultPadding),
        BottomWidget(),
      ]),
    ));
  }
}
