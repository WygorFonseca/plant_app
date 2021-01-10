import 'package:flutter/material.dart';

// Componentes
import 'package:plant_app/components/HeaderWithSearch.dart';
import 'package:plant_app/components/TitleWithMoreBtn.dart';
import 'package:plant_app/components/BottomNavigationBar.dart';
import 'package:plant_app/pages/PlantDetailsPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: Body(),
      bottomNavigationBar: NavigationBarWidget()
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearch(size: size),
          TitleWithMoreButton(title: 'Recomendado', onPress: () {}),
          NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overscroll) {
              overscroll.disallowGlow();

              return true;
            },
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(right: 20.0),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RecommendedPlantCard(
                    name: 'Solange',
                    country: 'Rússia',
                    price: '16,90',
                    image: 'assets/images/planta_1.png',
                    onPress: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PlantDetailsPage()
                    )),
                  ),
                  RecommendedPlantCard(
                    name: 'Jéssica',
                    country: 'Brasil',
                    price: '16,90',
                    image: 'assets/images/planta_2.png',
                    onPress: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PlantDetailsPage()
                    )),
                  ),
                  RecommendedPlantCard(
                    name: 'Lexa',
                    country: 'Canadá',
                    price: '16,90',
                    image: 'assets/images/planta_3.png',
                    onPress: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PlantDetailsPage()
                    )),
                  )
                ],
              ),
            ),
          ),
          TitleWithMoreButton(title: 'Plantas em alta', onPress: () {}),
          NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overscroll) {
              overscroll.disallowGlow();

              return true;
            },
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(
                right: 20.0,
                bottom: 30.0
              ),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FeaturePlantCard(image: "assets/images/planta_bot_1.png", onPress: () {}),
                  FeaturePlantCard(image: "assets/images/planta_bot_0.png", onPress: () {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key key,
    this.onPress,
    @required this.image,
  }) : super(key: key);

  final String image;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(
          left: 20.0,
          top: 10.0,
          bottom: 10.0
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image)
          )
        ),
      ),
    );
  }
}

class RecommendedPlantCard extends StatelessWidget {
  const RecommendedPlantCard({
    Key key,
    this.onPress,
    @required this.name,
    @required this.price,
    @required this.image,
    @required this.country,
  }) : super(key: key);

  final String image, name, country, price;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: size.width * 0.4,
        margin: const EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          bottom: 50.0,
        ),
        child: Column(
          children: [
            Image.asset(image),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 30.0,
                    color: Theme.of(context).primaryColor.withOpacity(0.15)
                  )
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: <TextSpan> [
                        TextSpan(
                          text: '$name'.toUpperCase(),
                          style: Theme.of(context).textTheme.button
                        ),
                        TextSpan(
                          text: '\n$country'.toUpperCase(),
                          style: TextStyle(
                            color: Theme.of(context).primaryColor.withOpacity(0.5)
                          )
                        )
                      ]
                    )
                  ),
                  Text(
                    'R\$ $price',
                    style: Theme.of(context).textTheme.button.copyWith(
                      color: Theme.of(context).primaryColor
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}