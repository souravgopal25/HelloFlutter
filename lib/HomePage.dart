import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController=TextEditingController();
  var myText="Email";
  @override
  void initState() {

    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title:  Text("Hello Flutter"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(

            child: Column(
              children: <Widget>[
                Image.asset("assets/bg.jpeg",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    myText,
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _nameController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Your Mail ID ",
                          labelText: "Email"

                      )
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                      keyboardType: TextInputType.text,
                      maxLength: 10,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Your Password",
                          labelText: "Password"

                      )
                  ),

                )
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          myText=_nameController.text;
          setState(() {

          });

        },
        child: Icon(Icons.refresh),

      ),
    );
  }
}