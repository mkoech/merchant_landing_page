imimport 'package:flutter/material.dart';

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
  final VoidCallback onDelete;

  AddCategory({Key key, this.onDelete}) : super(key: key);
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
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  color: Colors.blue,
                  child: ExpansionTile(
                    backgroundColor: Colors.blue,
                    title: Text(
                      'Subcategory',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    leading: IconButton(
                      icon: Icon(Icons.keyboard_arrow_down),
                      onPressed: () {},
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      color: Colors.white,
                      onPressed: this.onDelete,
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
                      onPressed: () {
                        show();
                      }),
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

show() {
  return SubCategory();
}

class SubCategory extends StatefulWidget {
  @override
  _SubCategoryState createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
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
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
                labelText: 'Description',
                hintText: 'Description'),
          ),
        ],
      ),
    );
  }
}


