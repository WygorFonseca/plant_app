import 'package:flutter/material.dart';

class PlantDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 60.0
              ),
              child: SizedBox(
                height: size.height * 0.8,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).padding.top + 20.0
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: IconButton(
                                icon: Icon(Icons.arrow_back),
                                onPressed: () {},
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0
                                ),
                              ),
                            ),
                            Spacer(),
                            IconCard(icon: Icons.ac_unit),
                            IconCard(icon: Icons.ac_unit),
                            IconCard(icon: Icons.ac_unit),
                            IconCard(icon: Icons.ac_unit),
                          ],
                        ),
                      )
                    ),
                    Container(
                      height: size.height * 0.80,
                      width: size.width * 0.75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(64.0),
                          bottomLeft:  Radius.circular(64.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 60,
                            color: Theme.of(context).primaryColor.withOpacity(0.29)
                          )
                        ],
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          alignment: Alignment.centerLeft,
                          image: AssetImage("assets/images/planta_0.png")
                        )
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "Angélica\n",
                          style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Color(0xFF4e4e4e),
                            fontWeight: FontWeight.bold
                          )
                        ),
                        TextSpan(
                          text: "Rússia",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w300
                          )
                        )
                      ]
                    )
                  ),
                  Spacer(),
                  Text(
                    "R\$ 16.0",
                    style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Theme.of(context).primaryColor
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                SizedBox(
                  width: size.width / 2,
                  height: 84,
                  child: FlatButton(
                    shape: const RoundedRectangleBorder(
                      borderRadius: const BorderRadius.only(
                        topRight: const Radius.circular(20.0)
                      )
                    ),
                    child: Text(
                      "Compre agora",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0
                      ),
                    ),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: size.width / 2,
                  height: 84,
                  child: FlatButton(
                    shape: const RoundedRectangleBorder(
                      borderRadius: const BorderRadius.only(
                        topLeft: const Radius.circular(20.0)
                      )
                    ),
                    child: Text(
                      "Descrição",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16.0
                      ),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class IconCard extends StatelessWidget {
  const IconCard({
    Key key,
    @required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: 62,
      height: 62,
      margin: EdgeInsets.symmetric(
        vertical: size.height * 0.03
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColor.withOpacity(0.22),
            offset: Offset(0, 15),
            blurRadius: 22.0,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-15, -15),
            blurRadius: 20.0,
          ),
        ]
      ),
      child: Icon(icon),
    );
  }
}