import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_app/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:ecommerce_app/common/widgets/images/t_rounded_images.dart';
import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:ecommerce_app/common/widgets/texts/section_headings.dart';

import 'package:ecommerce_app/features/shop/screens/widgets/home_appBar.dart';
import 'package:ecommerce_app/features/shop/screens/widgets/home_categories.dart';
import 'package:ecommerce_app/features/shop/screens/widgets/promoslider.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';

import 'package:ecommerce_app/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: TColors.grey.withOpacity(0.1),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ///--Header -- tutorial [section #3,video #2]
              const TPrimaryHeaderContainer(
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
                            ///Headings
                            TSectionHeading(
                              title: 'Popular Catrgories',
                              showActionButtons: false,
                              textColor: TColors.white,
                            ),
                            SizedBox(
                              height: TSizes.spaceBtwItems,
                            ),

                            THomeCategories()
                          ],
                        ))
                  ],
                ),
              ),
              // Body-- tutorial[section #3,video 5]
              Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    // promo slider
                    const TPromoSlider(
                      banners: [
                        TImages.promoBanner1,
                        TImages.promoBanner2,
                        TImages.promoBanner3,
                      ],
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),

                    // popular products
                    TGridLayout(
                        itemCount: 2,
                        itemBuilder: (_, index) => TProductCardVertical())
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
