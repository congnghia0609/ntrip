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
import 'package:ntrip/constants.dart';
import 'package:ntrip/models/TravelSpot.dart';
import 'package:ntrip/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(25),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              runSpacing: 20,
              children: [
                ...List.generate(
                  travelSpots.length,
                  (index) => PlaceCard(
                    travelSpot: travelSpots[index],
                    isFullCard: true,
                    press: () {},
                  ),
                ),
                Container(
                  height: getProportionateScreenWidth(350),
                  width: getProportionateScreenWidth(158),
                  decoration: BoxDecoration(
                    color: Color(0xFF6A6C93).withOpacity(0.09),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 2,
                      color: Color(0xFFFbE8F6),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: getProportionateScreenWidth(53),
                        width: getProportionateScreenWidth(53),
                        child: FlatButton(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60),
                          ),
                          color: kPrimaryColor,
                          onPressed: () {},
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: getProportionateScreenWidth(35),
                          ),
                        ),
                      ),
                      VerticalSpacing(of: 10,),
                      Text(
                        "Add New Place",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
