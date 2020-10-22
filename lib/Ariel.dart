import 'package:flutter/material.dart';
import 'package:sistema_solar/Io.dart';
import 'package:sistema_solar/Miranda.dart';
import 'package:sistema_solar/Netuno.dart';
import 'package:sistema_solar/Saturno.dart';
import 'package:sistema_solar/Umbriel.dart';
import 'package:sistema_solar/Urano.dart';
import 'package:sistema_solar/Vesta.dart';

// ignore: unused_import
import 'main.dart';
import 'Jupiter.dart';
import 'Titan.dart';
import 'Netuno.dart';

class Ariel extends StatelessWidget {
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
                  'Ariel',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
                Image.network(
                  'https://i.pinimg.com/originals/73/5b/94/735b941e8f2fb269a87642b317c845de.jpg',
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
                          '<-Miranda',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Miranda(),
                            ),
                          );
                        },
                      ),
                      FlatButton(
                        child: Text(
                          'Urano',
                          style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Urano(),
                            ),
                          );
                        },
                      ),
                      FlatButton(
                        child: Text(
                          'Umbriel->',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Umbriel(),
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
