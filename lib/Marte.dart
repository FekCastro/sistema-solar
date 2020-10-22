import 'package:flutter/material.dart';

// ignore: unused_import
import 'main.dart';
import 'Terra.dart';
import 'Ceres.dart';
import 'Phobos.dart';

class Marte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Title(
          color: Colors.green,
          child: Text(
            'SISTEMA SOLAR',
            style: TextStyle(
              color: Colors.yellowAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.network(
            'https://static6.depositphotos.com/1151061/650/v/450/depositphotos_6504973-stock-illustration-starry-sky.jpg',
            fit: BoxFit.fill,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Marte',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/OSIRIS_Mars_true_color.jpg/1200px-OSIRIS_Mars_true_color.jpg',
                  fit: BoxFit.fitHeight,
                  height: 300.0,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton(
                        child: Text(
                          '<-Terra',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Terra(),
                            ),
                          );
                        },
                      ),
                      FlatButton(
                        child: Text(
                          'Satélites',
                          style: TextStyle(
                            color: Colors.indigoAccent,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Phobos(),
                            ),
                          );
                        },
                      ),
                      FlatButton(
                        child: Text(
                          'Ceres->',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Ceres(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
