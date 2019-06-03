import 'package:UTS/Utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import '../fabanimations.dart';

class Topup extends StatefulWidget {
  Topup({Key key}) : super(key: key);

  _TopupState createState() => _TopupState();
}

class _TopupState extends State<Topup> {
  String dropdownValue = 'Male';
  var nameController = TextEditingController();
  var dateController = TextEditingController();
  var mobileController = TextEditingController();
  var investmentController = TextEditingController();
  var referralController = TextEditingController();
  final FocusNode nameFocus = FocusNode();
  final FocusNode dateFocus = FocusNode();
  final FocusNode mobileFocus = FocusNode();
  final FocusNode investmenFocus = FocusNode();
  final FocusNode referralFocus = FocusNode();

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

  List<String> id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Helper.hexColor('#ebf6fc'),
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 55.0, left: 15),
                      child: ShowUp(
                        delay: 3,
                        child: Text(
                          'Topup',
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
                          image: ExactAssetImage(
                            'assets/Images/crowd.png',
                          ),
                        ),
                      ),
                    ),
                    Form(
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.72,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 25,
                              ),
                              GestureDetector(
                                onTap: () {
                                  selectedDate(context);
                                },
                                child: AbsorbPointer(
                                  child: TextFormField(
                                    onFieldSubmitted: (term) {
                                      FocusScope.of(context)
                                          .requestFocus(mobileFocus);
                                    },
                                    controller: dateController,
                                    textInputAction: TextInputAction.next,
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
                            
                                 maxLength: 10,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  WhitelistingTextInputFormatter.digitsOnly
                                ],
                                buildCounter: (BuildContext context,
                                        {int currentLength,
                                        int maxLength,
                                        bool isFocused}) =>
                                    null,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: 'Customer ID',
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
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
                              TextFormField(
                                onFieldSubmitted: (term) {
                                  FocusScope.of(context)
                                      .requestFocus(investmenFocus);
                                },
                                controller: mobileController,
                                focusNode: mobileFocus,
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
                                textInputAction: TextInputAction.next,
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
                                  hintText: 'Investment Amount',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 15.0),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextField(
                                onTap: () {
                                  showSearch<String>(
                                          context: context,
                                          delegate: DataSearch())
                                      .then(
                                    (data) {
                                      setState(() {
                                        print('tapped');
                                      });
                                    },
                                  );
                                },
                                buildCounter: (BuildContext context,
                                        {int currentLength,
                                        int maxLength,
                                        bool isFocused}) =>
                                    null,
                                maxLength: 10,
                                controller: referralController,
                                focusNode: referralFocus,
                                keyboardType: null,
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {
                                      showSearch(
                                          context: context,
                                          delegate: DataSearch());
                                      // Navigator.push<String>(context, MaterialPageRoute(
                                      //   builder: (ctxt){
                                      //      return SearchListExample();
                                      //   }
                                      // ));
                                    },
                                  ),
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
                                  hintText: 'Referral ID ',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 15.0),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                              
                                buildCounter: (BuildContext context,
                                        {int currentLength,
                                        int maxLength,
                                        bool isFocused}) =>
                                    null,
                               
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
                                  hintText: 'Referral Name',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 15.0),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                controller: investmentController,
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
                                  hintText: 'Referral Mobile',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 15.0),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                    width: double.infinity,
                    // child:  Progress()
                    child: RaisedButton(
                      elevation: 6.0,
                      color: Helper.hexColor('#4ca7d4'),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Text(
                        'Register',
                      ),
                      textColor: Colors.white,
                      onPressed: () {
                        setState(() {});
                      },
                    ),
                  )),
            ],
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
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Card(
        color: Colors.red,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentid
        : id
            .where((p) => p.toLowerCase().contains(query.toLowerCase()))
            .toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
            onTap: () {
              showResults(context);
            },
            leading: Icon(Icons.search),
            title: RichText(
              text: TextSpan(
                text: suggestionList[index].substring(0, query.length),
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                      text: suggestionList[index].substring(query.length),
                      style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ),
      itemCount: suggestionList.length,
    );
  }
}
