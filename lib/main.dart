import 'package:app2food/widgets/item_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:app2food/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App2Food',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'App2Food'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  List<String> priceTag = [
    '\$5.00',
    '\$8.00',
    '\$4.00',
    '\$7.00',
    '\$5.00',
    '\$8.00',
    '\$9.00',
    '\$5.00',
    '\$4.00'
  ];
  List<String> titles = [
    'Capellini Classico',
    'Rigatoni Melanzana',
    'Linquine Nastra',
    'Roast Turkey Wrap',
    'Capellini Classico',
    'Rigatoni Melanzana',
    'Linquine Nastra',
    'Roast Turkey Wrap',
    'Capellini Classico',
  ];

  List<String> subTitles = [
    'Angel Hair Pasta Served with Earn,Vermont Goat Cheese',
    'Angel Hair Pasta Served with Earn,Vermont Goat Cheese',
    'Angel Hair Pasta Served with Earn,Vermont Goat Cheese',
    'Angel Hair Pasta Served with Earn,Vermont Goat Cheese',
    'Angel Hair Pasta Served with Earn,Vermont Goat Cheese',
    'Angel Hair Pasta Served with Earn,Vermont Goat Cheese',
    'Angel Hair Pasta Served with Earn,Vermont Goat Cheese',
    'Angel Hair Pasta Served with Earn,Vermont Goat Cheese',
    'Angel Hair Pasta Served with Earn,Vermont Goat Cheese',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Menu',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 25.0,
              width: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: const Color.fromARGB(255, 3, 109, 58),
              ),
              child: const Center(
                child: Text(
                  'Back',
                  style: TextStyle(fontSize: 13.0, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                LayoutBuilder(builder: (context, constexts) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints:
                          BoxConstraints(minHeight: constexts.maxHeight),
                      child: IntrinsicHeight(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: NavigationRail(
                            minWidth: 75,
                            destinations: [
                              NavigationRailDestination(
                                  icon: Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Card(
                                      color: selectedIndex == 0
                                          ? Colors.white.withOpacity(0.9)
                                          : Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: selectedIndex == 0
                                              ? BorderRadius.circular(5.0)
                                              : BorderRadius.circular(0)),
                                      elevation: selectedIndex == 0 ? 0.9 : 0.0,
                                      child: SizedBox(
                                        height: 95.0,
                                        width: 160.0,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: context.edgeInsetsEx,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      border: selectedIndex == 0
                                                          ? context.borderEx
                                                          : const Border()),
                                                  child: Image.asset(
                                                    height: 55.0,
                                                    width: 75.0,
                                                    AssetsPath.pizzaImage,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            2.hHeight,
                                            Text(
                                              'Pizza',
                                              style: TextStyle(
                                                  color: selectedIndex == 0
                                                      ? context.colorARGBEx
                                                      : Colors.grey.shade600),
                                              textAlign: TextAlign.center,
                                              overflow: TextOverflow.ellipsis,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  label: const SizedBox()),
                              NavigationRailDestination(
                                  icon: Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Card(
                                      color: selectedIndex == 1
                                          ? Colors.white.withOpacity(0.9)
                                          : Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: selectedIndex == 1
                                              ? BorderRadius.circular(5.0)
                                              : BorderRadius.circular(0)),
                                      elevation: selectedIndex == 1 ? 0.9 : 0.0,
                                      child: SizedBox(
                                        height: 95.0,
                                        width: 160.0,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: context.edgeInsetsEx,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      border: selectedIndex == 1
                                                          ? context.borderEx
                                                          : const Border()),
                                                  child: Image.asset(
                                                    height: 55.0,
                                                    width: 75.0,
                                                    AssetsPath.curryImage,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            2.hHeight,
                                            Text(
                                              'Curry',
                                              style: TextStyle(
                                                  color: selectedIndex == 1
                                                      ? context.colorARGBEx
                                                      : Colors.grey.shade600),
                                              textAlign: TextAlign.center,
                                              overflow: TextOverflow.ellipsis,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  label: const SizedBox()),
                              NavigationRailDestination(
                                  icon: Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Card(
                                      color: selectedIndex == 2
                                          ? Colors.white.withOpacity(0.9)
                                          : Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: selectedIndex == 2
                                              ? BorderRadius.circular(5.0)
                                              : BorderRadius.circular(0)),
                                      elevation: selectedIndex == 2 ? 0.9 : 0.0,
                                      child: SizedBox(
                                        height: 95.0,
                                        width: 160.0,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: context.edgeInsetsEx,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      border: selectedIndex == 2
                                                          ? context.borderEx
                                                          : const Border()),
                                                  child: Image.asset(
                                                    height: 55.0,
                                                    width: 75.0,
                                                    AssetsPath.coldCoffeeImage,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 2.0,
                                            ),
                                            Text(
                                              'Cold Coffee',
                                              style: TextStyle(
                                                  color: selectedIndex == 2
                                                      ? context.colorARGBEx
                                                      : Colors.grey.shade600),
                                              textAlign: TextAlign.center,
                                              overflow: TextOverflow.ellipsis,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  label: const SizedBox()),
                              NavigationRailDestination(
                                  icon: Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Card(
                                      color: selectedIndex == 3
                                          ? Colors.white.withOpacity(0.9)
                                          : Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: selectedIndex == 3
                                              ? BorderRadius.circular(5.0)
                                              : BorderRadius.circular(0)),
                                      elevation: selectedIndex == 3 ? 0.9 : 0.0,
                                      child: SizedBox(
                                        height: 95.0,
                                        width: 160.0,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: context.edgeInsetsEx,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      border: selectedIndex == 3
                                                          ? context.borderEx
                                                          : const Border()),
                                                  child: Image.asset(
                                                    height: 55.0,
                                                    width: 75.0,
                                                    AssetsPath.burgerImage,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            2.hHeight,
                                            Text(
                                              'Burger',
                                              style: TextStyle(
                                                  color: selectedIndex == 3
                                                      ? context.colorARGBEx
                                                      : Colors.grey.shade600),
                                              textAlign: TextAlign.center,
                                              overflow: TextOverflow.ellipsis,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  label: const SizedBox()),
                              NavigationRailDestination(
                                  icon: Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Card(
                                      color: selectedIndex == 4
                                          ? Colors.white.withOpacity(0.9)
                                          : Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: selectedIndex == 4
                                              ? BorderRadius.circular(5.0)
                                              : BorderRadius.circular(0)),
                                      elevation: selectedIndex == 4 ? 0.9 : 0.0,
                                      child: SizedBox(
                                        height: 95.0,
                                        width: 160.0,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: context.edgeInsetsEx,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      border: selectedIndex == 4
                                                          ? context.borderEx
                                                          : const Border()),
                                                  child: Image.asset(
                                                    height: 55.0,
                                                    width: 75.0,
                                                    AssetsPath.soupesImage,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            2.hHeight,
                                            Text(
                                              'Soupes',
                                              style: TextStyle(
                                                  color: selectedIndex == 4
                                                      ? context.colorARGBEx
                                                      : Colors.grey.shade600),
                                              textAlign: TextAlign.center,
                                              overflow: TextOverflow.ellipsis,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  label: const SizedBox()),
                              NavigationRailDestination(
                                  icon: Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Card(
                                      color: selectedIndex == 5
                                          ? Colors.white.withOpacity(0.9)
                                          : Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: selectedIndex == 5
                                              ? BorderRadius.circular(5.0)
                                              : BorderRadius.circular(0)),
                                      elevation: selectedIndex == 5 ? 0.9 : 0.0,
                                      child: SizedBox(
                                        height: 95.0,
                                        width: 160.0,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: context.edgeInsetsEx,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      border: selectedIndex == 5
                                                          ? context.borderEx
                                                          : const Border()),
                                                  child: Image.asset(
                                                    height: 55.0,
                                                    width: 75.0,
                                                    AssetsPath.chickenImage,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            2.hHeight,
                                            Text(
                                              'Chicken',
                                              style: TextStyle(
                                                  color: selectedIndex == 5
                                                      ? context.colorARGBEx
                                                      : Colors.grey.shade600),
                                              textAlign: TextAlign.center,
                                              overflow: TextOverflow.ellipsis,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  label: const SizedBox()),
                              NavigationRailDestination(
                                  icon: Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Card(
                                      color: selectedIndex == 6
                                          ? Colors.white.withOpacity(0.9)
                                          : Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: selectedIndex == 6
                                              ? BorderRadius.circular(5.0)
                                              : BorderRadius.circular(0)),
                                      elevation: selectedIndex == 6 ? 0.9 : 0.0,
                                      child: SizedBox(
                                        height: 95.0,
                                        width: 160.0,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: context.edgeInsetsEx,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      border: selectedIndex == 6
                                                          ? context.borderEx
                                                          : const Border()),
                                                  child: Image.asset(
                                                    height: 55.0,
                                                    width: 75.0,
                                                    AssetsPath.dessertsImage,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            2.hHeight,
                                            Text(
                                              'Desserts',
                                              style: TextStyle(
                                                  color: selectedIndex == 6
                                                      ? context.colorARGBEx
                                                      : Colors.grey.shade600),
                                              textAlign: TextAlign.center,
                                              overflow: TextOverflow.ellipsis,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  label: const SizedBox()),
                            ],
                            onDestinationSelected: (value) {
                              setState(() {
                                selectedIndex = value;
                              });
                            },
                            selectedIndex: selectedIndex,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: VerticalDivider(
                    thickness: 1.0,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                    child: IndexedStack(
                  index: selectedIndex,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Non Veg Pizza',
                            style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: context.boldEx.fontWeight),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                              itemCount: 8,
                              itemBuilder: (context, index) {
                                return ItemWidget(
                                  title: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        titles[index],
                                        style: context.w500Ex,
                                      ),
                                      Text(priceTag[index].toString(),
                                          style: context.w500Ex)
                                    ],
                                  ),
                                  subTitle: Text(
                                    subTitles[index],
                                    style: const TextStyle(fontSize: 11.5),
                                  ),
                                  icon: Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade100,
                                        borderRadius:
                                            BorderRadius.circular(6.0)),
                                    child: Icon(Icons.add,
                                        color: context.colorARGBEx),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                    Center(
                        child: Text(
                      'Curry',
                      style: context.fontEx,
                    )),
                    Center(
                        child: Text(
                      'Cold Coffee',
                      style: context.fontEx,
                    )),
                    Center(
                        child: Text(
                      'Burger',
                      style: context.fontEx,
                    )),
                    Center(
                        child: Text(
                      'Soupes',
                      style: context.fontEx,
                    )),
                    Center(
                        child: Text(
                      'Chicken',
                      style: context.fontEx,
                    )),
                    Center(
                        child: Text(
                      'Desserts',
                      style: context.fontEx,
                    )),
                  ],
                ))
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
          SizedBox(
            height: 135,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'MY ORDER',
                      style: TextStyle(
                          fontWeight: context.boldEx.fontWeight,
                          fontSize: 22.0),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 65.0,
                          height: 25.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: context.colorARGBEx),
                          child: Center(
                              child: Text(
                            'Edit',
                            style: context.colorEx,
                          )),
                        ),
                        10.wWidth,
                        Container(
                          width: 110.0,
                          height: 25.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: context.colorARGBEx),
                          child: Center(
                              child: Text(
                            'View My Order',
                            style: context.colorEx,
                          )),
                        ),
                      ],
                    )
                  ],
                ),
                20.hHeight,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Tax: \$0.05',
                      style: context.boldEx,
                    ),
                    Text('|', style: context.boldEx),
                    Text('Total: \$8.05', style: context.boldEx),
                    Text('|', style: context.boldEx),
                    Text('items :1', style: context.boldEx),
                  ],
                ),
                20.hHeight,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 30.0,
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(4.0)),
                      child: Center(
                          child: Text(
                        'CANCEL',
                        style: context.colorEx,
                      )),
                    ),
                    Container(
                        height: 30.0,
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                            color: context.colorARGBEx,
                            borderRadius: BorderRadius.circular(4.0)),
                        child: Center(
                          child: Text('Order Now', style: context.colorEx),
                        )),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

extension SizeWH on num {
  SizedBox get wWidth => SizedBox(
        width: toDouble(),
      );
  SizedBox get hHeight => SizedBox(
        height: toDouble(),
      );
}

extension ContextEx on BuildContext {
  TextStyle get fontEx => const TextStyle(fontSize: 24);
  TextStyle get boldEx => const TextStyle(fontWeight: FontWeight.bold);
  TextStyle get w500Ex => const TextStyle(fontWeight: FontWeight.w500);
  TextStyle get colorEx => const TextStyle(color: Colors.white);

  Color get colorARGBEx => const Color.fromARGB(255, 3, 109, 58);

  EdgeInsets get edgeInsetsEx =>
      const EdgeInsets.only(top: 8.0, left: 4.0, right: 4.0);
  Border get borderEx => Border(
      bottom: BorderSide(width: 2.0, color: colorARGBEx),
      right: BorderSide(width: 2.0, color: colorARGBEx),
      left: BorderSide(width: 2.0, color: colorARGBEx),
      top: BorderSide(width: 2.0, color: colorARGBEx));
}
