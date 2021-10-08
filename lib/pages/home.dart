import 'package:flutter/material.dart';
import 'package:mustang_mini_app/pages/pre-event-analysis/pre-event-analysis.dart';
import 'package:mustang_mini_app/pages/scouting/scouting.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedPage = 0;
  List<Widget> _pages = [PreEventAnalysis(), Scouting()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mustang Mini App',
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int newIndex) {
          setState(() {
            _selectedPage = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_line_chart_outlined),
            activeIcon: Icon(Icons.stacked_line_chart),
            label: "Pre Event Analysis",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.visibility_outlined),
            label: "Scouting",
          )
        ],
      ),
      body: _pages[_selectedPage],
    );
  }
}
