import 'package:UTS/Utils/helper.dart';
import 'package:flutter/material.dart';

class ReferralId extends StatefulWidget {
  ReferralId({Key key}) : super(key: key);

  _ReferralIdState createState() => _ReferralIdState();
}

class _ReferralIdState extends State<ReferralId> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class DataSearch extends SearchDelegate<String> {
  final id = [
    'ON1234we',
    'ON65312ace',
    'ON124cx',
    'ON1234we',
  ];
  final recentid = [];

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
    if (query != null) {
      return Container(
        color: Helper.hexColor('#EFFFFF'),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              child: Center(
                child: Image.asset(
                  'assets/Images/talent.jpg',
                  height: 350,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: <Widget>[
                Text(
                  'No results found for',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  query,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }
    Navigator.pop(context, query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.length == 0) {
      return Container(
        color: Helper.hexColor('#EFFFFF'),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              child: Center(
                child: Image.asset(
                  'assets/Images/talent.jpg',
                  height: 350,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Search your Referral ID.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      );
    }
    final suggestionList = query.isEmpty
        ? recentid
        : id
            .where(
              (p) => p.toLowerCase().contains(query.toLowerCase()),
            )
            .toList();
    return Container(
      color: Helper.hexColor('#EFFFFF'),
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => ListTile(
                    onTap: () {
                      Navigator.pop(context, suggestionList[index]);
                    },
                    trailing: Icon(Icons.call_made),
                    leading: Icon(
                      Icons.search,
                    ),
                    title: RichText(
                      text: TextSpan(
                        text: suggestionList[index].substring(0, query.length),
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: suggestionList[index].substring(query.length),
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
              itemCount: suggestionList.length,
            ),
          ),
        ],
      ),
    );
  }
}
