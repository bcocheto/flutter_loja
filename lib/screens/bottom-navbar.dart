import 'package:flip_box_bar/flip_box_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_loja/screens/categories.dart';
import 'package:flutter_loja/screens/home.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  Widget _getWidget() {
    //Responsável por setar o index das páginas
    switch (currentIndex) {
      case 0:
        return Container(
          child: HomePage(),
        );
        break;
      case 1:
        return Container(
          child: CategoriesPage(),
        );
        break;
      case 2:
        return Container(
          child: Container(),
        );
        break;
      default:
        return Container(
          child: Container(),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-commerce'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: _getWidget(), //
      bottomNavigationBar: FlipBoxBar(
        selectedIndex: currentIndex,
        items: [
          FlipBarItem(
              icon: Icon(Icons.home),
              text: Text("Home"),
              frontColor: Colors.blue,
              backColor: Colors.blueAccent),
          FlipBarItem(
              icon: Icon(Icons.category),
              text: Text("Categorias"),
              frontColor: Colors.green,
              backColor: Colors.greenAccent),
          FlipBarItem(
              icon: Icon(Icons.chrome_reader_mode),
              text: Text("Read"),
              frontColor: Colors.orange,
              backColor: Colors.orangeAccent),
          FlipBarItem(
              icon: Icon(Icons.print),
              text: Text("Print"),
              frontColor: Colors.purple,
              backColor: Colors.purpleAccent),
        ],
        onIndexChanged: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
      ),
    );
  }
}
