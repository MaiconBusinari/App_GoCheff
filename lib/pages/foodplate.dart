import 'package:flutter/material.dart';
import 'package:customer_app/ui/data/custom_colors.dart';
import '../utils/ellipsis_text.dart';
import 'package:customer_app/services/cheff.dart';
import 'package:customer_app/pages/cheff.dart';

class FoodPlatePage extends StatelessWidget {
  const FoodPlatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10.0),
                  Container(
                    padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios, size: 22.0, color: Colors.black),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.only(top: 16.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: CustomColors.secondary,
                    ),
                    child: Icon(
                      Icons.fastfood,
                      size: 100.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 50.0),
                  Text(
                    "Lorem Ipsum",
                    style: TextStyle(
                      fontSize: 26.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
                    child: Text(
                      'R\$ 20,00',
                      style: TextStyle(
                        color: CustomColors.secondary,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Descrição ',
                          style: TextStyle(
                            color: CustomColors.black,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w200,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit leo',
                          style: TextStyle(
                            color: CustomColors.gray,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Ingredientes',
                          style: TextStyle(
                            color: CustomColors.black,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w200,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit leo ante, vitae interdum tellus efficitur ut. Aliquam eu sapien ac quam blandit rutrum vel eget dui.',
                          style: TextStyle(
                            color: CustomColors.gray,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16.0),
            width: 300,
            height: 70,
            child: ElevatedButton(
    onPressed: () {
    Navigator.of(context).pop();
    },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(CustomColors.secondary),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 16),
                ),
              ),
              child: Text(
                'Adicionar ao carrinho',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}