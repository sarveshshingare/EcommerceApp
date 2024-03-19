import 'package:ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';

import 'package:ecommerce_app/features/shop/screens/widgets/home_appBar.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          ///--Header -- tutorial [section #3,video #2]
          TPrimaryHeaderContainer(
              child: Column(
            children: [
              ///--AppBar -- tutorial [section #3,video #3]
              THomeAppBar(),

              ///--SearchBar -- tutorial [section #3,video #4]

              ///--Categories -- tutorial [section #3,video #4]
            ],
          ))
        ],
      ),
    ));
  }
}
