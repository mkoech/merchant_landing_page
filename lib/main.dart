import 'package:flutter/material.dart';

void main() => runApp(MerchantsApp());

class MerchantsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Merchants Landing Page',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            'Home Page',
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                textColor: Colors.white60,
                color: Colors.blue,
                child: Text(
                  'Add Product Category',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AddCategory()));
                },
              )
            ],
          ),
        ),
      );
}

class AddCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Category'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: <Widget>[
              const Divider(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    labelText: 'Name',
                    hintText: 'Name'),
              ),
              const Divider(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    fillColor: Colors.blue,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    labelText: 'Description',
                    hintText: 'Description'),
              ),
              const Divider(
                height: 20,
              ),
              Container(
                color: Colors.blueGrey,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: ExpansionTile(
                    title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Subcategory',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    leading: Column(
                      children: [
                        Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        Icon(
                          Icons.keyboard_arrow_up,
                        ),
                      ],
                    ),
                    trailing: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                    children: <Widget>[
                      Container(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              child: const Divider(
                                height: 20,
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(
                                      20.0, 10.0, 20.0, 10.0),
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue)),
                                  labelText: 'Name',
                                  hintText: 'Name'),
                            ),
                            const Divider(
                              height: 20,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(
                                      20.0, 10.0, 20.0, 10.0),
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue)),
                                  labelText: 'Description',
                                  hintText: 'Description'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    textColor: Colors.blue,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text('Add Subcategory'),
                    onPressed: () {},
                  ),
                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text('Submit'),
                    onPressed: () {
                      print('Submitted successfully');
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
