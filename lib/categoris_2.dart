import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

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

Map<int, dynamic> ProductItems = {};

class categoris_2 extends StatefulWidget {
  const categoris_2({super.key});

  @override
  State<categoris_2> createState() => _categoris_2();
}

class _categoris_2 extends State<categoris_2>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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

  @override
  Widget build(BuildContext context) {
    return Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border(
                  right: BorderSide(
            color: Colors.grey.shade200,
            width: 3.0,
          ))),
          width: MediaQuery.of(context).size.width,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  childAspectRatio: 1,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2),
              itemCount: listCategory.length,
              itemBuilder: (BuildContext ctx, index) {
                return GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              left: BorderSide(
                            color: listCategory[index]["selected"]
                                ? Colors.pink
                                : Colors.white,
                            width: 5,
                          ))),
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: BoxDecoration(
                            color: getColor(""),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: getColor(""),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  height: 90,
                                  width: 90,
                                  margin: const EdgeInsets.only(
                                      left: 60, bottom: 30),
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      child: Image(
                                    alignment: Alignment.center,
                                    image: AssetImage(
                                        listCategory[index]["image"]),
                                    height: 50,
                                  )),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  listCategory[index]["name"],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: listCategory[index]["selected"]
                                          ? Colors.pink
                                          : Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    ));
  }
}
