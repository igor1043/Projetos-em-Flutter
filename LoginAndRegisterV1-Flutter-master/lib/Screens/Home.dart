import 'package:flutter/material.dart';
import 'package:loginandregisterv1_flutter/Screens/LoginScreen.dart';
import 'package:loginandregisterv1_flutter/Screens/RegisterScreen.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter/services.dart';

void main() {

  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      title: 'Account',
      builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
      home: AccountHome(title: 'Rental'),
      theme: new ThemeData(

        pageTransitionsTheme: PageTransitionsTheme(builders: {TargetPlatform.android: ZoomPageTransitionsBuilder(),}),
      ),
    );
  }
}

class AccountHome extends StatefulWidget {
  AccountHome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Container(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: FractionalOffset.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 6 ),
                        child: Column(
                          children: [
                            ShaderMask(
                              shaderCallback: (rect) {
                                return LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [Colors.black, Colors.blueAccent],
                                ).createShader(Rect.fromLTRB(0, 0, 900, 900));
                              },
                              blendMode: BlendMode.dstIn,
                              child: Container(
                                height: 200 ,
                                width: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/user-1194.png'),
                                    fit: BoxFit.cover,
                                  ), //DecorationImage
                                ), //BoxDecoration
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              child: Text("Excel Coaching", style: TextStyle(color: Color(0xff161830), fontWeight: FontWeight.w500, fontSize: 25),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 30.0),
                        child: ButtonTheme(
                          minWidth: 400.0,
                          height: 60,
                          child: Container(
                            child: RaisedButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              textColor: Colors.white,
                              disabledTextColor: Colors.white,
                              disabledColor: Colors.green,
                              color: Colors.green,
                              child: new Text("Entrar"),
                            ),
                          ),
                        ), //Your widget here,
                      ),
                    ),
                    Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 80.0),
                        child: ButtonTheme(
                          minWidth: 400.0,
                          height: 60,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            ),
                            child: RaisedButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: BorderSide(color: Colors.green)
                              ),
                              padding: const EdgeInsets.all(8.0),
                              textColor: Colors.green,
                              disabledColor: Colors.white,
                              disabledTextColor: Colors.green,
                              color: Colors.white,
                              child: new Text("Novo Cadastro"),
                            ),
                          ),
                        ), //Your widget here,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
