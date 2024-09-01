import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.menu),
          title: Text('Assignment1'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.search),
            )
          ],
        ),
        body: MyListView(),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = [
      Colors.deepPurple[900],
      Colors.deepPurple[800],
      Colors.deepPurple[700],
      Colors.deepPurple[600],
      Colors.deepPurple[500],
      Colors.deepPurple[400],
      Colors.deepPurple[300],
      Colors.deepPurple[200],
      Colors.deepPurple[100],
      Colors.deepPurple[50],
    ];

    return ListView.builder(
      itemCount: 10,
        itemBuilder: (context, index){
          final color = colors[index % colors.length];
          return Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Stack(
                children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text('Top Left', style: TextStyle(color: Colors.white, fontSize: 20),)
                      ),
                    ),
                  Align(
                      alignment: Alignment.center,
                        child: Text('Center', style: TextStyle(color: Colors.white, fontSize: 20))
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.bottomRight,
                          child: Text('Bottom Right', style: TextStyle(color: Colors.white, fontSize: 20))
                      ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}


