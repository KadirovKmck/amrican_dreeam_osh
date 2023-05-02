import 'package:amrican_dreeam_osh/pagesAmericamApp/AmericanDreamOsh.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(American());
}
class American extends StatelessWidget {
  const American({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AmericanDreamOsh(),
    );
  }
}