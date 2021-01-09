import 'package:flutter/material.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key key,
    this.title,
    this.onPress,
  }) : super(key: key);

  final String title;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWithCustomUnderline(text: title),
          FlatButton(
            onPressed: onPress,
            color: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
            ),
            child: Text(
              'Mais',
              style: TextStyle(
                color: Colors.white
              ),
            )
          )
        ],
      ),
    );
  }
}

class TextWithCustomUnderline extends StatelessWidget {
  const TextWithCustomUnderline({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 5.0
            ),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 7.0,
              margin: EdgeInsets.only(
                right: 5.0
              ),
              color: Theme.of(context).primaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}