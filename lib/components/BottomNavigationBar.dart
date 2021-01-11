import 'package:flutter/material.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      // padding: const EdgeInsets.only(
      //   left: 40.0,
      //   right: 40.0,
      // ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 24.0,
            offset: Offset(0, -10),
            color: Theme.of(context).primaryColor.withOpacity(0.15)
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Image.network("https://d1nhio0ox7pgb.cloudfront.net/_img/g_collection_png/standard/512x512/plant.png", width: 32,),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset("assets/images/heart.png"),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset("assets/images/profile.png"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}