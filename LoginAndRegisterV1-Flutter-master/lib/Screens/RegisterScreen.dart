import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() {
  runApp(RegisterScreen());
}

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RegisterHome(title: 'Registrar',);
  }
}

class RegisterHome extends StatefulWidget {
  RegisterHome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState  extends State<RegisterHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xffffffff),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(widget.title,style: TextStyle(color: Color(0xff001035)),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () =>  Navigator.pop(context),
          ),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 0, left: 20, right: 20),
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/user-1194.png'),
                          fit: BoxFit.cover,
                        ), //DecorationImage
                      ), 
                      
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          labelText: 'Email',
                          prefixIcon: Icon(
                              Icons.person
                          ),

                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Name',
                          labelText: 'Nome',
                          prefixIcon: Icon(
                              Icons.account_circle
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Senha',
                          prefixIcon: Icon(
                              Icons.lock
                          ),

                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          labelText: 'Confirmar Senha',
                          prefixIcon: Icon(
                              Icons.lock
                          ),

                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: ButtonTheme(
                        minWidth: 400.0,
                        height: 60,
                        child: Container(
                          child: RaisedButton(
                            onPressed: (){

                            },
                            shape: RoundedRectangleBorder(
                            ),
                            padding: const EdgeInsets.all(8.0),
                            textColor: Colors.white,
                            disabledTextColor: Colors.white,
                            disabledColor: Colors.green,
                            color: Colors.green,
                            child: new Text("Cadastrar"),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text('ou'),
                    SizedBox(height: 30,),
                    Container(
                      height: 60,
                      child: ButtonTheme(
                        minWidth: 400.0,
                        height: 100,
                        child: SignInButton(
                          Buttons.Facebook,
                          text: 'Sign Up with Facebook',
                          shape: RoundedRectangleBorder(
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      padding: EdgeInsets.only(top: 40),
                      child: ButtonTheme(
                        minWidth: 400.0,
                        height: 100,
                        child: SignInButton(
                          Buttons.Google,
                          text: 'Sign Up with Google',
                          shape: RoundedRectangleBorder(
                          ),
                          onPressed: () {},
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
