import 'package:UTS/Searchable/Searchabledropdown.dart';
import 'package:UTS/Searchable/ServiceBranchdropdown.dart';
import 'package:UTS/fabanimations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegistrationForm extends StatefulWidget {
  RegistrationForm({Key key}) : super(key: key);

  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  List<String> cities;
  List<String> branch;
  var tecCityController = TextEditingController();
  var tecBranchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            // decoration: new BoxDecoration(
            //   image: new DecorationImage(
            //     image: new AssetImage("assets/Noel.png"),
            //     fit: BoxFit.cover,
            //   ),
            // ),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 50),
                child: Column(
                  children: <Widget>[
                    Form(
                      child: Container(
                        width: double.infinity,
                        height: 460,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0.0, 12.0),
                                blurRadius: 5),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Personal Details',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: <Widget>[
                                  Flexible(
                                    child: TextFormField(
                                      buildCounter: (BuildContext context,
                                              {int currentLength,
                                              int maxLength,
                                              bool isFocused}) =>
                                          null,
                                      maxLength: 25,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(15.0),
                                        border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.blue),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(2.0),
                                            )),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.blue),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(2.0)),
                                        ),
                                        hintText: 'Enter your Name',
                                        hintStyle: TextStyle(
                                            color: Colors.grey, fontSize: 12.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              TextFormField(
                                buildCounter: (BuildContext context,
                                        {int currentLength,
                                        int maxLength,
                                        bool isFocused}) =>
                                    null,
                                maxLength: 25,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(15.0),
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(2.0),
                                      )),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(2.0)),
                                  ),
                                  hintText: 'Enter your Mobile',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 12.0),
                                ),
                              ),
                              SizedBox(height: 25),
                              TextField(
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(15.0),
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(2.0),
                                      )),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(2.0)),
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                    ),
                                    onPressed: () {
                                      Navigator.push<String>(context,
                                          MaterialPageRoute(
                                        builder: (ctx) {
                                          return Searchwidget();
                                        },
                                      )).then((data) {
                                        setState(() {
                                          print('tapped');
                                          tecCityController.text = data;
                                        });
                                      });
                                    },
                                  ),
                                  hintText: 'Enter your City',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 12.0),
                                ),
                                controller: tecCityController,
                                onTap: () {
                                  Navigator.push<String>(context,
                                      MaterialPageRoute(
                                    builder: (ctx) {
                                      return Searchwidget();
                                    },
                                  )).then((data) {
                                    setState(() {
                                      print('tapped');
                                      tecCityController.text = data;
                                    });
                                  });
                                },
                              ),
                              SizedBox(height: 25),
                              Row(
                                children: <Widget>[
                                  Flexible(
                                    child: TextFormField(
                                      buildCounter: (BuildContext context,
                                              {int currentLength,
                                              int maxLength,
                                              bool isFocused}) =>
                                          null,
                                      maxLength: 25,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(15.0),
                                        border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.blue),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(2.0),
                                            )),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.blue),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(2.0)),
                                        ),
                                        hintText: 'Current Investment',
                                        hintStyle: TextStyle(
                                            color: Colors.grey, fontSize: 12.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    child: TextFormField(
                                      buildCounter: (BuildContext context,
                                              {int currentLength,
                                              int maxLength,
                                              bool isFocused}) =>
                                          null,
                                      maxLength: 25,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(15.0),
                                        border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.blue),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(2.0),
                                            )),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.blue),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(2.0)),
                                        ),
                                        hintText: 'Referral Name',
                                        hintStyle: TextStyle(
                                            color: Colors.grey, fontSize: 12.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 25),
                              TextField(
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(15.0),
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(2.0),
                                      )),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(2.0)),
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                    ),
                                    onPressed: () {
                                      Navigator.push<String>(context,
                                          MaterialPageRoute(
                                        builder: (ctx) {
                                          return ServiceBranchWidget();
                                        },
                                      )).then((data) {
                                        setState(() {
                                          print('tapped');
                                          tecBranchController.text = data;
                                        });
                                      });
                                    },
                                  ),
                                  hintText: 'Service Branch',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 12.0),
                                ),
                                controller: tecBranchController,
                                onTap: () {
                                  Navigator.push<String>(context,
                                      MaterialPageRoute(
                                    builder: (ctx) {
                                      return ServiceBranchWidget();
                                    },
                                  )).then((data) {
                                    setState(() {
                                      print('tapped');
                                      tecBranchController.text = data;
                                    });
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    ShowUp(
                      delay: 1,
                      child: FloatingActionButton(
                        elevation: 6,
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.arrow_forward),
                        onPressed: () {
                          null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
