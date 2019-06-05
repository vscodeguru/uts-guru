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
    Navigator.pop(context, query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty ? recentid : id.where((p) => p.toLowerCase().contains(query.toLowerCase())).
            toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
            onTap: () {
              Navigator.pop(context, suggestionList[index]);
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
