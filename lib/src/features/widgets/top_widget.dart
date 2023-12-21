import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({
    super.key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  }) : _scaffoldKey = scaffoldKey;

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: () {
                _scaffoldKey.currentState?.openDrawer();
              },
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/preview2.jpeg',
                        ),
                        fit: BoxFit.fill)),
              )),
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.bell_fill,
            ),
          ),
        ],
      ),
    );
  }
}
