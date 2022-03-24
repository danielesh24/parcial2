import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parcial2/Sillas.dart';
import 'package:parcial2/widgets/Tienda.dart';
import 'package:parcial2/widgets/cart.dart';
import 'package:parcial2/widgets/sidebarWidget.dart';
//import 'Paginas/header.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int Menu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Comercial Sivar"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined),
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      alignment: Alignment.bottomCenter,
                      child: Cart(),
                      type: PageTransitionType.scale));
            },
          ),
        ],
      ),
      drawer: sidebarWiget(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return Column(children: [
      Padding(
        padding: EdgeInsets.all(6),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  iconColor: Color.fromARGB(255, 75, 3, 104),
                  icon: Icon(Icons.search),
                  labelText: "Busqueda",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            )
          ],
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
              children: List.generate(OverList.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 25),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Menu = index;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      OverList[index],
                      style: TextStyle(
                          //color: Colors.grey,
                          fontSize: 15,
                          color: Menu == index ? Colors.green : Colors.grey,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Menu == index
                        ? Container(
                            width: 30,
                            height: 2,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(10)),
                          )
                        : Container()
                  ],
                ),
              ),
            );
          })),
        ),
      ),
      Expanded(
        child: Sillas(),
      )
    ]);
  }
}
