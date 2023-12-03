import 'package:drawer/fav.dart';
import 'package:drawer/history.dart';
import 'package:drawer/home.dart';
import 'package:drawer/logout.dart';
import 'package:drawer/profile.dart';
import 'package:drawer/setting.dart';
import 'package:flutter/material.dart';

class drawer_view extends StatefulWidget {
  const drawer_view({super.key});

  @override
  State<drawer_view> createState() => _drawer_viewState();
}

class _drawer_viewState extends State<drawer_view> {
  Widget mainWidget = drawer_view();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.pink,
      //   title: Text("Drawer"),
      // ),
      body: Container(
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Fatima"),
                accountEmail: Text("fatimakhanani28@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image(
                      image: AssetImage(
                          "assets/images/WhatsApp Image 2023-11-16 at 12.43.59 AM.jpeg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.pink,
                    image: DecorationImage(
                        image: AssetImage("assets/images/grass.jpeg"),
                        fit: BoxFit.cover)),
              ),
              ListTile(
                title: Text('Home'),
                 leading: Icon(Icons.home),
                 onTap: () {
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context) => home_view()));
                 }),
                 ListTile(
                 title: Text('History'),
                 leading: Icon(Icons.history),
                 onTap: () {
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context) => history_view()));
                 }),
             ListTile(
                 title: Text('profile'),
                 leading: Icon(Icons.person),
                 onTap: () {
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context) => profile_view()));
                 }),
             ListTile(
                 title: Text('settings'),
                 leading: Icon(Icons.settings),
                 onTap: () {
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context) => setting_view()));
                 }),
             ListTile(
                 title: Text('favourities'),
                 leading: Icon(
                   Icons.favorite,
                   color: Colors.red,
                 ),
                 onTap: () {
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context) => favourit_view()));
                 }),
             ListTile(
                 title: Text('Logout'),
                 leading: Icon(Icons.logout),
                 onTap: () {
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context) => logout_view()));
                 }),

                 
            ],
          ),
        ),
      ),


// drawer formation code ye he.....

      // drawer: Drawer(
      //   child: Column(
      //     children: [
      //       ListTile(
      //           title: Text('Home'),
      //           leading: Icon(Icons.home),
      //           onTap: () {
      //             Navigator.push(context,
      //                 MaterialPageRoute(builder: (context) => home_view()));
      //           }),
      //       ListTile(
      //           title: Text('History'),
      //           leading: Icon(Icons.history),
      //           onTap: () {
      //             Navigator.push(context,
      //                 MaterialPageRoute(builder: (context) => history_view()));
      //           }),
      //       ListTile(
      //           title: Text('profile'),
      //           leading: Icon(Icons.person),
      //           onTap: () {
      //             Navigator.push(context,
      //                 MaterialPageRoute(builder: (context) => profile_view()));
      //           }),
      //       ListTile(
      //           title: Text('settings'),
      //           leading: Icon(Icons.settings),
      //           onTap: () {
      //             Navigator.push(context,
      //                 MaterialPageRoute(builder: (context) => setting_view()));
      //           }),
      //       ListTile(
      //           title: Text('favourities'),
      //           leading: Icon(
      //             Icons.favorite,
      //             color: Colors.red,
      //           ),
      //           onTap: () {
      //             Navigator.push(context,
      //                 MaterialPageRoute(builder: (context) => favourit_view()));
      //           }),
      //       ListTile(
      //           title: Text('Logout'),
      //           leading: Icon(Icons.logout),
      //           onTap: () {
      //             Navigator.push(context,
      //                 MaterialPageRoute(builder: (context) => logout_view()));
      //           }),
      //     ],
      //   ),
      // ),
    );
  }
}
