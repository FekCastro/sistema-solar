import 'package:flutter/material.dart';
import 'package:sistema_solar/Caronte.dart';
import 'package:sistema_solar/Eris.dart';
import 'package:sistema_solar/Haumea.dart';
import 'package:sistema_solar/Io.dart';
import 'package:sistema_solar/Netuno.dart';
import 'package:sistema_solar/Orcus.dart';
import 'package:sistema_solar/Plutao.dart';
import 'package:sistema_solar/Saturno.dart';
import 'package:sistema_solar/Urano.dart';
import 'package:sistema_solar/Vesta.dart';

// ignore: unused_import
import 'main.dart';
import 'Jupiter.dart';
import 'Titan.dart';
import 'Mercurio.dart';

class Disnomia extends StatelessWidget {
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
                  'Disnomia',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Image.network(
                  'https://media.istockphoto.com/photos/dysnomia-moon-of-the-dwarf-planet-eris-rotating-3d-render-picture-id1211739622?k=6&m=1211739622&s=170667a&w=0&h=A2vrOkYBkqW19VakBNo5qM67sHy4DdL3Ytqp0mFpwns=',
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
                          '<-Cubewano',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Haumea(),
                            ),
                          );
                        },
                      ),
                      FlatButton(
                        child: Text(
                          'Éris',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Eris()),
                          );
                        },
                      ),
                      FlatButton(
                        child: Text(
                          'Sedna->',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Mercurio(),
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
