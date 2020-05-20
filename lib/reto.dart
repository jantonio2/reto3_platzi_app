import 'package:flutter/material.dart';
import 'contact_card.dart';
import 'custom_app_bar.dart';

class Reto extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "DESIGNERS",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white
          ),
        ),
        navigatorButton: IconButton(
            icon: Icon(
                Icons.menu,
                color: Colors.white
            ),
            onPressed: null
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              ContactCard("Juan Manuel", 7, "assets/img/chica.jpg", enable: false),
              Divider(),
              ContactCard("Nuria Sofia", 5, "assets/img/chica.jpg"),
              Divider(),
              ContactCard("Oscar Tito", 10, "assets/img/chica.jpg"),
              Divider(),
              ContactCard("Roberto Julian", 4, "assets/img/chica.jpg"),
              Divider(),
              ContactCard("Maria Alexandra", 15, "assets/img/chica.jpg"),
            ],
          )
        ],
      ),
    );
  }
}