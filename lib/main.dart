import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext contex,bool innerBoxIsScrolled){
              return <Widget>[
                SliverAppBar(
                  actions: [
                    Icon(Icons.search,color: Colors.black),
                  ],
                  centerTitle: true,
                  backgroundColor: Colors.transparent,
                  pinned: true,
                  expandedHeight: 250,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text('SLIVER MODE',textScaleFactor: 1,

                  ),
                    centerTitle: true,
                    background: Image.network('https://media.istockphoto.com/photos/colorful-background-of-pastel-powder-explosionrainbow-color-dust-on-picture-id1180542165?k=20&m=1180542165&s=612x612&w=0&h=43hlhk8qdGYP4V-u3AAxD3kPDRIzHjMNWpr-VdBQ2Js=',
                    fit: BoxFit.fill,
                    ),
                    stretchModes: [StretchMode.zoomBackground],
                ),
                  title: Text('Hello Bangladesh'),
                  leading: Icon(Icons.arrow_back),
                  collapsedHeight: 100,
                )];

            }, body: TabBarView(
            children: [
              Icon(Icons.flight,size: 350,color: Colors.teal,),
              Icon(Icons.directions_transit,size: 350),
              Icon(Icons.directions_car,size: 350),
            ],
          ),

          ),
        ),
      ),

    );
  }
}


