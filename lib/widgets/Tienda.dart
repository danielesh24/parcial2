import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parcial2/Sillas.dart';
import 'package:parcial2/widgets/Detalles.dart';

class Sillas extends StatefulWidget {
  final dynamic sillaV;
  const Sillas({Key? key, this.sillaV}) : super(key: key);
  @override
  _SillasState createState() => _SillasState();
}

class _SillasState extends State<Sillas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getListaSillas(),
    );
  }

  getListaSillas() {
    return GridView.builder(
        itemCount: sillasList.length,
        primary: false,
        padding: EdgeInsets.zero,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          //crossAxisSpacing: 10
        ),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        alignment: Alignment.bottomCenter,
                        child: ProDetalle(
                          titulo: sillasList[index]['Titulo'],
                          descripcion: sillasList[index]['Descripcion'],
                          foto: sillasList[index]['Foto'],
                          precio: sillasList[index]['Precio'],
                        ),
                        type: PageTransitionType.scale));
              },
              child: Card(
                color: Color(0xFFEEEEEE),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Image(
                            width: 100,
                            height: 100,
                            image: AssetImage(sillasList[index]['Foto']),
                          ),
                          Text(
                            sillasList[index]['Titulo'],
                            style:
                                TextStyle(color: Colors.blueGrey, fontSize: 20),
                          ),
                          Center(
                              child: Text(
                            '\$' + sillasList[index]['Precio'],
                            style:
                                TextStyle(fontSize: 20, color: Colors.blueGrey),
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
