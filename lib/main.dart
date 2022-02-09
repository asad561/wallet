import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        child: PhysicalModel(
          borderRadius: BorderRadius.circular(15),
          elevation: 5,
          color: Colors.white,
          child: SingleChildScrollView(

            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                // shrinkWrap: true,
                // padding: const EdgeInsets.only(top: 20),
                children: <Widget>[
                  Container(
                    height: 180,
                    // color: Colors.amber[600],
                    child: Image.asset('assets/images/pef.jpeg'),
                  ),
                  Container(
                    height: 5,
                    color: Colors.transparent,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Padding(padding: const EdgeInsets.fromLTRB(50,50,0,0)),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                              // ignore: prefer_const_literals_to_create_immutables
                              [
                            const Text(
                              'Foodie Funds:',
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '\$50.00',
                              style: TextStyle(
                                  fontSize: 42.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            // Padding(padding: const EdgeInsets.only(left: 120))
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.control_point_duplicate,
                            color: Colors.black,
                            textDirection: TextDirection.ltr),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 0, // thickness of the line
                    indent: 0, // empty space to the leading edge of divider.
                    endIndent:
                        0, // empty space to the trailing edge of the divider.
                    color: Colors.grey, // The color to use when painting the line.
                    height: 20, // The divider's height extent.
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Padding(padding: const EdgeInsets.fromLTRB(50,50,0,0)),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children:
                            // ignore: prefer_const_literals_to_create_immutables
                            [
                          const Padding(
                            padding: EdgeInsets.only(left: 56),
                            child: Text(
                              'Foodie Points',
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 40),
                            child: Text(
                              '60',
                              style: TextStyle(
                                  fontSize: 42.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          // Padding(padding: const EdgeInsets.only(left: 120))
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 155),
                            child: Icon(
                              Icons.add_shopping_cart_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(top: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Padding(padding: const EdgeInsets.fromLTRB(50,50,0,0)),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children:
                                  // ignore: prefer_const_literals_to_create_immutables
                                  [
                                const Padding(
                                  padding: EdgeInsets.only(left: 0),
                                  child: Text(
                                    'Your Rewards',
                                    style: TextStyle(
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                // const Padding(
                                //   padding: EdgeInsets.only(left: 60),
                                //   child: Text(
                                //     '\$50.00',
                                //     style: TextStyle(
                                //         fontSize: 42.0, fontWeight: FontWeight.bold),
                                //   ),
                                // ),
                              ],
                            ),

                            // Card(
                            //   child: Column(
                            //     children: [
                            //       ListTile(
                            //         leading: Icon(Icons.arrow_drop_down_circle),
                            //         title: const Text('Card title 1'),
                            //         subtitle: Text(
                            //           'Secondary Text',
                            //           style: TextStyle(color: Colors.black.withOpacity(0.6)),
                            //         ),
                            //       ),
                            // Padding(
                            //   padding: const EdgeInsets.all(16.0),
                            //   child: Text(
                            //     'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                            //     style: TextStyle(color: Colors.black.withOpacity(0.6)),
                            //   ),
                            // ),
                            // ButtonBar(
                            //   alignment: MainAxisAlignment.start,
                            //   children: [
                            //     FlatButton(
                            //       textColor: const Color(0xFF6200EE),
                            //       onPressed: () {
                            //         // Perform some action
                            //       },
                            //       child: const Text('ACTION 1'),
                            //     ),
                            //     FlatButton(
                            //       textColor: const Color(0xFF6200EE),
                            //       onPressed: () {
                            //         // Perform some action
                            //       },
                            //       child: const Text('ACTION 2'),
                            //     ),
                            //   ],
                            // ),
                            // Image.asset('assets/images/pef.jpeg'),
                            // Image.asset('assets/images/pef.jpeg'),
                            //     ],
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.5),
                    ),
                    elevation: 0,
                    color: const Color.fromRGBO(252, 15, 15, 1),
                    child: const Center(child: Text('Entry A')),
                    // margin: EdgeInsets.only(left: 4.5),
                  ),
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width*0.8,
                  //
                  //   child: Card(
                  //     child: Row(
                  //       mainAxisSize: MainAxisSize.min,
                  //       children: [
                  //         ListTile(
                  //           leading: Icon(Icons.arrow_drop_down_circle),
                  //           title: const Text('Card title 1'),
                  //           subtitle: Text(
                  //             'Secondary Text',
                  //             style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}