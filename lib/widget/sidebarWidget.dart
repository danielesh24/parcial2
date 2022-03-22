import 'package:flutter/material.dart';

class sidebarWiget extends StatelessWidget {
  const sidebarWiget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: [
          new UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/img_1.jpg'),
              ),
              accountName: Text(
                'danielCode ',
                style: TextStyle(fontSize: 30),
              ),
              accountEmail: Text('danielCode@gmail.com')),
          ListTile(
            title: Text('Home'),
            onTap: () {},
          ),
          ListTile(
            title: Text('About'),
            onTap: () {},
          ),
          ListTile(
            title: Text('contact Us'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
