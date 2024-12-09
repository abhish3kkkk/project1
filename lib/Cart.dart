import 'package:flutter/material.dart';

void main(){
  runApp(CartScreen());
}

class CartScreen extends StatelessWidget {
  List<Map<String , dynamic>> Items = [];
  @override
  Widget build(BuildContext context) {
    return Cart(CartItems: Items);
  }
}

class Cart extends StatefulWidget{

  List<Map<String , dynamic>> CartItems = [];

  Cart({required CartItems}){
    this.CartItems = CartItems;
  }

  @override
  State<StatefulWidget> createState() {
    return CartState();
  }
}

class CartState extends State<Cart>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.all(16),
                    leading: 
                  );
                },
              ),
            ),
            //Text('${widget.CartItems}'),
          ],
        ),
      ),
    );
  }
}