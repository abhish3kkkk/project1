import 'package:flutter/material.dart';
import 'Cart.dart';

void main(){
  runApp(ElectronicsScreen());
}

class ElectronicsScreen extends StatelessWidget {
  String items = '';

  @override
  Widget build(BuildContext context) {
    return Electronics(items: items);
  }
}

class Electronics extends StatefulWidget{
  String items = '';

  Electronics({required items}){
    this.items = items;
  }
  @override
  State<StatefulWidget> createState() {
    return ElectronicsState();
  }
}

class ElectronicsState extends State<Electronics>{

  List<Map<String , dynamic>> cartItem = [];

  List<Map<String , dynamic>> electronicItem = [
    {'Air Purifier' : 14999},
    {'Air Conditioner' : 19999},
    {'Alarm Clock' : 499},
    {'PowerBank' : 999},
    {'Blender' : 5999},
    {'Bulb' : 249},
    {'Washing Machine' : 13999},
    {'Laptops' : 44999},
    {'Cameras' : 24999},
    {'DVD Player' : 899},
    {'Earphones' : 1299},
    {'Trimmer' : 899},
    {'Exhaust Fan' : 799},
    {'Fan' : 3499},
    {'Juicer' : 2499},
    {'Ipod' : 899},
    {'Iron' : 1299},
    {'Kettle' : 699},
    {'Hair Dryer' : 1499},
    {'Printer' : 5999},
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
              Badge(
                label: Text('${widget.items.length}'),
                child: IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Cart(CartItems: cartItem)
                        ),
                      );
                    }
                ),
              ),

            ],
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: GridView.count(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 3,
            children: List.generate(electronicItem.length, (index){
              return GestureDetector(
                onTap:(){
                  cartItem.add(electronicItem[index]);
                },
                child: Card(
                  shadowColor: Colors.black,
                  elevation: 7,
                  child : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${electronicItem[index].keys}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('${electronicItem[index].values}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),

              );
            })
        ),
        ),
      ),
    );
  }
}