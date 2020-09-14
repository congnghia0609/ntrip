/*
 * Copyright 2020 nghiatc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

///
/// @author nghiatc
/// @since Sep 13, 2020

import 'package:flutter/material.dart';
import 'package:ntrip/components/place_card.dart';
import 'package:ntrip/components/section_title.dart';
import 'package:ntrip/models/TravelSpot.dart';
import '../../../size_config.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Right Now At Spark",
          press: () {},
        ),
        VerticalSpacing(
          of: 20,
        ),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                travelSpots.length,
                (index) => Padding(
                  padding: EdgeInsets.only(
                    left: getProportionateScreenWidth(20),
                  ),
                  child: PlaceCard(
                    travelSpot: travelSpots[index],
                    press: () {},
                  ),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(20),),
            ],
          ),
        ),
      ],
    );
  }
}

