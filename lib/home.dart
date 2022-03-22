import 'package:flutter/material.dart';
import 'package:parcial2/widget/sidebarWidget.dart';

class HomeScreem extends StatefulWidget {
  @override
  State<HomeScreem> createState() => _HomeScreemState();
}

class _HomeScreemState extends State<HomeScreem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        title: Text('Comercial Sivar'),
        foregroundColor: Colors.black,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.shopping_bag_outlined), onPressed: () {})
          
        ],
      ),
      drawer: sidebarWiget(),
    );
  }
}
