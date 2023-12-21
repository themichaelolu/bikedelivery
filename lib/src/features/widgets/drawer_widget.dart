// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: ListView(children: [
          Container(
            height: 100,
            width: 100,
            child: Row(
              children: [
                Container(
                  width: 125,
                  height: 70,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/preview2.jpeg'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Michael',
                      style: TextStyle(
                        color: Color(0xFF092C4C),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //       border: Border.all(color: Colors.black),
                    //       borderRadius: BorderRadius.circular(30)),
                    //   child: TextButton.icon(
                    //       label: Text(
                    //         'Edit Profile',
                    //         style: TextStyle(
                    //           color: Theme.of(context).primaryColor,
                    //           fontSize: 14,
                    //           fontFamily: 'Inter',
                    //           fontWeight: FontWeight.w700,
                    //           height: 0,
                    //         ),
                    //       ),
                    //       onPressed: () {},
                    //       icon: Icon(
                    //         CupertinoIcons.pencil,
                    //         color: Theme.of(context).primaryColor,
                    //       ),
                    //       style: ButtonStyle()),
                    // ),
                  ],
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.person),
            title: Text('Your Profile'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(CupertinoIcons.list_bullet),
            title: Text('Your Orders'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(CupertinoIcons.clock),
            title: Text('Track Orders'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(CupertinoIcons.settings),
            title: Text('Settings'),
            onTap: () {},
          ),
        ]),
      ),
    );
  }
}
