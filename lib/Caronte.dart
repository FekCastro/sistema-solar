import 'package:flutter/material.dart';
import 'package:sistema_solar/Io.dart';
import 'package:sistema_solar/Netuno.dart';
import 'package:sistema_solar/Plutao.dart';
import 'package:sistema_solar/Saturno.dart';
import 'package:sistema_solar/Styx.dart';
import 'package:sistema_solar/Urano.dart';
import 'package:sistema_solar/Vesta.dart';

// ignore: unused_import
import 'main.dart';
import 'Jupiter.dart';
import 'Titan.dart';
import 'Mercurio.dart';

class Caronte extends StatelessWidget {
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
                  'Caronte',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
                ),
                Image.network(
                  'https://s2.glbimg.com/ApIJg3j_4QKim_thrTTBMG1IjZc=/e.glbimg.com/og/ed/f/original/2015/10/01/caronte.jpg',
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
                          '<-Netuno',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Netuno(),
                            ),
                          );
                        },
                      ),
                      FlatButton(
                        child: Text(
                          'Plutão',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 18,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Plutao(),
                            ),
                          );
                        },
                      ),
                      FlatButton(
                        child: Text(
                          'Styx->',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Styx(),
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
