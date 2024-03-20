import 'package:ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_app/common/widgets/texts/section_headings.dart';

import 'package:ecommerce_app/features/shop/screens/widgets/home_appBar.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';

import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/utils/constants/image_strings.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      const TSectionHeading(
                        title: 'Popular Catrgories',
                        showActionButtons: false,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      ///categories
                      SizedBox(
                        height: 80,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return Column(
                                children: [
                                  Container(
                                    width: 56,
                                    height: 56,
                                    padding: EdgeInsets.all(TSizes.sm),
                                    decoration: BoxDecoration(
                                        color: TColors.white,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Center(
                                      child: Image(
                                        image: AssetImage(TImages.sportIcon),
                                        fit: BoxFit.cover,
                                        color: TColors.dark,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                      )
                    ],
                  ))
            ],
          ))
        ],
      ),
    ));
  }
}
