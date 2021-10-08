import 'package:flutter/material.dart';
import 'package:mustang_mini_app/pages/pre-event-analysis/view-data.dart';
import 'package:mustang_mini_app/services/tba_service.dart';

class PreEventAnalysis extends StatefulWidget {
  const PreEventAnalysis({Key? key}) : super(key: key);

  @override
  _PreEventAnalysisState createState() => _PreEventAnalysisState();
}

class _PreEventAnalysisState extends State<PreEventAnalysis> {
  String _textFieldValue = '';

  void getData() async {
    var oprs = await TheBlueAllainceApi().getOprs(_textFieldValue);
    print(oprs);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ViewData(data: oprs, eventCode: _textFieldValue),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Event Code"),
              autocorrect: false,
              onChanged: (val) => _textFieldValue = val,
            ),
            ElevatedButton(
              onPressed: () {
                getData();
              },
              child: Text('Get Data'),
            ),
          ],
        ),
      ),
    );
  }
}
