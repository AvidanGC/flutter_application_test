import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataPersistent extends StatefulWidget {
  @override
  _DataPersistent createState() => _DataPersistent();
}

class _DataPersistent extends State<DataPersistent> {
  int value = 0;

  @override
  void initState() {
    super.initState();
    _cargarPreferencias();
  }
  //Carga los valorres al inicios
  _cargarPreferencias() async {
    SharedPreferences press = await SharedPreferences.getInstance();
    setState(() {
      value = press.getInt("value") ?? 0;
    });
  }
  //incrementa el valor al contador después de clic
  onPressed() async {
    final press = await SharedPreferences.getInstance();
    setState(() {
      value++;
      press.setInt("value", value);
    });
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar ***'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  value.toString(),
                  style: TextStyle(fontSize: 30),
                ),
              ),
              TextButton(onPressed: onPressed, child: Text("Aumentar Valor"))
            ],
          ),
        ),
      ),
    );
  }
}
