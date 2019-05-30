import 'package:UTS/Searchable/Searchabledropdown.dart';
import 'package:UTS/Utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

import '../fabanimations.dart';
import '../referralidSearch.dart';

class RegistrationPage2 extends StatefulWidget {
  RegistrationPage2({Key key}) : super(key: key);

  _RegistrationPage2State createState() => _RegistrationPage2State();
}

class _RegistrationPage2State extends State<RegistrationPage2> {
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
        color: Helper.hexColor('#ebf6fc'),
        // color: Helper.hexColor('#e1fafd'),
        //   color: Colors.black,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 55.0, left: 15),
                  child: ShowUp(
                    delay: 2,
                    child: Text(
                      'Registration',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Helper.hexColor('#4ca7d4'),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        //    fit: BoxFit.cover,
                        image: ExactAssetImage(
                      'assets/Images/crowd.png',
                      // scale: 1.0,
                    )),
                    // color: Helper.hexColor('#4285f4'),
                  ),
                  //  Expanded(child: Container()),
                ),
                // Text('Personal Details'),
                Form(
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.79,
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 16.0, right: 16.0, top: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
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
                              hintText: 'Enter your Name',
                              hintStyle: TextStyle(
                                  //  color: Helper.hexColor('#e6ecef'),
                                  fontSize: 15.0),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Helper.hexColor('#4ca7d4'),
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Helper.hexColor('#4ca7d4'),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              hintText: 'Enter your City',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 15.0),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Helper.hexColor('#4ca7d4'),
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Helper.hexColor('#4ca7d4'),
                                ),
                              ),
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
                            ].map<DropdownMenuItem<String>>((String value) {
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
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Helper.hexColor('#4ca7d4'),
                                    ),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Helper.hexColor('#4ca7d4'),
                                    ),
                                  ),
                                  hintText: 'Date',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 15.0),
                                ),
                                keyboardType: null,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
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
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Helper.hexColor('#4ca7d4'))),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Helper.hexColor('#4ca7d4'))),
                              hintText: 'Mobile Number',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 15.0),
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
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Helper.hexColor('#4ca7d4'),
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Helper.hexColor('#4ca7d4'),
                                ),
                              ),
                              hintText: 'Investment',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 15.0),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextField(
                            onTap: () {
                              showSearch(
                                  context: context, delegate: DataSearch());
                            //   Navigator.push<String>(context, MaterialPageRoute(
                            //     builder: (ctx) {
                            //      return Searchwidget();
                            //   },
                            //   )).then((data) {
                            //    setState(() {
                            //      print('tapped');
                            //      tecCityController.text = data;
                            //     });
                            //  });
                            },
                            buildCounter: (BuildContext context,
                                    {int currentLength,
                                    int maxLength,
                                    bool isFocused}) =>
                                null,
                            maxLength: 10,
                            controller: tecCityController,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              WhitelistingTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(Icons.search),
                                onPressed: () {
                                  showSearch(
                                      context: context, delegate: DataSearch());
                                },
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Helper.hexColor('#4ca7d4'))),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Helper.hexColor('#4ca7d4'))),
                              hintText: 'Referral ID ',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 15.0),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          ShowUp(
                            child: SizedBox(
                              width: double.infinity,
                              child: RaisedButton(
                                elevation: 6,
                                color: Helper.hexColor('#4ca7d4'),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Text(
                                  'Register',
                                ),
                                textColor: Colors.white,
                                onPressed: () {},
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final id = ['ON1234we', 'ON65312ace', 'ON124cx', 'ON1234we'];
  final recentid = ['ON1234we', 'ON1234we'];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {}
  @override
  Widget buildResults(BuildContext context) {}
  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty ? recentid : id;
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
            leading: Icon(Icons.cloud_done),
            title: RichText(
              text: TextSpan(
                text: suggestionList[index].substring(0, query.length),
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: TextStyle(color: Colors.grey)
                  ),
                ],
              ),
            ),
          ),
      itemCount: suggestionList.length,
    );
  }
}
