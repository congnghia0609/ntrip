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
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ntrip/screens/events/events_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(kDefaultPadding),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavItem(
                icon: "assets/icons/calendar.svg",
                title: "Events",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventsScreen(),
                    ),
                  );
                },
              ),
              NavItem(
                icon: "assets/icons/chat.svg",
                title: "Chat",
                isActive: true,
                press: () {},
              ),
              NavItem(
                icon: "assets/icons/friendship.svg",
                title: "Friends",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String icon, title;
  final bool isActive;
  final GestureTapCallback press;

  const NavItem({
    Key key,
    @required this.icon,
    @required this.title,
    this.isActive = false,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(5),
        height: getProportionateScreenWidth(60),
        width: getProportionateScreenWidth(60),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isActive) kDefualtShadow],
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              height: 28,
              color: kTextColor,
            ),
            Spacer(),
            Text(
              title,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
