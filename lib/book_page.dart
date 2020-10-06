import 'package:flutter/material.dart';

class booking extends StatefulWidget {
  @override
  _bookingState createState() => _bookingState();
}

class _bookingState extends State<booking> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final cityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Booking"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  labelText: 'Full Name',
                  hintText: "Your Full Name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email Address',
                  hintText: "Enter Active Email Address",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                controller: phoneController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone_android),
                  labelText: 'Phone Number',
                  hintText: "Your Phone Number",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                controller: cityController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.location_city),
                  labelText: 'City',
                  hintText: "Your domicile's city",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              width: 150,
              height: 50,
              child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    if (nameController.text == "" ||
                        emailController.text == "" ||
                        phoneController.text == "" ||
                        cityController.text == "") {
                      return showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Booking Failed"),
                            content: Text('Please fill all form field'),
                            actions: <Widget>[
                              RaisedButton(
                                child: Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      return showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Booking Confirmation"),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Text("Name : " + nameController.text),
                                  Text(
                                      'Email Address: ' + emailController.text),
                                  Text('Phone : ' + phoneController.text),
                                  Text('City : ' + cityController.text),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              RaisedButton(
                                child: Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.save), Text("Book Now")],
                  )),
            )
          ],
        ));
  }
}
