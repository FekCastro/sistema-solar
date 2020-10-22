import 'package:flutter/material.dart';
import 'package:sistema_solar/Enceladus.dart';
import 'package:sistema_solar/Saturno.dart';
import 'package:sistema_solar/Vesta.dart';

// ignore: unused_import
import 'main.dart';
import 'Jupiter.dart';
import 'Saturno.dart';
import 'Mercurio.dart';

class Mimas extends StatelessWidget {
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
                  'Mimas',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Mimas_Cassini.jpg/1200px-Mimas_Cassini.jpg',
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
                          '<-Saturno',
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Saturno(),
                            ),
                          );
                        },
                      ),
                      FlatButton(
                        child: Text(
                          'Encélado->',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Enceladus(),
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
