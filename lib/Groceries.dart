import 'package:flutter/material.dart';

void main(){
  runApp(GroceriesScreen());
}

class GroceriesScreen extends StatelessWidget {
  String items = '';
  @override
  Widget build(BuildContext context) {
    return Groceries(items: items);
  }
}

class Groceries extends StatefulWidget{
  String items = '';

  Groceries({required items}){
    this.items = items;
  }
  @override
  State<StatefulWidget> createState() {
    return GroceriesState();
  }
}

class GroceriesState extends State<Groceries>{
  List<Map<String , dynamic>> GroceriesList = [
    {'Wheat' : 45},
    {'Rice' : 50},
    {'Apples' : 120},
    {'Avacado' : 250},
    {'Onion' : 60},
    {'Flour ' : 170},
    {'Honey' : 390},
    {'Powdered Sugar' : 130},
    {'Corn' : 70},
    {'Chiken' : 280},
    {'Mutton' : 760},
    {'Tuna' : 350},
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BackButton(
                  onPressed: (){
                    Navigator.pop(
                      context,
                    );
                  }
              ),
              Text('${widget.items}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: (){

                  }
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child:  GridView.count(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 3,
              children: List.generate(GroceriesList.length, (index){
                return Card(
                  shadowColor: Colors.black,
                  elevation: 7,
                  child: Container(

                  ),
                );
              })
          ),
        ),
      ),
    );
  }
}