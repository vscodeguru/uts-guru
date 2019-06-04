import 'package:UTS/Utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import '../buttonAnimation.dart';
import '../fabanimations.dart';

//Full screen
class RegisterationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: FormKeyboardActions(
        child: Content(),
      ),
    );
  }
}

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> with TickerProviderStateMixin {
  final FocusNode _nodeText1 = FocusNode();
  final FocusNode _nodeText2 = FocusNode();
  final FocusNode _nodeText3 = FocusNode();
  final FocusNode _nodeText4 = FocusNode();
  final FocusNode _nodeText5 = FocusNode();
  var nameController = TextEditingController();
  var dateController = TextEditingController();
  var mobileController = TextEditingController();
  var investmentController = TextEditingController();
  var referralController = TextEditingController();
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

  List<DropdownMenuItem<String>> listDrop = [];
  List<String> drop = ['Male', 'Female'];
  String selected = null;
  void loadData() {
    listDrop = [];
    listDrop = drop
        .map((val) => new DropdownMenuItem<String>(
              child: Text(val),
              value: val,
            ))
        .toList();
  }

  List<String> id;
  KeyboardActionsConfig _buildConfig(BuildContext context) {
    return KeyboardActionsConfig(
      keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
      keyboardBarColor: Colors.grey[200],
      nextFocus: true,
      actions: [
        KeyboardAction(
          focusNode: _nodeText1,
        ),
        KeyboardAction(
          focusNode: _nodeText3,
           onTapAction: () {
            
          },
        ),
        KeyboardAction(
          focusNode: _nodeText4,
          displayCloseWidget: false,
        ),
        KeyboardAction(
          focusNode: _nodeText5,
          closeWidget: Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.close),
          ),
        ),
      ],
    );
  }

  var statusClick = 0;
  AnimationController animationControllerButton;
  @override
  void initState() {
    // Configure keyboard actions
    FormKeyboardActions.setKeyboardActions(context, _buildConfig(context));
    animationControllerButton =
        AnimationController(duration: Duration(seconds: 3), vsync: this)
          ..addStatusListener((status) {
            if (status == AnimationStatus.dismissed) {
              setState(() {
                statusClick = 0;
              });
            }
          });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    animationControllerButton.dispose();
  }

  Future<Null> playAnimation() async {
    try {
      await animationControllerButton.forward();
      await animationControllerButton.reverse();
    } on TickerCanceled {}
  }

  @override
  Widget build(BuildContext context) {
    loadData();
    return Container(
      color: Helper.hexColor('#ebf6fc'),
      child: SingleChildScrollView(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
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
                        'Registration',
                        style: TextStyle(
                          fontSize: 30,
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
                        padding:
                            EdgeInsets.only(left: 16.0, right: 16.0, top: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 25,
                            ),
                            TextFormField(
                              focusNode: _nodeText1,
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
                                    fontSize: 13.0),
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
                            DropdownButtonFormField(
                              decoration: InputDecoration(
                                hintText: 'Select your Gender',
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: 13.0),
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
                              items: listDrop,
                              value: selected,
                              onChanged: (value) {
                                selected = value;
                                setState(() {});
                              },
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
                                        color: Colors.grey, fontSize: 13.0),
                                  ),
                                  keyboardType: null,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              focusNode: _nodeText3,
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
                                hintText: 'Mobile Number',
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: 13.0),
                              ),
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              focusNode: _nodeText4,
                              controller: investmentController,
                              textInputAction: TextInputAction.next,
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
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: 13.0),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              focusNode: _nodeText5,
                              onTap: () {
                                FocusScope.of(context)
                                    .requestFocus(new FocusNode());
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
                                    color: Colors.grey, fontSize: 13.0),
                              ),
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
              margin: statusClick == 0
                  ? EdgeInsets.symmetric(horizontal: 15)
                  : null,
              child: statusClick == 0
                  ? SizedBox(
                      width: double.infinity,
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
                          setState(
                            () {
                              statusClick = 1;
                            },
                          );
                          playAnimation();
                        },
                      ),
                    )
                  : new StartAnimation(
                      buttonController: animationControllerButton.view,
                    ),
            ),
          ],
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
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
      itemCount: suggestionList.length,
    );
  }
}
