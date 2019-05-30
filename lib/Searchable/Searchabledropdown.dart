import 'package:flutter/material.dart';

class Searchwidget extends StatefulWidget {
  _SearchwidgetState createState() => _SearchwidgetState();
}

class _SearchwidgetState extends State<Searchwidget> {
  var searchview = TextEditingController();
  bool firstSearch = false;
  String query = '';
  List<String> cities;
  List<String> filterList;
  @override
  void initState() {
    super.initState();
    cities = new List<String>();
    cities = [
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

    cities.sort();
  }

  filterSearchList() {
    searchview.addListener(() {
      if (searchview.text.isEmpty) {
        setState(() {
          firstSearch = true;
          query = '';
        });
      } else {
        setState(() {
          firstSearch = false;
          query = searchview.text;
        });
      }
    });
  }

  _onClear() {
    setState(() {
      searchview.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
             
            },
          )
        ],
        ),
      body: Container(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 70),
        child: Column(
          children: <Widget>[
            Text(
              'Select your Cities',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 40,
            ),
            createSearchview(),
            firstSearch ? createFilteredListView() : performSearch(),
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
       // controller: searchview,
     //   onSaved: filterSearchList(),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(15.0),
          hintText: 'Enter your city',
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

  // Widget createListView() {
  //   return new Flexible(
  //     child: ListView.builder(
  //       itemCount: cities.length,
  //       itemBuilder: (BuildContext context, int index) {
  //         return GestureDetector(
  //           onTap: () {
  //             Navigator.pop(context, cities[index]);
  //           },
  //           child: new ListTile(
  //             leading: Icon(
  //               Icons.location_city,
  //             ),
  //             title: Text(
  //               '${cities[index]}',
  //             ),
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }

  Widget performSearch() {
    filterList = List<String>();
    for (int i = 0; i < cities.length; i++) {
      var item = cities[i];
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
