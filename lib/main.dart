import 'package:flutter/material.dart';
import 'package:moomool/Theme/text_styles.dart';
import 'package:moomool/Theme/themes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'Page/board.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 640),
        builder: () => MaterialApp(
          title: 'Flutter Demo',
          //여기서 theme 적용
          theme: lightTheme1,
          home: QuestionBoardPage(),
          //MyHomePage(title: 'Flutter Demo Home Page'),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
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
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: body2Style(),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            //
            SizedBox(
              width: 240,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'ID',
                  hintText: 'ID를 입력하세요',
                ),
                //style: ,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('로그인'),
              style: ElevatedButton.styleFrom(),
            ),

            // SignInButton(
            //   Buttons.Google,
            //   mini: true,
            //   onPressed: () {},
            // ),
            Row(
              children: [
                // IconButton(onPressed: (){},
                //   icon: Icon(Icons.height),
                //
                //   padding: EdgeInsets.all(15.0),
                //   )
                //
                // ,
              //  Image.asset('asset/naver.png',width: 48),
              //   ElevatedButton(
              //     onPressed: () {},
              //     child: Image.asset('asset/naver.png',width: 48),
              //
              //     style: ElevatedButton.styleFrom(
              //       shape: CircleBorder(side: BorderSide.none),
              //       //side:BorderSide(width:4.8) ,
              //     //  padding: EdgeInsets.all(8.0),
              //
              //     ),
              //   ),
                ElevatedButton(
                  onPressed: () {},
                  child: Image.asset('asset/naver.png',width: 48),

                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(side: BorderSide.none),
                    //side:BorderSide(width:4.8) ,
                    //  padding: EdgeInsets.all(8.0),

                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Image.asset('asset/kakao.jpg',width: 48),

                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(side: BorderSide.none),
                    //side:BorderSide(width:4.8) ,
                    //  padding: EdgeInsets.all(8.0),

                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Image.asset('asset/google.jpg',width: 48),

                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(side: BorderSide.none),
                    //side:BorderSide(width:4.8) ,
                    //  padding: EdgeInsets.all(8.0),

                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Image.asset('asset/kakao.png',width: 48),

                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(side: BorderSide.none),
                    //side:BorderSide(width:4.8) ,
                    //  padding: EdgeInsets.all(8.0),

                  ),
                ),
                ],
            )




          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}