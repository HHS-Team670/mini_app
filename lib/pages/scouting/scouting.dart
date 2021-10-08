import 'package:flutter/material.dart';
import 'package:mustang_mini_app/pages/scouting/scouter.dart';

class Scouting extends StatefulWidget {
  const Scouting({Key? key}) : super(key: key);

  @override
  State<Scouting> createState() => _ScoutingState();
}

class _ScoutingState extends State<Scouting> {
  late String matchCode = "Qual", teamCode;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: "Team Number"),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 6,
                child: TextField(
                  decoration: InputDecoration(labelText: "Match Number"),
                  autocorrect: false,
                  onChanged: (val) => print(val),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: DropdownButton<String>(
                    alignment: Alignment.center,
                    isDense: true,
                    value: matchCode,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    onChanged: (String? newValue) {
                      setState(() {
                        matchCode = newValue!;
                      });
                    },
                    items: <String>['Qual', 'Quarter', 'Semi', 'Final']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Center(
                          child: Text(value),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Scouter(),
                ),
              );
            },
            child: Text("Scout"),
          ),
        ],
      ),
    );
  }
}
