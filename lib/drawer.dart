import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return  Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:<Widget> [
            UserAccountsDrawerHeader(
              accountName: Text("Sourav Sharma"),
              accountEmail: Text("Souravgopal25@gmail.com"),
              currentAccountPicture:CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80"),
              ) ,
            ),

            ListTile(leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("***@gmail.com"),
              trailing: Icon(Icons.send),
            ),
            ListTile(leading: Icon(Icons.confirmation_number),
              title: Text("Ticket"),
              trailing: Icon(Icons.shop),
            )
          ],
        ),
      );
  }

}