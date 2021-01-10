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
            icon: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXNSH0bNSacDv7Q3Ew0_WxzPVMg0rt6kozoA&usqp=CAU"),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.follow_the_signs),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}