import 'package:flutter/material.dart';

class HeaderWithSearch extends StatelessWidget {
  const HeaderWithSearch({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      margin: EdgeInsets.only(
        bottom: 20.0 * 2.5
      ),
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.2 - 27,
            padding: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              bottom: 56.0
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32.0),
                bottomRight: Radius.circular(32.0),
              )
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Olá Wygor!',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 54,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 50,
                    offset: Offset(0, 10),
                    color: Theme.of(context).primaryColor.withOpacity(0.23),
                  ),
                ],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TextField(
                onChanged: (value) {

                },
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "Pesquisar",
                  hintStyle: TextStyle(
                    height: 3.2,
                    color: Theme.of(context).primaryColor.withOpacity(0.5),
                  ),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: Icon(Icons.search)
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}