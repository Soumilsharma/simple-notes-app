import'package:flutter/material.dart';
class addnote extends StatefulWidget {
 static  String id  = addnote.id;
  @override
  _addnoteState createState() => _addnoteState();
}

class _addnoteState extends State<addnote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Add notes')),
        body: Container(
            child: Column(
                children: <Widget>[
                SizedBox(height: 20.0),
            TextFormField(
                decoration: InputDecoration(
                    hintText: 'Title'
                ),
            )
              Row(
    children: [
      ElevatedButton(onPressed: (){
    child: Text('Add notes')
  },
    )

    ],
    )
    },
    )
    ],
    ]

    )
    )
    )
    )
  }
}

);

