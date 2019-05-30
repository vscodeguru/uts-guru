import 'package:flutter/material.dart';

class ReferralId extends StatefulWidget {
  ReferralId({Key key}) : super(key: key);

  _ReferralIdState createState() => _ReferralIdState();
}

class _ReferralIdState extends State<ReferralId> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          )
        ],
      ),
      body: Container(),
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
                      
  }
  @override
  Widget buildResults(BuildContext context) {
    
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty ? recentid : id;
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
            onTap: () {
              Navigator.pop(context, suggestionList[index]);
            },
            leading: Icon(Icons.cloud_done),
            title: Text(suggestionList[index]),
          ),
      itemCount: suggestionList.length,
    );
  }
}
