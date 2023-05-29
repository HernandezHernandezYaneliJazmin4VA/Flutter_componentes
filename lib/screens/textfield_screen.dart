import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});
  _TextFieldScreenState createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
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
          title: Text('Flutter Text Field'),
        ),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextField(),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Username",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Username",
                        labelText: "Login",
                        icon: Icon(Icons.email)),
                  ),
                  TextField(
                    textAlign: TextAlign.right,
                  ),
                  TextField(
                    maxLength: 5,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                  ),
                  TextField(
                    obscureText: true,
                  ),
                  TextField(
                    toolbarOptions: ToolbarOptions(
                        cut: false, copy: true, paste: true, selectAll: true),
                  ),
                  TextField(
                    toolbarOptions: ToolbarOptions(
                        cut: false, copy: true, paste: true, selectAll: true),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/Textfield.jpeg"),
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
