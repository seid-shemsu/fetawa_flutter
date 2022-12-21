import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:fetawa_flutter/colors.dart';
import 'package:fetawa_flutter/main_screens/fav.dart';
import 'package:fetawa_flutter/main_screens/home.dart';
import 'package:fetawa_flutter/main_screens/my_questions.dart';
import 'package:fetawa_flutter/main_screens/settings.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bubble Bottom Bar Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(title: 'Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int currentIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
  }

  void changePage(int? index) {
    setState(() {
      currentIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: primary,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BubbleBottomBar(
        hasNotch: true,
        fabLocation: BubbleBottomBarFabLocation.end,
        opacity: .2,
        currentIndex: currentIndex,
        onTap: changePage,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(16),
        ),
        //border radius doesn't work when the notch is enabled.
        elevation: 8,
        items: const <BubbleBottomBarItem>[
          BubbleBottomBarItem(
            backgroundColor: primary,
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.home,
              color: primary,
            ),
            title: Text("Home"),
          ),
          BubbleBottomBarItem(
              backgroundColor: primary,
              icon: Icon(
                Icons.favorite_border,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.favorite,
                color: primary,
              ),
              title: Text("Favorite")),
          BubbleBottomBarItem(
              backgroundColor: primary,
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.person,
                color: primary,
              ),
              title: Text("Me")),
          BubbleBottomBarItem(
              backgroundColor: primary,
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.settings,
                color: primary,
              ),
              title: Text("Settings"))
        ],
      ),
      body: IndexedStack(
        index: currentIndex,
        children: const [Home(), Fav(), MyQuestions(), Settings()],
      ),
    );
  }
}
