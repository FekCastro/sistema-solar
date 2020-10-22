import 'package:flutter/material.dart';
import 'package:sistema_solar/Caronte.dart';
import 'package:sistema_solar/Io.dart';
import 'package:sistema_solar/Ixion.dart';
import 'package:sistema_solar/Netuno.dart';
import 'package:sistema_solar/Saturno.dart';
import 'package:sistema_solar/Urano.dart';
import 'package:sistema_solar/Vesta.dart';

// ignore: unused_import
import 'main.dart';
import 'Jupiter.dart';
import 'Titan.dart';
import 'Mercurio.dart';

class Plutao extends StatelessWidget {
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
                  'Plutão',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white54,
                  ),
                ),
                Image.network(
                  'https://aventurasnahistoria.uol.com.br/media/_versions/astronomia/capa_pluto_planet_widelg.jpg',
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
                          'Caronte',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Caronte(),
                            ),
                          );
                        },
                      ),
                      FlatButton(
                        child: Text(
                          'Plutinos->',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Ixion(),
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
