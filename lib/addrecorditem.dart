import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddRecord extends StatefulWidget {
  const AddRecord({Key? key}) : super(key: key);

  @override
  State<AddRecord> createState() => _AddRecordState();
}

class _AddRecordState extends State<AddRecord> {
  String? recordCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Add Record',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Form(
        child: ListView(padding: EdgeInsets.all(15), children: [
          Text(
            'Select product image',
            style: TextStyle(fontSize: 15, color: Colors.black54),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Select image source'),
                      content:
                          Column(mainAxisSize: MainAxisSize.min, children: [
                        ListTile(
                          title: Text('Select from Camera'),
                        ),
                        Divider(
                          color: Colors.black45,
                        ),
                        ListTile(
                          title: Text('Select from Gallery'),
                        )
                      ]),
                    );
                  });
            },
            child: Image.asset('assets/placeholder_image.png'),
          ),
          TextFormField(
              decoration: InputDecoration(
            labelText: 'Name',
          )),
          TextFormField(
              decoration: InputDecoration(
            labelText: 'Date',
          )),
          DropdownButtonFormField(
            hint: Text('Select a category'),
            value: recordCategory,
            items: [
              DropdownMenuItem(
                child: Text('Harvest'),
                value: 'Harvest',
              ),
              DropdownMenuItem(
                child: Text('Activity'),
                value: 'Activity',
              ),
            ],
            onChanged: (value) {
              value = recordCategory;
            },
          ),
          TextButton(
            style: TextButton.styleFrom(backgroundColor: Color(0xff014404)),
            onPressed: () {},
            child: Text(
              'Add Record',
              style: TextStyle(color: Colors.white),
            ),
          )
        ]),
      ),
    );
  }
}
