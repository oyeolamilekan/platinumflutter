import 'package:flutter/material.dart';
import 'package:plattromdell/universal/dev_scaffold.dart';
import 'package:plattromdell/utils/stockings.dart';
import 'package:plattromdell/utils/utils.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  final _formKey = GlobalKey<FormState>();

  final _emailAddress = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget emailField = TextFormField(
      obscureText: false,
      decoration: InputDecoration(
        hintText: "Email",
        hintStyle: TextStyle(color: Colors.white),
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
      cursorColor: Colors.white,
      keyboardType: TextInputType.emailAddress,
      controller: _emailAddress,
      validator: (value) {
        if (value.isEmpty) {
          return 'Kindly fill in the form.';
        } else if (value == ' ') {
          return 'Form can\'t be empty';
        }
        return null;
      },
    );

    Widget passwordWidget = TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: TextStyle(color: Colors.white),
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
      cursorColor: Colors.white,
      keyboardType: TextInputType.emailAddress,
      controller: _emailAddress,
      validator: (value) {
        if (value.isEmpty) {
          return 'Kindly fill in the form.';
        } else if (value == ' ') {
          return 'Form can\'t be empty';
        }
        return null;
      },
    );

    Widget sizedBox = SizedBox(
      height: 25.0,
    );

    Widget formGroup = Form(
      key: _formKey,
      child: Column(
        children: <Widget>[emailField, sizedBox, passwordWidget],
      ),
    );

    return StockingScaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(Stocking.image),
                  Text(
                    "Welcome",
                    style: Stocking.textStyle,
                  ),
                  Text("Back", style: Stocking.textStyle)
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.61,
              decoration: BoxDecoration(
                color: hexToColor("#8887EF"),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 62.0, left: 40.0, right: 40.0),
                child: Column(
                  children: <Widget>[
                    formGroup,
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        RaisedButton(
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(28.0),
                              side: BorderSide(color: Colors.white)),
                          onPressed: () {},
                          color: Colors.white,
                          textColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Login",
                                  style:
                                      TextStyle(color: hexToColor("#8887EF")),
                                ),
                                SizedBox(width: 15,),
                                Icon(
                                  Icons.arrow_forward,
                                  color: hexToColor("#8887EF"),
                                )
                              ],
                            ),
                          ),
                        ),
                        // Container(
                        //   padding: EdgeInsets.only(
                        //       left: 30, right: 30, top: 10, bottom: 10),
                        //   width: 150,
                        //   height: 50,
                        //   decoration: BoxDecoration(
                        //       color: Colors.white,
                        //       borderRadius:
                        //           BorderRadius.all(Radius.circular(30))),
                        //   child: Center(
                        //       child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: <Widget>[],
                        //   )),
                        // )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
