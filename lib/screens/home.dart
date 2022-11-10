import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interview/data/user.dart';
import 'package:interview/data/mock_data.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final searchController = TextEditingController();
  List<User>? users;
  List<User> search=[];

  @override
  void initState() {
    super.initState();

     users = allData['users']?.map((e) => User.fromJson(e)).toList();
  }

  @override
  void dispose() {
    super.dispose();
  }

  _filterList(String d) async {
   search.clear();
   if(d.isEmpty){
     setState(() {});
     return;
   }


    users!.forEach((element) {
      if(element.firstName.contains(d) || element.lastName.contains(d) ||element.email.contains(d) || element.role.contains(d) ){
        search.add(element);
      }

    });
   setState(() {

   });


  }

  @override
  Widget build(BuildContext context) {


    _getUserAvatar(url) {
      return CircleAvatar(backgroundImage: NetworkImage(url,),
        onBackgroundImageError: (_, __) {
          setState(() {
           url=FontAwesomeIcons.image;
          });
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (String d){
                  _filterList(d);
                },
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Flexible(
            child:
            (search.length !=0 && searchController.text.isEmpty) ?
            ListView.builder(
              itemCount: search.length,
              itemBuilder: (context, index) {
                final item = search[index];
                return ListTile(
                  leading: item.avatar==null ? Icon(FontAwesomeIcons.image) : _getUserAvatar(item.avatar),
                  title: Text(item.firstName+" "+item.lastName),
                  subtitle: Text(item.role.toString()),
                );
              },
            )

                :
            ListView.builder(
              itemCount: users?.length,
              itemBuilder: (context, index) {
                final item = users![index];
                return ListTile(
                  leading: item.avatar==null ? Icon(FontAwesomeIcons.image) : _getUserAvatar(item.avatar),
                  title: Text(item.firstName+" "+item.lastName),
                  subtitle: Text(item.role.toString()),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("////////////////////users.length//////////////////////////");
          print(users?.length);
          print(users?.last.lastName);
            var newUser = User(id: "b32ec56c-21bb-4b7b-a3a0-635b8bca1f9d", avatar: null, firstName: "James", lastName: "May", email: "ssaull1c@tripod.com", role: "Developer");
          users?.add(newUser);

          setState(() {
            print(users?.length);
            print(users?.last.lastName);
          });
            },
        tooltip: 'Add new',
        child: Icon(Icons.add),
      ),
    );
  }
}
