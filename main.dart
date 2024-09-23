import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      title : 'flutter1',
      home : Home(),
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      appBar : AppBar(
        title : Text('Widget Tree'),
        centerTitle: true,
      ),
      body : SafeArea(
        child : SingleChildScrollView(
          child : Padding(
            padding: EdgeInsets.all(16.0),

            child : Column(
              children : [
                Row(
                  children : [

                    Container(
                      color : Colors.yellow,
                      height : 40.0,
                      width : 40.0,
                    ),
                    Padding(padding : EdgeInsets.all(16.0),),

                    Expanded(
                      child : Container(
                        color : Colors.red,
                        height : 40.0,
                        width : 40.0,
                      ),
                    ),
                    Padding(padding : EdgeInsets.all(16.0),),

                    Container(
                      color : Colors.blue,
                      height : 40.0,
                      width : 40.0,
                    ),
                  ],
                ),

                Padding(padding : EdgeInsets.all(16.0),),

                Row(
                  children : [
                    Column(

                      children : [
                        Container(
                          color : Colors.yellow,
                          height : 100.0,
                          width : 100,
                        ),
                        Padding(padding : EdgeInsets.all(16.0),),
                        Container(
                          color : Colors.red,
                          height : 60.0,
                          width : 60.0,
                        ),
                        Padding(padding : EdgeInsets.all(16.0),),
                        Container(
                          color : Colors.blue,
                          height : 35.0,
                          width : 35.0,
                        ),

                        Divider(),

                        Row(
                          children : [
                            CircleAvatar(
                              backgroundColor : Colors.green,
                              radius : 100.0,
                              child : Stack(
                                children : [
                                  Container(
                                    color : Colors.yellow,
                                    height : 100,
                                    width : 100,
                                  ),
                                  Container(
                                    color : Colors.red,
                                    height : 60.0,
                                    width : 60.0,
                                  ),
                                  Container(
                                    color : Colors.blue,
                                    height : 35.0,
                                    width : 35.0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        Divider(),
                        Text('Understanding Widget Tree'),
                      ],
                    ),
                  ],
                ),
              ],
            ), 
          ),
        ),
      ),
    );
  }
}
