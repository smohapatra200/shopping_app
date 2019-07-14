import 'package:flutter/material.dart';
import 'package:shopping_app/src/screens/service_screen/services_cat.dart';

class CategoryCard extends StatelessWidget {
  final String cardName, cardUrl;

  CategoryCard(this.cardName, this.cardUrl);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      padding: const EdgeInsets.all(1),
      child: Card(
        child: InkWell(
          onTap: () {
            
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ServicesCat('$cardName')),
            );
          },
          child: Column(
            children: <Widget>[
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Image.network('$cardUrl')],
              )),
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    this.cardName,
                    textAlign: TextAlign.center,
                  ))
                ],
              )),
            ],
          ),
        ),
      ),
      height: 150,
    );
  }
}
