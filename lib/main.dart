import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor:Colors.white ,
      body: Stack(
        children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage('assets/images/flamingo_background.png'),
                fit: BoxFit.cover
                ),
              ),
              child: (
                 Container(
                        margin: EdgeInsets.only(top: 50),
                          child: Center(
                          child: Text("Login", style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold))
                        )
                      ))

              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(143,148,251,2),
                            blurRadius: 20.0,
                            offset: Offset(0,10)


                          )
                        ]
                      ),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey[100]))
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email or Phone number",
                          hintStyle: TextStyle(color: Colors.grey[400])
                        )
                      )
                    )
                  ]
                      )
                    )
                  ]
                )
              )
    ],
    )
    );

  }

}







