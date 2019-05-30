import 'package:UTS/Searchable/Searchabledropdown.dart';
import 'package:UTS/Searchable/ServiceBranchdropdown.dart';
import 'package:UTS/Utils/helper.dart';
import 'package:UTS/fabanimations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegistrationForm extends StatefulWidget {
  RegistrationForm({Key key}) : super(key: key);

  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  String dropdownValue = 'Male';
  var dateController = TextEditingController();
  var timeController = TextEditingController();

  DateTime _date = new DateTime.now();
  selectedDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(1930),
        lastDate: DateTime(2065));

    if (picked != null && picked != _date) {
      setState(() {
        _date = picked;
        dateController.text =
            "${_date.day.toString()}-${_date.month.toString().padLeft(2, '0')}-${_date.year.toString().padLeft(2, '0')}";
      });
    }
  }

  List<String> cities;
  List<String> branch;
  var tecCityController = TextEditingController();
  var tecBranchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //   color: Colors.black,
        child: Stack(
          // overflow: Overflow.visible,
          fit: StackFit.expand,
          children: <Widget>[
            ClipPath(
              child: Container(
                  width: double.infinity,
                  height: 250,
                  color: Helper.hexColor('#e84644')),
              clipper: Clippingclass2(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipPath(
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: ExactAssetImage(
                            'assets/Images/invest.jpg',
                          )),
                      // color: Helper.hexColor('#4285f4'),
                    ),
                    //  Expanded(child: Container()),
                  ),
                  clipper: Clippingclass(),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    left: 28.0,
                    right: 28.0,
                    top: MediaQuery.of(context).size.height * 0.23),
                child: Column(
                  children: <Widget>[
                    // Text('Personal Details'),
                    Form(
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.63,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0.0, 15.0),
                                blurRadius: 5),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Registration',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
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
                              SizedBox(
                                height: 10,
                              ),
                              DropdownButtonFormField<String>(
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
                                value: dropdownValue,
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                },
                                items: <String>[
                                  'Male',
                                  'Female',
                                ].map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  selectedDate(context);
                                },
                                child: AbsorbPointer(
                                  child: TextFormField(
                                    controller: dateController,
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
                                      hintText: 'DOB',
                                      hintStyle: TextStyle(
                                          color: Colors.grey, fontSize: 12.0),
                                    ),
                                    keyboardType: null,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                buildCounter: (BuildContext context,
                                        {int currentLength,
                                        int maxLength,
                                        bool isFocused}) =>
                                    null,
                                maxLength: 10,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  WhitelistingTextInputFormatter.digitsOnly
                                ],
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
                                  hintText: 'Mobile Number',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 12.0),
                                ),
                              ),
                              SizedBox(
                                height: 15,
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
                                      maxLength: 10,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(15.0),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blue),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(2.0),
                                            )),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.blue),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(2.0)),
                                        ),
                                        hintText: 'Investment',
                                        hintStyle: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    child: TextFormField(
                                      maxLength: 10,
                                      keyboardType: TextInputType.number,
                                      buildCounter: (BuildContext context,
                                              {int currentLength,
                                              int maxLength,
                                              bool isFocused}) =>
                                          null,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(15.0),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blue),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(2.0),
                                            )),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.blue),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(2.0)),
                                        ),
                                        hintText: 'Wallet Balance',
                                        hintStyle: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.82,
              left: MediaQuery.of(context).size.width * 0.43,
              child: ShowUp(
                delay: 2,
                child: FloatingActionButton(
                  elevation: 6,
                  foregroundColor: Colors.white,
                  backgroundColor: Helper.hexColor('#44b4b8'),
                  child: Icon(Icons.arrow_forward),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Clippingclass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // path.lineTo(0, size.height - 50);
    // path.lineTo(size.width / 2, size.height);
    // path.lineTo(size.width, size.height - 50);
    // path.lineTo(size.width, 0);

    path.lineTo(0.0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class Clippingclass2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 60);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - 60);
    path.lineTo(size.width, 0);

    // path.lineTo(0.0, size.height - 40);
    // path.quadraticBezierTo(
    //     size.width / 4, size.height, size.width / 2, size.height);
    // path.quadraticBezierTo(size.width - (size.width / 4), size.height,
    //     size.width, size.height - 40);
    // path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
