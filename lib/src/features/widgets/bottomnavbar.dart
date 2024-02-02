// ignore_for_file: non_constant_identifier_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0,
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                color: Colors.black,
                width: 165,
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.shopping_cart,
                    color: Colors.white,
                  ),
                  label: Text(
                    'ADD TO CART',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter'),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: 190,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.list_bullet,
                    color: Colors.black,
                  ),
                  label: Text(
                    'ADD TO WISHLIST',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter'),
                  ),
                ),
              ),
            ),
          ],
        ),
        height: 50,
      ),
    );
  }
}
