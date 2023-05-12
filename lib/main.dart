import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_ui_2/categoris_2.dart';

void main() {
  runApp(const MyApp());
}

Map<int, dynamic> listCategory = {
  0: {
    'name': 'Fashion',
    'image': 'lib/assets/images/cloting.png',
    'selected': false,
    'child': {
      0: {
        'name': 'Tshirt',
        'background': 'yellow',
        'image': 'lib/assets/images/cloting.png',
        'count': "39"
      },
      1: {
        'name': 'Jean',
        'background': 'blue',
        'image': 'lib/assets/images/cloting.png',
        'count': "59"
      }
    }
  },
  1: {
    'name': 'Beaty',
    'image': 'lib/assets/images/beauty.png',
    'selected': false,
    'child': {
      0: {
        'name': 'Nails',
        'background': 'yellow',
        'image': 'lib/assets/images/cloting.png',
        'count': "60"
      },
      1: {
        'name': 'Mascara',
        'background': 'red',
        'image': 'lib/assets/images/cloting.png',
        'count': "12"
      }
    }
  },
  2: {
    'name': 'Electronic',
    'image': 'lib/assets/images/electronic.png',
    'selected': false,
    'child': {
      0: {
        'name': 'Laptop/Pc',
        'background': 'yellow',
        'image': 'lib/assets/images/cloting.png',
        'count': "35"
      },
      1: {
        'name': 'Televison',
        'background': 'blue',
        'image': 'lib/assets/images/cloting.png',
        'count': "45"
      },
      2: {
        'name': 'Dryer/Styling',
        'background': 'red',
        'image': 'lib/assets/images/cloting.png',
        'count': "23"
      },
      3: {
        'name': 'Headphones',
        'background': 'pink',
        'image': 'lib/assets/images/cloting.png',
        'count': "45"
      },
      4: {
        'name': 'Tablet',
        'background': 'yellow',
        'image': 'lib/assets/images/cloting.png',
        'count': "34"
      },
      5: {
        'name': 'Mobile Covert',
        'background': 'blue',
        'image': 'lib/assets/images/cloting.png',
        'count': "52"
      },
      6: {
        'name': 'Printer',
        'background': 'red',
        'image': 'lib/assets/images/cloting.png',
        'count': "11"
      },
      7: {
        'name': 'Heathcare',
        'background': 'yellow',
        'image': 'lib/assets/images/cloting.png',
        'count': "22"
      },
      8: {
        'name': 'Powerbank',
        'background': 'pink',
        'image': 'lib/assets/images/cloting.png',
        'count': "8"
      },
      9: {
        'name': 'Smartwatches',
        'background': 'blue',
        'image': 'lib/assets/images/cloting.png',
        'count': "38"
      },
      10: {
        'name': 'Washer',
        'background': 'red',
        'image': 'lib/assets/images/cloting.png',
        'count': "30"
      },
      11: {
        'name': 'Blender',
        'background': 'yellow',
        'image': 'lib/assets/images/cloting.png',
        'count': "28"
      },
    }
  },
  3: {
    'name': 'Jewellery ',
    'image': 'lib/assets/images/kimcuong.png',
    'selected': false,
    'child': {
      0: {
        'name': 'Nails',
        'background': '',
        'image': 'lib/assets/images/cloting.png',
        'count': "37"
      },
      1: {
        'name': 'Diamond',
        'background': '',
        'image': 'lib/assets/images/cloting.png',
        'count': "36"
      }
    }
  },
  4: {
    'name': 'Footware',
    'image': 'lib/assets/images/footwear.png',
    'selected': false,
    'child': {
      0: {
        'name': 'Fashion',
        'background': '',
        'image': 'lib/assets/images/cloting.png',
        'count': "46"
      },
      1: {
        'name': 'Football',
        'background': '',
        'image': 'lib/assets/images/cloting.png',
        'count': "38"
      }
    }
  },
  5: {
    'name': 'Toys',
    'image': 'lib/assets/images/toys.png',
    'selected': false,
    'child': {
      0: {
        'name': 'Girl',
        'background': '',
        'image': 'lib/assets/images/cloting.png',
        'count': "28"
      },
      1: {
        'name': 'Boy',
        'background': '',
        'image': 'lib/assets/images/cloting.png',
        'count': "36"
      }
    }
  },
  6: {
    'name': 'Furniture',
    'image': 'lib/assets/images/furniture.png',
    'selected': false,
    'child': {
      0: {
        'name': 'Table',
        'background': '',
        'image': 'lib/assets/images/cloting.png',
        'count': "43"
      },
      1: {
        'name': 'Char',
        'background': '',
        'image': 'lib/assets/images/cloting.png',
        'count': "42"
      }
    }
  },
  7: {
    'name': 'Mobiles',
    'image': 'lib/assets/images/mobile.png',
    'selected': false,
    'child': {
      0: {
        'name': 'Samsung',
        'background': '',
        'image': 'lib/assets/images/cloting.png',
        'count': "35"
      },
      1: {
        'name': 'Apple',
        'background': '',
        'image': 'lib/assets/images/cloting.png',
        'count': "93"
      }
    }
  },
};

const MaterialColor white = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
  },
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          primarySwatch: white,
          primaryColor: Colors.black),
      home: const MyHomePage(title: 'Categories'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
  Map<int, dynamic> ProductItems = {};

  void createProductItems(int index) {
    if (ProductItems != listCategory[index]['child']) {
      print('load Object');
      setState(() {
        listCategory.forEach((key, value) {
          listCategory[key]['selected'] = false;
        });
        listCategory[index]['selected'] = true;
        ProductItems = listCategory[index]['child'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text(
          widget.title,
        ),
        actions: [
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              )),
          Container(
            width: 50,
            alignment: Alignment.centerRight,
            child: Badge.count(
              count: 5,
              alignment: AlignmentDirectional.bottomStart,
              child: Container(
                child: IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      Icons.favorite,
                    )),
                alignment: Alignment.center,
              ),
            ),
          ),
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.shopping_cart_sharp,
              ))
        ],
      ),
      backgroundColor: Colors.grey.shade100,
      // body: Center(
      //   child: Row(
      //   children: [
      //     Container(
      //       decoration: BoxDecoration(
      //           border: Border(
      //               right: BorderSide(
      //         color: Colors.grey.shade200,
      //         width: 3.0,
      //       ))),
      //       width: MediaQuery.of(context).size.width * 0.3,
      //       child: GridView.builder(
      //           gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      //               maxCrossAxisExtent: 200,
      //               childAspectRatio: 4 / 3,
      //               crossAxisSpacing: 5,
      //               mainAxisSpacing: 5),
      //           itemCount: listCategory.length,
      //           itemBuilder: (BuildContext ctx, index) {
      //             return GestureDetector(
      //               onTap: () {
      //                 createProductItems(index);
      //               },
      //               child: Container(
      //                 decoration: BoxDecoration(
      //                     color: Colors.white,
      //                     border: Border(
      //                         left: BorderSide(
      //                       color: listCategory[index]["selected"]
      //                           ? Colors.pink
      //                           : Colors.white,
      //                       width: 5,
      //                     ))),
      //                 alignment: Alignment.center,
      //                 child: Column(
      //                   mainAxisAlignment: MainAxisAlignment.center,
      //                   children: [
      //                     Container(
      //                       height: 30,
      //                       margin: const EdgeInsets.only(bottom: 10),
      //                       alignment: Alignment.center,
      //                       child: Image(
      //                           image:
      //                               AssetImage(listCategory[index]["image"])),
      //                     ),
      //                     Text(
      //                       listCategory[index]["name"],
      //                       style: TextStyle(
      //                           fontSize: 20,
      //                           color: listCategory[index]["selected"]
      //                               ? Colors.pink
      //                               : Colors.black),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             );
      //           }),
      //     ),
      //     Container(
      //       width: MediaQuery.of(context).size.width * 0.7,
      //       child: GridView.builder(
      //           gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      //               maxCrossAxisExtent: 300,
      //               childAspectRatio: 4 / 3.5,
      //               crossAxisSpacing: 2,
      //               mainAxisSpacing: 2),
      //           itemCount: ProductItems.length,
      //           itemBuilder: (BuildContext ctx, index) {
      //             return GestureDetector(
      //               onTap: () {
      //                 print("Container clicked");
      //               },
      //               child: Container(
      //                 alignment: Alignment.center,
      //                 color: Colors.white,
      //                 child: Column(
      //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //                   children: [
      //                     Stack(
      //                       children: [
      //                         Container(
      //                             height: 100,
      //                             width: 190,
      //                             margin: EdgeInsets.all(5),
      //                             color: ProductItems[index]["background"] ==
      //                                     null
      //                                 ? Colors.white70
      //                                 : getColor(
      //                                     ProductItems[index]["background"]),
      //                             child: SizedBox(
      //                               child: Image(
      //                                   height: 70,
      //                                   image: AssetImage(
      //                                       ProductItems[index]["image"])),
      //                             )),
      //                         Positioned(
      //                           top: 5,
      //                           right: 5,
      //                           child: Container(
      //                             decoration: BoxDecoration(
      //                               color: Colors.white,
      //                               shape: BoxShape.circle,
      //                             ),
      //                             child: Padding(
      //                               padding: EdgeInsets.all(4.0),
      //                               child: Text(
      //                                 ProductItems[index]["count"],
      //                                 style: TextStyle(
      //                                   color: Colors.black,
      //                                   fontWeight: FontWeight.bold,
      //                                 ),
      //                               ),
      //                             ),
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                     Text(ProductItems[index]['name']),
      //                   ],
      //                 ),
      //               ),
      //             );
      //           }),
      //     )
      //   ],
      // )),
      body: categoris_2(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Color getColor(String nameColor) {
    print(nameColor);
    switch (nameColor) {
      case "blue":
        return Color.fromRGBO(41, 78, 211, 0.5);
      case "pink":
        return Color.fromRGBO(225, 0, 255, 0.5);
      case "red":
        return Color.fromRGBO(255, 0, 0, 0.5);
      case "yellow":
        return Color.fromRGBO(255, 255, 0, 0.5);
      default:
        return Color.fromRGBO((Random()).nextInt(255), (Random()).nextInt(255),
            (Random()).nextInt(255), 0.5);
    }
  }
}
