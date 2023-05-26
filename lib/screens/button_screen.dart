import 'package:flutter/material.dart';

class BottonScreen extends StatefulWidget {
  const BottonScreen({super.key});
  _BottonScreenState createState() => _BottonScreenState();
}

class _BottonScreenState extends State<BottonScreen> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "Ejemplo", icon: Icon(Icons.fact_check)),
              Tab(text: "codigo", icon: Icon(Icons.code)),
            ],
          ),
          title: Text('Flutter Botones'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.all(10),
                    color: Colors.pink,
                    child: TextButton(
                      child: Text("Boton texto",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {},
                    )),
                Container(
                  margin: const EdgeInsets.all(10),
                  color: Colors.pink,
                  child: ElevatedButton(
                    child: Text("Button"),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  color: Colors.pink,
                  child: OutlinedButton(
                    child: Text("Button"),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  color: Colors.pink,
                  child: FloatingActionButton(
                    child: Icon(Icons.save),
                    backgroundColor: Colors.pink,
                    foregroundColor: Colors.white,
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  color: Colors.pink,
                  child: IconButton(
                    icon: Icon(Icons.castle),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  color: Colors.pink,
                  child: DropdownButton(
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text("First Item"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Second Item"),
                          value: 2,
                        )
                      ],
                      onChanged: (_value) {
                        setState(() {
                          _value = _value;
                        });
                      },
                      hint: Text("Select item")),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  color: Colors.pink,
                  child: PopupMenuButton(
                      itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Text("First"),
                              value: 1,
                            ),
                            PopupMenuItem(
                              child: Text("Second"),
                              value: 2,
                            )
                          ]),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  color: Colors.pink,
                  child: ButtonBar(
                    children: [
                      TextButton(
                        child: Text("Yes"),
                        onPressed: () {},
                      ),
                      TextButton(
                        child: Text("No"),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/Button.jpeg'),
                  Text("Codigo"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
