import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';

class IconScreen extends StatefulWidget {
  const IconScreen({super.key});
  _IconScreenState createState() => _IconScreenState();
}

class _IconScreenState extends State<IconScreen> {
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
          title: Text('Flutter TabBar y TabView'),
        ),
        body: TabBarView(
          children: <Widget>[
            GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                  mainAxisExtent: 110),
              children: [
                Card(
                  color: AppTheme.primary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                      Text("Borrar", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                      Text("Messages", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.heart_broken_sharp,
                        color: Colors.white,
                      ),
                      Text("heart broken",
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.hive,
                        color: Colors.white,
                      ),
                      Text("hive", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.bedtime,
                        color: Colors.white,
                      ),
                      Text("bedtime", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.egg,
                        color: Colors.white,
                      ),
                      Text("egg", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.update,
                        color: Colors.white,
                      ),
                      Text("update", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                      Text("star", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.today,
                        color: Colors.white,
                      ),
                      Text("today", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.build,
                        color: Colors.white,
                      ),
                      Text("build", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.alarm,
                        color: Colors.white,
                      ),
                      Text("alarm", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.app_registration,
                        color: Colors.white,
                      ),
                      Text("app regis", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                      Text("Close", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.done,
                        color: Colors.white,
                      ),
                      Text("done", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.check_box,
                        color: Colors.white,
                      ),
                      Text("check box", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.download,
                        color: Colors.white,
                      ),
                      Text("download", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/Grid.jpeg'),
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
