import 'package:ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_app/common/widgets/texts/section_headings.dart';

import 'package:ecommerce_app/features/shop/screens/widgets/home_appBar.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

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
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///--SearchBar -- tutorial [section #3,video #4]
              TSearchContainer(
                text: 'Search in Store',
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///--Categories -- tutorial [section #3,video #4]
              Padding(
                  padding: EdgeInsets.only(
                    left: TSizes.defaultSpace,
                  ),
                  child: Column(
                    children: [
                      TSectionHeading(
                        title: 'Popular Catrgories',
                        showActionButtons: false,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      // stopped 16 min search bar and hor.....
                    ],
                  ))
            ],
          ))
        ],
      ),
    ));
  }
}
