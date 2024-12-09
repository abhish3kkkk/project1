import 'package:flutter/material.dart';
import 'Beauty.dart';
import 'Books.dart';
import 'Electronics.dart';
import 'Groceries.dart';
import 'Toys_and_Games.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kharido.com',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {

  final List<String> items = [
    'Electronics',
    'Groceries',
    'Beauty',
    'Books',
    'Toys and Games',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Items List'),
        centerTitle: true,
      ),
      body: SafeArea(
        top: true,
        left: true,
        right: true,
        bottom: true,
        minimum: EdgeInsets.all(10),
        // child: Column(
        //   children: [
        //     ListTile(
        //       title: Text('${items.elementAt(0)}',
        //         style: TextStyle(
        //           fontWeight: FontWeight.bold,
        //           fontSize: 25,
        //         ),
        //       ),
        //       trailing: Icon(Icons.add_alert),
        //       contentPadding: EdgeInsets.all(15),
        //       style: ListTileStyle.list,
        //       shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(37),
        //         side: BorderSide(
        //           width: 2,
        //           color: Colors.black,
        //         ),
        //       ),
        //       focusColor: Colors.greenAccent,
        //       hoverColor: Colors.lightBlueAccent.shade700,
        //       onTap: (){
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => ItemDetail(itemName: items.elementAt(0)),
        //           ),
        //         );
        //       }
        //     ),
        //     Divider(),
        //     ListTile(
        //         title: Text('${items.elementAt(1)}',
        //           style: TextStyle(
        //             fontWeight: FontWeight.bold,
        //             fontSize: 25,
        //           ),
        //         ),
        //         trailing: Icon(Icons.add_alert),
        //         contentPadding: EdgeInsets.all(15),
        //         style: ListTileStyle.list,
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(37),
        //           side: BorderSide(
        //             width: 2,
        //             color: Colors.black,
        //           ),
        //         ),
        //         focusColor: Colors.greenAccent,
        //         hoverColor: Colors.lightBlueAccent.shade700,
        //         onTap: (){
        //           Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => ItemDetail(itemName: items.elementAt(1)),
        //             ),
        //           );
        //         }
        //     ),
        //     Divider(),
        //     ListTile(
        //         title: Text('${items.elementAt(2)}',
        //           style: TextStyle(
        //             fontWeight: FontWeight.bold,
        //             fontSize: 25,
        //           ),
        //         ),
        //         trailing: Icon(Icons.add_alert),
        //         contentPadding: EdgeInsets.all(15),
        //         style: ListTileStyle.list,
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(37),
        //           side: BorderSide(
        //             width: 2,
        //             color: Colors.black,
        //           ),
        //         ),
        //         focusColor: Colors.greenAccent,
        //         hoverColor: Colors.lightBlueAccent.shade700,
        //         onTap: (){
        //           Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => ItemDetail(itemName: items.elementAt(2)),
        //             ),
        //           );
        //         }
        //     ),
        //     Divider(),
        //     ListTile(
        //         title: Text('${items.elementAt(3)}',
        //           style: TextStyle(
        //             fontWeight: FontWeight.bold,
        //             fontSize: 25,
        //           ),
        //         ),
        //         trailing: Icon(Icons.add_alert),
        //         contentPadding: EdgeInsets.all(15),
        //         style: ListTileStyle.list,
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(37),
        //           side: BorderSide(
        //             width: 2,
        //             color: Colors.black,
        //           ),
        //         ),
        //         focusColor: Colors.greenAccent,
        //         hoverColor: Colors.lightBlueAccent.shade700,
        //         onTap: (){
        //           Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => ItemDetail(itemName: items.elementAt(3)),
        //             ),
        //           );
        //         }
        //     ),
        //     Divider(),
        //     ListTile(
        //         title: Text('${items.elementAt(4)}',
        //           style: TextStyle(
        //             fontWeight: FontWeight.bold,
        //             fontSize: 25,
        //           ),
        //         ),
        //         trailing: Icon(Icons.add_alert),
        //         contentPadding: EdgeInsets.all(15),
        //         style: ListTileStyle.list,
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(37),
        //           side: BorderSide(
        //             width: 2,
        //             color: Colors.black,
        //           ),
        //         ),
        //         focusColor: Colors.greenAccent,
        //         hoverColor: Colors.lightBlueAccent.shade700,
        //         onTap: (){
        //           Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => ItemDetail(itemName: items.elementAt(4)),
        //             ),
        //           );
        //         }
        //     ),
        //     Divider(),
        //   ],
        // ),

       child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
             switch (index){
               case 0 : {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     //builder: (context) => ItemDetail(itemName: items[index]),
                     builder: (context) => Electronics(items: items[index]),
                   ),
                 );
               } break;

               case 1 : {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     //builder: (context) => ItemDetail(itemName: items[index]),
                     builder: (context) => Groceries(items: items[index]),
                   ),
                 );
               } break;

               case 2 : {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     //builder: (context) => ItemDetail(itemName: items[index]),
                     builder: (context) => Beauty(items: items[index]),
                   ),
                 );
               } break;

               case 3 : {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     //builder: (context) => ItemDetail(itemName: items[index]),
                     builder: (context) => Books(items: items[index]),
                   ),
                 );
               } break;

               case 4 : {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     //builder: (context) => ItemDetail(itemName: items[index]),
                     builder: (context) => Toys(items: items[index]),
                   ),
                 );
               }break;
             }
            },
          );
        },
      ),
    ),
    );
  }
}

class ItemDetailScreen extends StatelessWidget {
  String items = '';
  @override
  Widget build(BuildContext context) {
    return ItemDetail(itemName: items);
  }
}

class ItemDetail extends StatefulWidget {
  String itemName = '';

  ItemDetail({required String itemName}){
    this.itemName = itemName;
  }
  @override
  State<StatefulWidget> createState() {
    return ItemDetailState();
  }
}

class ItemDetailState extends State<ItemDetail> {
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
              Text('${widget.itemName}',
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
      ),
    );
  }
}