import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
  home: GiovanniCard(),
  ));
}

class GiovanniCard extends StatefulWidget {
  const GiovanniCard({Key? key}) : super(key: key);

  @override
  State<GiovanniCard> createState() => _GiovanniCardState();
}

class _GiovanniCardState extends State<GiovanniCard> {

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: () {
        setState(() {
          counter += 1;
        });
      },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
      ),

      backgroundColor: Colors.blueGrey[500],
      appBar: AppBar(
        title: Text('Giovanni ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/linkedin-photo.jfif'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.yellowAccent,
            ),
            const SizedBox(height: 30.0,),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Giovanni Costa',
              style: TextStyle(
                color: Colors.yellowAccent,
                letterSpacing: 2.0,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'Job Title',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),

            SizedBox(height: 10.0,),
            Text(
              'Software Developer',
              style: TextStyle(
                color: Colors.yellowAccent,
                letterSpacing: 2.0,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Level',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '$counter',
              style: TextStyle(
                color: Colors.yellowAccent,
                letterSpacing: 2.0,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.yellowAccent,
                ),
                SizedBox(width: 10.0,),
                Text(
                  'giovannicosta@protonamil.com',
                  style: TextStyle(
                    color: Colors.yellowAccent,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.add_call,
                  color: Colors.yellowAccent,
                ),
                SizedBox(width: 10.0,),
                Text(
                  '0480 191 737',
                  style: TextStyle(
                    color: Colors.yellowAccent,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            )
          ]
        ),
      ),
    );
  }
}
