import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:page_transition/page_transition.dart';
import 'cart.dart';
import 'd_color.dart';

class ProDetalle extends StatefulWidget {
  final String titulo;
  final String descripcion;
  final String foto;
  final String precio;
  const ProDetalle(
      {Key? key,
      required this.titulo,
      required this.descripcion,
      required this.foto,
      required this.precio})
      : super(key: key);

  @override
  State<ProDetalle> createState() => _ProDetalleState();
}

class _ProDetalleState extends State<ProDetalle> {
  //double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Detalles",
          style: TextStyle(color: Colors.white),
        ),
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
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(25),
                child: Container(
                  width: 130,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.foto), fit: BoxFit.fill),
                  ),
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20, right: 20),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFEEEEEE),
                ),
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            )
          ]),
          Padding(
            padding: const EdgeInsets.all(0),
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.titulo,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Container(
                          width: 150,
                          child: Text(
                            "\$" + widget.precio,
                            maxLines: 1,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text("100 Reviews")
                    ]),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 400,
                        padding: const EdgeInsets.only(top: 3, left: 10),
                        child: Text(
                          widget.descripcion,
                          maxLines: 8,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        DColor(
                          fillColor: Colors.green,
                          //Color(0xFF80989A),
                          isSelected: true,
                        ),
                        DColor(
                          fillColor: Colors.grey,
                          //Color(0xFFFF5200),
                        ),
                        DColor(
                          fillColor: Colors.red,
                          //Color(0xFF035AA6),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 130, right: 130),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.yellow),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ))),
                        onPressed: () {},
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.archive_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Comprar')
                            ]),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
