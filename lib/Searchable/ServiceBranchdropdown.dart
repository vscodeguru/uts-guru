import 'package:flutter/material.dart';

class ServiceBranchWidget extends StatefulWidget {
  _ServiceBranchWidgetState createState() => _ServiceBranchWidgetState();
}

class _ServiceBranchWidgetState extends State<ServiceBranchWidget> {
  var brachsearchview = TextEditingController();
  bool firstSearch = false;
  String query = '';
  List<String> branch;
  List<String> filterList;
  @override
  void initState() {
    super.initState();
    branch = new List<String>();
    branch = [
      'Salem',
      'Coimbatore',
      'Chennai',
      'Trichy',
      'Bangalore',
      'Kerala',
      'Kanyakumari',
      'Tirupur',
      'Jarkhand',
      'kozhikode',
      'Thiruvandram',
      'kozhikode'
    ];

    branch.sort();
  }

  filterSearchList() {
    brachsearchview.addListener(() {
      if (brachsearchview.text.isEmpty) {
        setState(() {
          firstSearch = true;
          query = '';
        });
      } else {
        setState(() {
          firstSearch = false;
          query = brachsearchview.text;
        });
      }
    });
  }

  _onClear() {
    setState(() {
      brachsearchview.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 70),
        child: Column(
          children: <Widget>[
            Text(
              'Select your Branch',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 40,
            ),
            createSearchview(),
            firstSearch ? createListView() : performSearch(),
          ],
        ),
      ),
    );
  }

  Widget createSearchview() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13),
      child: TextFormField(
        autofocus: true,
        controller: brachsearchview,
        onSaved: filterSearchList(),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(15.0),
          hintText: 'Enter your branch',
          suffixIcon: IconButton(
            icon: Icon(
              Icons.clear,
              color: Colors.teal,
            ),
            onPressed: () {
              _onClear();
            },
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.teal),
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              )),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal),
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
      ),
    );
  }

  Widget createListView() {
    return new Flexible(
      child: ListView.builder(
        itemCount: branch.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.pop(context, branch[index]);
            },
            child: new ListTile(
              leading: Icon(
                Icons.location_city,
              ),
              title: Text(
                '${branch[index]}',
              ),
            ),
          );
        },
      ),
    );
  }

  Widget performSearch() {
    filterList = List<String>();
    for (int i = 0; i < branch.length; i++) {
      var item = branch[i];
      if (item.toLowerCase().contains(query.toLowerCase())) {
        filterList.add(item);
      }
    }
    return createFilteredListView();
  }

  Widget createFilteredListView() {
    return new Flexible(
      child: ListView.builder(
        itemCount: filterList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.pop(context, filterList[index]);
            },
            child: new ListTile(
              leading: Icon(
                Icons.location_city,
              ),
              title: RichText(
                text: TextSpan(
                  text: filterList[index].substring(0, query.length),
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: filterList[index].substring(query.length),
                        style: TextStyle(color: Colors.grey))
                  ],
                ),
              ),
              trailing: Icon(Icons.call_made),
            ),
          );
        },
      ),
    );
  }
}
