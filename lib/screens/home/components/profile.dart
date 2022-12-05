import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(


        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 60.0 ,

          title: const Center(
            child: Text('My Profile',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20.0,

              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.black12,

                  ),
                ),
                Text(
                  'Saloni Saraf',
                  style: TextStyle(
                    // fontFamily: 'Pacifico',
                    fontSize: 20.0,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child:Divider(
                    color: Colors.deepPurpleAccent,
                    thickness: 1.0,
                  ),
                ),

                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                      vertical: 30.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.shopping_bag,
                      color: Colors.deepPurpleAccent,
                    ),
                    title: Text(
                      'My Orders',
                      style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        // fontFamily: 'SourceSansPro',
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                  EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.star_border,
                      color: Colors.deepPurpleAccent,
                    ),
                    title: Text(
                      'Your Coupons',
                      style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        // fontFamily: 'SourcesansPro',
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                  EdgeInsets.symmetric(vertical: 30.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.account_circle_outlined,
                      color: Colors.deepPurpleAccent,
                    ),
                    title: Text(
                      'Membership',
                      style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        // fontFamily: 'SourcesansPro',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
