import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {

  final String name;
  final int experience;
  final String pathImage;
  final bool enable;

  ContactCard(this.name, this.experience, this.pathImage, {this.enable = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Row(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(pathImage),
                    fit: BoxFit.cover
                )
            ),
          ),
          Container(width: 12),
          Flexible(
            fit: FlexFit.tight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                ),
                Container(height: 8.0),
                Text("Experience: ${experience < 10 ? "0" : ""}$experience years")
              ],
            ),
          ),
          Container(
            height: 40,
            width: 40,
            child: Center(
              child: Icon(
                  Icons.mail,
                  color: enable ? Colors.white : Colors.black45
              ),
            ),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: enable ? Colors.red : Colors.grey.withOpacity(0.5)
            ),
          )
        ],
      ),
    );
  }
}