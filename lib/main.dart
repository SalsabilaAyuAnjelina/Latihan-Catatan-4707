import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController judulController = TextEditingController();
  TextEditingController cacatanController = TextEditingController();
  String hasilJudul = '';
  String hasilCacatan = '';

  void clearFields() {
    setState(() {
      judulController.clear();
      cacatanController.clear();
    });
  }

  void submitFields() {
    setState(() {
      hasilJudul = judulController.text;
      hasilCacatan = cacatanController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cacatan Pagi'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: judulController,
                decoration: InputDecoration(labelText: 'Judul'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: cacatanController,
                decoration: InputDecoration(labelText: 'Cacatan'),
                maxLines: null, // Boleh lebih dari satu baris
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: clearFields,
                      child: Text('Clear'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: submitFields,
                      child: Text('Submit'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  color: Colors.grey[300],
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Hasil Submit',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          hasilJudul,
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 5),
                        Text(
                          hasilCacatan,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
