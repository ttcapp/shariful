import 'package:flutter/material.dart';

void main() {
  runApp(const AmarApp());
}
String btnText1="Tap Button";
Color btnColor1=Colors.greenAccent;
bool img1visibility=false;
class AmarApp extends StatelessWidget {
  const AmarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Shariful"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              RaisedButton(
                color: btnColor1,
                child: Text(btnText1,style:
                TextStyle(color: Colors.red,
                    fontWeight: FontWeight.bold,fontSize: 40),),
              onPressed: (){
               setState(() {
                 btnText1="Button Pressed";
                 btnColor1=Colors.lightBlue;
                 img1visibility=true;
               });
              }),
              SizedBox(
                height: 10,
              ),
              Visibility(
                visible: img1visibility,
                  child:
              Image.network(
                  "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg")
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 200,
                        width: 250,
                        child: Image.asset("assets/images/image1.jpg")
                    ),
                    Container(
                        height: 200,
                        width: 250,
                        child: Image.asset("assets/images/image1.jpg")
                    ),
                    Container(
                        height: 200,
                        width: 250,
                        child: Image.asset("assets/images/image1.jpg")
                    ),
                    Container(
                        height: 200,
                        width: 250,
                        child: Image.asset("assets/images/image1.jpg")
                    ),
                    Container(
                        height: 200,
                        width: 250,
                        child: Image.asset("assets/images/image1.jpg")
                    ),
                    Container(
                        height: 200,
                        width: 250,
                        child: Image.asset("assets/images/image1.jpg")
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

