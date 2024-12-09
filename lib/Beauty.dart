import 'package:flutter/material.dart';

void main(){
  runApp(BeautyScreen());
}

class BeautyScreen extends StatelessWidget {
  String items = '';
  @override
  Widget build(BuildContext context) {
    return Beauty(items: items);
  }
}

class Beauty extends StatefulWidget{
  String items = '';

  Beauty({required items}){
    this.items = items;
  }
  @override
  State<StatefulWidget> createState() {
    return BeautyState();
  }
}

class BeautyState extends State<Beauty>{
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
              children: List.generate(24, (index){
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